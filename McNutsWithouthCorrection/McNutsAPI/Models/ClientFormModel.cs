using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace McNutsAPI.Models
{
    public class ClientFormModel:ClientModel
    {
        public IFormFile Image { get; set; }
    }
}
