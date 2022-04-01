using Microsoft.AspNetCore.Http;

namespace McNutsAPI.Services
{
    public interface IFileService
    {
        string UploadFile(IFormFile file);
    }
}
