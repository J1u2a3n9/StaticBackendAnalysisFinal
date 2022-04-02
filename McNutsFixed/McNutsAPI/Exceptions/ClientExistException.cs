using McNutsAPI.Exceptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace MCNutsAPI.Exceptions
{
    [Serializable]
    public class ClientExistException : Exception
    {
        public ClientExistException(string mesage) : base(mesage) { }
        protected ClientExistException(SerializationInfo info, StreamingContext context) : base(info, context) { }
         
    }
}

