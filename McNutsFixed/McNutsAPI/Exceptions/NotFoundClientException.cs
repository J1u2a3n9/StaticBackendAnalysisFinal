using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace McNutsAPI.Exceptions
{
    [Serializable]
    public class NotFoundClientException : Exception
    {
        public NotFoundClientException(string message) : base(message){}
        protected NotFoundClientException(SerializationInfo info, StreamingContext context) : base(info, context) { }

    }
}
