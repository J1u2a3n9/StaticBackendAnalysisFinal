using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace McNutsAPI.Exceptions
{
    public class InsufficientAmountPeanutsException : Exception
    {
        public InsufficientAmountPeanutsException(string message) : base(message)
        {

        }
    }
}
