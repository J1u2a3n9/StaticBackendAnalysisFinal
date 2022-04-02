using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace McNutsAPI.Exceptions
{
    [Serializable]
    public class InvalidOperationPeanutException : Exception
    {
        public InvalidOperationPeanutException(string message) : base(message){}
        protected InvalidOperationPeanutException(SerializationInfo info, StreamingContext context) : base(info, context) { }
         
    }
}
