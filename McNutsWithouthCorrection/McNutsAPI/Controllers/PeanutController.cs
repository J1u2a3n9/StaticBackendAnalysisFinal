using McNutsAPI.Exceptions;
using McNutsAPI.Models;
using McNutsAPI.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace McNutsAPI.Controllers
{
    [Route("api/[controller]")]
    public class PeanutsController : Controller
    {

        private IPeanutService _peanutsService;
        private IFileService _fileService;
        public PeanutsController(IPeanutService peanutsService, IFileService fileService)
        {
            _peanutsService = peanutsService;
            _fileService = fileService;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<PeanutModel>>> GetPeanutsAsync(string orderBy = "Id")
        {
            try
            {
                var peanuts = await _peanutsService.GetPeanutsAsync(orderBy);
                return Ok(peanuts);
            }
            catch (InvalidOperationPeanutException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Algo Inesperado Paso. ");
            }

        }
        [HttpGet("{peanutId:long}")]
        public async Task<ActionResult<PeanutModel>> GetPeanutAsync(long peanutId)
        {
            try
            {
                var peanut = await _peanutsService.GetPeanutAsync(peanutId);
                return Ok(peanut);

            }
            catch (NotFoundPeanutException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Algo Inesperado Paso. ");
            }

        }
        [HttpPost]
        public async Task<ActionResult<PeanutModel>> CreatePeanutAsync([FromBody] PeanutModel newPeanut)
        {
            try
            {
                if (!ModelState.IsValid)
                    return BadRequest(ModelState);

                var peanut = await _peanutsService.CreatePeanutAsync(newPeanut);
                return Created($"/api/peanuts/{peanut.Id}", peanut);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Algo Inesperado Paso. ");
            }

        }




        [HttpPost("Form")]
        public async Task<ActionResult<PeanutModel>> CreateTeamFormAsync([FromForm] PeanutFormModel newPeanut)
        {
            try
            {
                if (!ModelState.IsValid)
                    return BadRequest(ModelState);
                if(newPeanut.Image!=null)
                {
                    var file = newPeanut.Image;
                    string imagePath = _fileService.UploadFile(file);
                    newPeanut.ImagePath = imagePath;
                }
                var peanut = await _peanutsService.CreatePeanutAsync(newPeanut);
                return Created($"/api/peanuts/{peanut.Id}", peanut);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Something unexpected happened.");
            }
        }


        [HttpPut("{peanutId:long}")]
        public async Task<ActionResult<PeanutModel>> UpdatePeanutFormAsync(long peanutId, [FromForm] PeanutFormModel updatePeanut)
        {
            try
            {
                if (!ModelState.IsValid)
                    return BadRequest(ModelState);

                if(updatePeanut.Image!=null)
                {
                    var file = updatePeanut.Image;
                    string imagePath = _fileService.UploadFile(file);
                    updatePeanut.ImagePath = imagePath;
                }
                var peanut = await _peanutsService.UpdatePeanutAsync(peanutId, updatePeanut);
                return Ok(peanut);
            }
            catch (NotFoundPeanutException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Algo Inesperado Paso. ");
            }
        }










        [HttpDelete("{peanutId:long}")]
        public async Task<ActionResult<bool>> DeletePeanutAsync(long peanutId)
        {
            try
            {
                var result = await _peanutsService.DeletePeanutAsync(peanutId);
                return Ok(result);

            }
            catch (NotFoundPeanutException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Algo Inesperado Paso. ");
            }
        }



        [HttpPatch("{peanutId:long}")]
        public async Task<ActionResult<PeanutModel>> RestoreProduction(long peanutId)
        {
            try
            {
                var peanut = await _peanutsService.RestoreProductionAsync(peanutId);
                return Ok(peanut);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Algo Inesperado Paso. ");
            }

        }

        [HttpPut("{peanutId:long}/updatestock")]
        public async Task<ActionResult<PeanutModel>> UpdateStockAsync(long peanutId, [FromBody] long amount)
        {
            try
            {
                var peanut = await _peanutsService.UpdateStockAsync(peanutId, amount);
                return Ok(peanut);
            }
            catch (InsufficientAmountPeanutsException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Algo Inesperado Paso. ");
            }
        }

    }
}
