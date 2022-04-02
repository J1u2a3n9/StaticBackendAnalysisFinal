using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace McNutsAPI.Exceptions
{
    [Serializable]
    public class EmptyException : Exception
    {
        public EmptyException(string mesage) : base(mesage) { }
        protected EmptyException(SerializationInfo info, StreamingContext context): base(info, context){}
    } 
}
