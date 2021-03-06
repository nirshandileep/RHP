﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Reflection;
using System.Data;

namespace RHP.Utility
{
    public class Generic
    {

        /// <summary>
        /// Returns an entity by PrimaryKey Int32. 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="PrimaryKey"></param>
        /// <returns></returns>
        public static T Get<T>(Int32 PrimaryKey) where T : new()
        {
            return Get<T>((Int64)PrimaryKey);
        }

        /// <summary>
        /// Returns an entity by PrimaryKey Int64.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="PrimaryKey"></param>
        /// <param name="ExecutedBy"></param>
        /// <param name="dbTransaction"></param>
        /// <returns></returns>
        public static T Get<T>(Int64 PrimaryKey) where T : new()
        {
            T entity = default(T);

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "Select");

            db.AddInParameter(dbCommand, TypeName + "Id", DbType.Int64, PrimaryKey);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                if (dataReader.Read())
                {
                    entity = new T();
                    AssignDataReaderToEntity(dataReader, entity);
                }
            }

            return entity;
        }

        /// <summary>
        /// Returns an entity by PrimaryKey. 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="PrimaryKey"></param>
        /// <param name="ExecutedBy"></param>
        /// <param name="dbTransaction"></param>
        /// <returns></returns>
        public static T GetByGUID<T>(Guid PrimaryKey) where T : new()
        {
            T entity = default(T);

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "Select");

            db.AddInParameter(dbCommand, TypeName + "Id", DbType.Guid, PrimaryKey);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                if (dataReader.Read())
                {
                    entity = new T();
                    AssignDataReaderToEntity(dataReader, entity);
                }
            }

            return entity;
        }

        /// <summary>
        /// This function loops through each column in the datareader and assigns
        /// the value to the associated property on the entity (if it exists).
        /// </summary>
        /// <param name="dataReader"></param>
        /// <param name="entity"></param>
        /// <param name="enforceAllDbFieldsExist">Throws an exception if the DB returns a field which is not on the entity</param>
        public static void AssignDataReaderToEntity(IDataReader dataReader, object entity)
        {
            System.Reflection.PropertyInfo entityProperty;

            for (int i = 0; i < dataReader.FieldCount; i++)
            {
                if (dataReader[i] != DBNull.Value)
                {
                    string fieldName = dataReader.GetName(i);

                    // fieldName is case sensitive, check the entity class members to match up with
                    // the field names returned by the database query for case sensitivity
                    entityProperty = entity.GetType().GetProperty(fieldName);

                    //If we couldnt find the property, do a case insensitive search
                    if (entityProperty == null)
                    {
                        entityProperty = entity.GetType().GetProperty(fieldName,
                                BindingFlags.IgnoreCase |
                                BindingFlags.Public |
                                BindingFlags.Instance);
                    }

                    // If the property exists on this entity:
                    if (entityProperty != null)
                    {
                        // And if the property is writable:
                        if (entityProperty.CanWrite)
                        {
                            // Assign the datareader value to the entity
                            entityProperty.SetValue(entity, dataReader[i], null);

                        }
                    }
                }
            }
        }

        /// <summary>
        /// Returns a collection of T. T must be an Entity class
        /// </summary>
        public static List<T> GetAll<T>() where T : new()
        {
            List<T> returnEntityCollection = new List<T>();

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "SelectAll");

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    T entity = new T();

                    AssignDataReaderToEntity(dataReader, entity);
                    returnEntityCollection.Add(entity);
                }
            }

            return returnEntityCollection;
        }

        /// <summary>
        /// Returns object of T. T must be an Entity class
        /// </summary>
        public static T GetByFieldValue<T>(string fieldName, string fieldValue) where T : new()
        {
            T returnEntity = default(T);

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "SelectBy" + fieldName);

            db.AddInParameter(dbCommand, fieldName, DbType.String, fieldValue);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    returnEntity = new T();
                    AssignDataReaderToEntity(dataReader, returnEntity);
                }
            }

            return returnEntity;
        }

        /// <summary>
        /// Returns a collection of T. T must be an Entity class
        /// </summary>
        public static T GetByFieldValue<T>(string fieldName1, string fieldValue1, string fieldName2, string fieldValue2) where T : new()
        {

            T returnEntity = default(T);

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "SelectBy" + fieldName1);

            db.AddInParameter(dbCommand, fieldName1, DbType.String, fieldValue1);
            db.AddInParameter(dbCommand, fieldName2, DbType.String, fieldValue2);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    returnEntity = new T();
                    AssignDataReaderToEntity(dataReader, returnEntity);
                }
            }

            return returnEntity;
        }

        /// <summary>
        /// Returns a collection of T. T must be an Entity class
        /// </summary>
        public static List<T> GetAllByFieldValue<T>(string fieldName1, Guid fieldValue1, string fieldName2, string fieldValue2) where T : new()
        {
            List<T> returnEntityCollection = new List<T>();

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "SelectAllBy" + fieldName1);

            db.AddInParameter(dbCommand, fieldName1, DbType.Guid, fieldValue1);
            db.AddInParameter(dbCommand, fieldName2, DbType.String, fieldValue2);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    T entity = new T();

                    AssignDataReaderToEntity(dataReader, entity);
                    returnEntityCollection.Add(entity);
                }
            }

            return returnEntityCollection;
        }



        /// <summary>
        /// Returns a collection of T. T must be an Entity class
        /// </summary>
        public static List<T> GetAllByFieldValue<T>(string fieldName, string fieldValue) where T : new()
        {
            List<T> returnEntityCollection = new List<T>();

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "SelectAllBy" + fieldName);

            db.AddInParameter(dbCommand, fieldName, DbType.String, fieldValue);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    T entity = new T();

                    AssignDataReaderToEntity(dataReader, entity);
                    returnEntityCollection.Add(entity);
                }
            }

            return returnEntityCollection;
        }

        /// <summary>
        /// Returns a collection of T. T must be an Entity class
        /// </summary>
        public static List<T> GetAllByFieldValue<T>(string fieldName, int fieldValue) where T : new()
        {
            List<T> returnEntityCollection = new List<T>();

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "SelectAllBy" + fieldName);

            db.AddInParameter(dbCommand, fieldName, DbType.Int32, fieldValue);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    T entity = new T();

                    AssignDataReaderToEntity(dataReader, entity);
                    returnEntityCollection.Add(entity);
                }
            }

            return returnEntityCollection;
        }

       

        /// <summary>
        /// Returns a collection of T. T must be an Entity class
        /// </summary>
        public static List<T> GetAllByFieldValue<T>(string fieldName, Guid fieldValue) where T : new()
        {
            List<T> returnEntityCollection = new List<T>();

            string TypeName = typeof(T).Name;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbCommand dbCommand = db.GetStoredProcCommand("usp_" + TypeName + "SelectAllBy" + fieldName);

            db.AddInParameter(dbCommand, fieldName, DbType.Guid, fieldValue);

            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                while (dataReader.Read())
                {
                    T entity = new T();

                    AssignDataReaderToEntity(dataReader, entity);
                    returnEntityCollection.Add(entity);
                }
            }

            return returnEntityCollection;
        }
    }
}
