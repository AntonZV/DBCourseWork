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
	public partial class RouteDBDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Определения метода расширяемости
    partial void OnCreated();
    partial void InsertRoute(Route instance);
    partial void UpdateRoute(Route instance);
    partial void DeleteRoute(Route instance);
    #endregion
		
		public RouteDBDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["KursovaDBConnectionString1"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public RouteDBDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public RouteDBDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public RouteDBDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public RouteDBDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Route> Route
		{
			get
			{
				return this.GetTable<Route>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Route")]
	public partial class Route : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _RouteID;
		
		private string _StartPoint;
		
		private string _EndPoint;
		
		private System.TimeSpan _FirstRace;
		
		private System.TimeSpan _LastRace;
		
		private System.TimeSpan _Interval;
		
    #region Определения метода расширяемости
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnRouteIDChanging(int value);
    partial void OnRouteIDChanged();
    partial void OnStartPointChanging(string value);
    partial void OnStartPointChanged();
    partial void OnEndPointChanging(string value);
    partial void OnEndPointChanged();
    partial void OnFirstRaceChanging(System.TimeSpan value);
    partial void OnFirstRaceChanged();
    partial void OnLastRaceChanging(System.TimeSpan value);
    partial void OnLastRaceChanged();
    partial void OnIntervalChanging(System.TimeSpan value);
    partial void OnIntervalChanged();
    #endregion
		
		public Route()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_RouteID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int RouteID
		{
			get
			{
				return this._RouteID;
			}
			set
			{
				if ((this._RouteID != value))
				{
					this.OnRouteIDChanging(value);
					this.SendPropertyChanging();
					this._RouteID = value;
					this.SendPropertyChanged("RouteID");
					this.OnRouteIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartPoint", DbType="NVarChar(20) NOT NULL", CanBeNull=false)]
		public string StartPoint
		{
			get
			{
				return this._StartPoint;
			}
			set
			{
				if ((this._StartPoint != value))
				{
					this.OnStartPointChanging(value);
					this.SendPropertyChanging();
					this._StartPoint = value;
					this.SendPropertyChanged("StartPoint");
					this.OnStartPointChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndPoint", DbType="NVarChar(20) NOT NULL", CanBeNull=false)]
		public string EndPoint
		{
			get
			{
				return this._EndPoint;
			}
			set
			{
				if ((this._EndPoint != value))
				{
					this.OnEndPointChanging(value);
					this.SendPropertyChanging();
					this._EndPoint = value;
					this.SendPropertyChanged("EndPoint");
					this.OnEndPointChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FirstRace", DbType="Time NOT NULL")]
		public System.TimeSpan FirstRace
		{
			get
			{
				return this._FirstRace;
			}
			set
			{
				if ((this._FirstRace != value))
				{
					this.OnFirstRaceChanging(value);
					this.SendPropertyChanging();
					this._FirstRace = value;
					this.SendPropertyChanged("FirstRace");
					this.OnFirstRaceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastRace", DbType="Time NOT NULL")]
		public System.TimeSpan LastRace
		{
			get
			{
				return this._LastRace;
			}
			set
			{
				if ((this._LastRace != value))
				{
					this.OnLastRaceChanging(value);
					this.SendPropertyChanging();
					this._LastRace = value;
					this.SendPropertyChanged("LastRace");
					this.OnLastRaceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Interval", DbType="Time NOT NULL")]
		public System.TimeSpan Interval
		{
			get
			{
				return this._Interval;
			}
			set
			{
				if ((this._Interval != value))
				{
					this.OnIntervalChanging(value);
					this.SendPropertyChanging();
					this._Interval = value;
					this.SendPropertyChanged("Interval");
					this.OnIntervalChanged();
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