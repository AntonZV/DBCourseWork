﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.19408
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace kursova
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="KursovaDB")]
	public partial class WorkerDBDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Определения метода расширяемости
    partial void OnCreated();
    partial void InsertWorker(Worker instance);
    partial void UpdateWorker(Worker instance);
    partial void DeleteWorker(Worker instance);
    #endregion
		
		public WorkerDBDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["KursovaDBConnectionString1"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public WorkerDBDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WorkerDBDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WorkerDBDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WorkerDBDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Worker> Worker
		{
			get
			{
				return this.GetTable<Worker>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Worker")]
	public partial class Worker : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _WorkerID;
		
		private string _FirstName;
		
		private string _SecondName;
		
		private System.DateTime _DateBirth;
		
		private int _Experience;
		
		private int _PositionID;
		
		private int _TransportID;
		
    #region Определения метода расширяемости
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnWorkerIDChanging(int value);
    partial void OnWorkerIDChanged();
    partial void OnFirstNameChanging(string value);
    partial void OnFirstNameChanged();
    partial void OnSecondNameChanging(string value);
    partial void OnSecondNameChanged();
    partial void OnDateBirthChanging(System.DateTime value);
    partial void OnDateBirthChanged();
    partial void OnExperienceChanging(int value);
    partial void OnExperienceChanged();
    partial void OnPositionIDChanging(int value);
    partial void OnPositionIDChanged();
    partial void OnTransportIDChanging(int value);
    partial void OnTransportIDChanged();
    #endregion
		
		public Worker()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_WorkerID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int WorkerID
		{
			get
			{
				return this._WorkerID;
			}
			set
			{
				if ((this._WorkerID != value))
				{
					this.OnWorkerIDChanging(value);
					this.SendPropertyChanging();
					this._WorkerID = value;
					this.SendPropertyChanged("WorkerID");
					this.OnWorkerIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FirstName", DbType="NVarChar(20) NOT NULL", CanBeNull=false)]
		public string FirstName
		{
			get
			{
				return this._FirstName;
			}
			set
			{
				if ((this._FirstName != value))
				{
					this.OnFirstNameChanging(value);
					this.SendPropertyChanging();
					this._FirstName = value;
					this.SendPropertyChanged("FirstName");
					this.OnFirstNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SecondName", DbType="NVarChar(20) NOT NULL", CanBeNull=false)]
		public string SecondName
		{
			get
			{
				return this._SecondName;
			}
			set
			{
				if ((this._SecondName != value))
				{
					this.OnSecondNameChanging(value);
					this.SendPropertyChanging();
					this._SecondName = value;
					this.SendPropertyChanged("SecondName");
					this.OnSecondNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DateBirth", DbType="Date NOT NULL")]
		public System.DateTime DateBirth
		{
			get
			{
				return this._DateBirth;
			}
			set
			{
				if ((this._DateBirth != value))
				{
					this.OnDateBirthChanging(value);
					this.SendPropertyChanging();
					this._DateBirth = value;
					this.SendPropertyChanged("DateBirth");
					this.OnDateBirthChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Experience", DbType="Int NOT NULL")]
		public int Experience
		{
			get
			{
				return this._Experience;
			}
			set
			{
				if ((this._Experience != value))
				{
					this.OnExperienceChanging(value);
					this.SendPropertyChanging();
					this._Experience = value;
					this.SendPropertyChanged("Experience");
					this.OnExperienceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PositionID", DbType="Int NOT NULL")]
		public int PositionID
		{
			get
			{
				return this._PositionID;
			}
			set
			{
				if ((this._PositionID != value))
				{
					this.OnPositionIDChanging(value);
					this.SendPropertyChanging();
					this._PositionID = value;
					this.SendPropertyChanged("PositionID");
					this.OnPositionIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TransportID", DbType="Int NOT NULL")]
		public int TransportID
		{
			get
			{
				return this._TransportID;
			}
			set
			{
				if ((this._TransportID != value))
				{
					this.OnTransportIDChanging(value);
					this.SendPropertyChanging();
					this._TransportID = value;
					this.SendPropertyChanged("TransportID");
					this.OnTransportIDChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
