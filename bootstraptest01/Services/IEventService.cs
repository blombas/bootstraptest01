namespace bootstraptest01.Services
{
    public interface IEventService
    {
        Event GetBy(int id);
        Event Create(string headLine);
    }
}