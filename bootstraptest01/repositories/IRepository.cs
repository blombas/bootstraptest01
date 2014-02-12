using System;
using System.Collections.Generic;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Web.DynamicData;
using Microsoft.Ajax.Utilities;

namespace bootstraptest01.repositories
{
    public interface IRepository<T> : IDisposable where T : class
    {
        IQueryable<T> All();

        bool Any(Expression<Func<T, bool>> predicate);

        int Count { get; }

        T Create(T t);

        void Update(T t);

        void Delete(T t);
        void Delete(Expression<Func<T, IEnumerable<T>>> predicate);

        T Find(Expression<Func<T, bool>> predicate );
        IQueryable<T> FindAll(Expression<Func<T, IEnumerable<T>>> predicate);

    }
}
