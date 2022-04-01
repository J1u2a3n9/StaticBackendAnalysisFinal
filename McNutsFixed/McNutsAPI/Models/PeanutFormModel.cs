using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace McNutsAPI.Models
{
    public class PeanutFormModel : PeanutModel
    {
        public IFormFile Image { get; set; }
    }
}
