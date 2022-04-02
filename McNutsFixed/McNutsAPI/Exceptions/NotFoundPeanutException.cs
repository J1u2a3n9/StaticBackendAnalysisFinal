using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;

using System.Threading.Tasks;

namespace McNutsAPI.Exceptions
{
    [Serializable]
    public class NotFoundPeanutException : Exception
    {
        public NotFoundPeanutException(string message) : base(message){}
        protected NotFoundPeanutException(SerializationInfo info, StreamingContext context) : base(info, context) { }
    }
}
