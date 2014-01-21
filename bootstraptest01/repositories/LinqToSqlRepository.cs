﻿using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Linq.Expressions;
using System.Net.Sockets;
using System.Web;
using System.Xml.Linq;
using Microsoft.Ajax.Utilities;

namespace bootstraptest01.repositories
{
    public class LinqToSqlRepository<T> : IRepository<T> where T: class
    {
        protected WalkDatingDataContext Context;

        public LinqToSqlRepository()
        {
            Context = new WalkDatingDataContext();
        }
        public IQueryable<T> All()
        {
            return Context.GetTable<T>().AsQueryable();
        }

        public T Create(T t)
        {
            Context.GetTable<T>().InsertOnSubmit(t);
            Context.SubmitChanges();
            return t;
        }

        public void Delete(T t)
        {
           Context.GetTable<T>().DeleteOnSubmit(t);
           Save();
        }

        public void Delete(Expression<Func<T, IEnumerable<T>>> predicate)
        {
            var result = FindAll(predicate);
            Context.GetTable<T>().DeleteAllOnSubmit(result);
            Save();
        }

        public T Find(Expression<Func<T, bool>> predicate )
        {
            return Context.GetTable<T>().Where(predicate).SingleOrDefault();
        }

        public IQueryable<T> FindAll(Expression<Func<T, IEnumerable<T>>> predicate)
        {
            return Context.GetTable<T>().SelectMany(predicate);
        }

        public bool Any(Expression<Func<T, bool>> predicate)
        {
            return Context.GetTable<T>().Any(predicate);
        }

        public int Count
        {
            get { return Context.GetTable<T>().Count(); }
        }

        public void Update(T t)
        {
            Context.GetTable<T>().Attach(t, true);
            Save();
        }

        private void Save()
        {
            try
            {
                Context.SubmitChanges(ConflictMode.ContinueOnConflict);
            }
            catch (ChangeConflictException e)
            {
                foreach (ObjectChangeConflict occ in Context.ChangeConflicts)
                {
                    occ.Resolve(RefreshMode.KeepChanges);
                }
            }
        } 
    }
}