using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace McNutsAPI.Exceptions
{
    [Serializable]
    public class InsufficientAmountPeanutsException : Exception
    {
        public InsufficientAmountPeanutsException(string mesage):base(mesage){}
        protected InsufficientAmountPeanutsException(SerializationInfo info, StreamingContext context) : base(info, context) { }
         
    }
}
