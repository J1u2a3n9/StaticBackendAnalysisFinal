using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace McNutsAPI.Exceptions
{
    [Serializable]
    public class InvalidOperationClientException : Exception
    {
        public InvalidOperationClientException(string message) : base(message){}
        protected InvalidOperationClientException(SerializationInfo info, StreamingContext context) : base(info, context) { }
         
    }
}
