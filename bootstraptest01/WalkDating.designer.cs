﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18052
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace bootstraptest01
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
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="ahbdate_dk_db")]
	public partial class WalkDatingDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertEvent(Event instance);
    partial void UpdateEvent(Event instance);
    partial void DeleteEvent(Event instance);
    partial void InsertLocation(Location instance);
    partial void UpdateLocation(Location instance);
    partial void DeleteLocation(Location instance);
    partial void InsertUser(User instance);
    partial void UpdateUser(User instance);
    partial void DeleteUser(User instance);
    #endregion
		
		public WalkDatingDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["ahbdate_dk_dbConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public WalkDatingDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WalkDatingDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WalkDatingDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WalkDatingDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<UserEvent> UserEvents
		{
			get
			{
				return this.GetTable<UserEvent>();
			}
		}
		
		public System.Data.Linq.Table<Event> Events
		{
			get
			{
				return this.GetTable<Event>();
			}
		}
		
		public System.Data.Linq.Table<Location> Locations
		{
			get
			{
				return this.GetTable<Location>();
			}
		}
		
		public System.Data.Linq.Table<User> Users
		{
			get
			{
				return this.GetTable<User>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.UserEvent")]
	public partial class UserEvent
	{
		
		private int _UserId;
		
		private int _EventId;
		
		public UserEvent()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserId", DbType="Int NOT NULL")]
		public int UserId
		{
			get
			{
				return this._UserId;
			}
			set
			{
				if ((this._UserId != value))
				{
					this._UserId = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EventId", DbType="Int NOT NULL")]
		public int EventId
		{
			get
			{
				return this._EventId;
			}
			set
			{
				if ((this._EventId != value))
				{
					this._EventId = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Event")]
	public partial class Event : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _EventId;
		
		private string _Headline;
		
		private string _Hookline;
		
		private string _InfoText;
		
		private System.Nullable<int> _LocationId;
		
		private System.Nullable<System.DateTime> _DateStart;
		
		private System.Nullable<System.DateTime> _DateEnd;
		
		private System.Nullable<int> _AgeMin;
		
		private System.Nullable<int> _AgeMax;
		
		private System.Nullable<int> _NumOfPersons;
		
		private System.Nullable<System.DateTime> _SignupDeadline;
		
		private System.Nullable<int> _Price;
		
		private EntityRef<Location> _Location;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnEventIdChanging(int value);
    partial void OnEventIdChanged();
    partial void OnHeadlineChanging(string value);
    partial void OnHeadlineChanged();
    partial void OnHooklineChanging(string value);
    partial void OnHooklineChanged();
    partial void OnInfoTextChanging(string value);
    partial void OnInfoTextChanged();
    partial void OnLocationIdChanging(System.Nullable<int> value);
    partial void OnLocationIdChanged();
    partial void OnDateStartChanging(System.Nullable<System.DateTime> value);
    partial void OnDateStartChanged();
    partial void OnDateEndChanging(System.Nullable<System.DateTime> value);
    partial void OnDateEndChanged();
    partial void OnAgeMinChanging(System.Nullable<int> value);
    partial void OnAgeMinChanged();
    partial void OnAgeMaxChanging(System.Nullable<int> value);
    partial void OnAgeMaxChanged();
    partial void OnNumOfPersonsChanging(System.Nullable<int> value);
    partial void OnNumOfPersonsChanged();
    partial void OnSignupDeadlineChanging(System.Nullable<System.DateTime> value);
    partial void OnSignupDeadlineChanged();
    partial void OnPriceChanging(System.Nullable<int> value);
    partial void OnPriceChanged();
    #endregion
		
		public Event()
		{
			this._Location = default(EntityRef<Location>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EventId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int EventId
		{
			get
			{
				return this._EventId;
			}
			set
			{
				if ((this._EventId != value))
				{
					this.OnEventIdChanging(value);
					this.SendPropertyChanging();
					this._EventId = value;
					this.SendPropertyChanged("EventId");
					this.OnEventIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Headline", DbType="NVarChar(50)")]
		public string Headline
		{
			get
			{
				return this._Headline;
			}
			set
			{
				if ((this._Headline != value))
				{
					this.OnHeadlineChanging(value);
					this.SendPropertyChanging();
					this._Headline = value;
					this.SendPropertyChanged("Headline");
					this.OnHeadlineChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Hookline", DbType="NVarChar(50)")]
		public string Hookline
		{
			get
			{
				return this._Hookline;
			}
			set
			{
				if ((this._Hookline != value))
				{
					this.OnHooklineChanging(value);
					this.SendPropertyChanging();
					this._Hookline = value;
					this.SendPropertyChanged("Hookline");
					this.OnHooklineChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_InfoText", DbType="NVarChar(MAX)")]
		public string InfoText
		{
			get
			{
				return this._InfoText;
			}
			set
			{
				if ((this._InfoText != value))
				{
					this.OnInfoTextChanging(value);
					this.SendPropertyChanging();
					this._InfoText = value;
					this.SendPropertyChanged("InfoText");
					this.OnInfoTextChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LocationId", DbType="Int")]
		public System.Nullable<int> LocationId
		{
			get
			{
				return this._LocationId;
			}
			set
			{
				if ((this._LocationId != value))
				{
					if (this._Location.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnLocationIdChanging(value);
					this.SendPropertyChanging();
					this._LocationId = value;
					this.SendPropertyChanged("LocationId");
					this.OnLocationIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DateStart", DbType="DateTime")]
		public System.Nullable<System.DateTime> DateStart
		{
			get
			{
				return this._DateStart;
			}
			set
			{
				if ((this._DateStart != value))
				{
					this.OnDateStartChanging(value);
					this.SendPropertyChanging();
					this._DateStart = value;
					this.SendPropertyChanged("DateStart");
					this.OnDateStartChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DateEnd", DbType="DateTime")]
		public System.Nullable<System.DateTime> DateEnd
		{
			get
			{
				return this._DateEnd;
			}
			set
			{
				if ((this._DateEnd != value))
				{
					this.OnDateEndChanging(value);
					this.SendPropertyChanging();
					this._DateEnd = value;
					this.SendPropertyChanged("DateEnd");
					this.OnDateEndChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AgeMin", DbType="Int")]
		public System.Nullable<int> AgeMin
		{
			get
			{
				return this._AgeMin;
			}
			set
			{
				if ((this._AgeMin != value))
				{
					this.OnAgeMinChanging(value);
					this.SendPropertyChanging();
					this._AgeMin = value;
					this.SendPropertyChanged("AgeMin");
					this.OnAgeMinChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AgeMax", DbType="Int")]
		public System.Nullable<int> AgeMax
		{
			get
			{
				return this._AgeMax;
			}
			set
			{
				if ((this._AgeMax != value))
				{
					this.OnAgeMaxChanging(value);
					this.SendPropertyChanging();
					this._AgeMax = value;
					this.SendPropertyChanged("AgeMax");
					this.OnAgeMaxChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NumOfPersons", DbType="Int")]
		public System.Nullable<int> NumOfPersons
		{
			get
			{
				return this._NumOfPersons;
			}
			set
			{
				if ((this._NumOfPersons != value))
				{
					this.OnNumOfPersonsChanging(value);
					this.SendPropertyChanging();
					this._NumOfPersons = value;
					this.SendPropertyChanged("NumOfPersons");
					this.OnNumOfPersonsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SignupDeadline", DbType="Date")]
		public System.Nullable<System.DateTime> SignupDeadline
		{
			get
			{
				return this._SignupDeadline;
			}
			set
			{
				if ((this._SignupDeadline != value))
				{
					this.OnSignupDeadlineChanging(value);
					this.SendPropertyChanging();
					this._SignupDeadline = value;
					this.SendPropertyChanged("SignupDeadline");
					this.OnSignupDeadlineChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Price", DbType="Int")]
		public System.Nullable<int> Price
		{
			get
			{
				return this._Price;
			}
			set
			{
				if ((this._Price != value))
				{
					this.OnPriceChanging(value);
					this.SendPropertyChanging();
					this._Price = value;
					this.SendPropertyChanged("Price");
					this.OnPriceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Location_Event", Storage="_Location", ThisKey="LocationId", OtherKey="LocationId", IsForeignKey=true)]
		public Location Location
		{
			get
			{
				return this._Location.Entity;
			}
			set
			{
				Location previousValue = this._Location.Entity;
				if (((previousValue != value) 
							|| (this._Location.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Location.Entity = null;
						previousValue.Events.Remove(this);
					}
					this._Location.Entity = value;
					if ((value != null))
					{
						value.Events.Add(this);
						this._LocationId = value.LocationId;
					}
					else
					{
						this._LocationId = default(Nullable<int>);
					}
					this.SendPropertyChanged("Location");
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
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Location")]
	public partial class Location : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _LocationId;
		
		private string _Name;
		
		private string _Address;
		
		private System.Nullable<int> _Zip;
		
		private string _City;
		
		private string _LocationInfo;
		
		private string _ImageUrl;
		
		private EntitySet<Event> _Events;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnLocationIdChanging(int value);
    partial void OnLocationIdChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnAddressChanging(string value);
    partial void OnAddressChanged();
    partial void OnZipChanging(System.Nullable<int> value);
    partial void OnZipChanged();
    partial void OnCityChanging(string value);
    partial void OnCityChanged();
    partial void OnLocationInfoChanging(string value);
    partial void OnLocationInfoChanged();
    partial void OnImageUrlChanging(string value);
    partial void OnImageUrlChanged();
    #endregion
		
		public Location()
		{
			this._Events = new EntitySet<Event>(new Action<Event>(this.attach_Events), new Action<Event>(this.detach_Events));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LocationId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int LocationId
		{
			get
			{
				return this._LocationId;
			}
			set
			{
				if ((this._LocationId != value))
				{
					this.OnLocationIdChanging(value);
					this.SendPropertyChanging();
					this._LocationId = value;
					this.SendPropertyChanged("LocationId");
					this.OnLocationIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(50)")]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this.OnNameChanging(value);
					this.SendPropertyChanging();
					this._Name = value;
					this.SendPropertyChanged("Name");
					this.OnNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Address", DbType="NVarChar(MAX)")]
		public string Address
		{
			get
			{
				return this._Address;
			}
			set
			{
				if ((this._Address != value))
				{
					this.OnAddressChanging(value);
					this.SendPropertyChanging();
					this._Address = value;
					this.SendPropertyChanged("Address");
					this.OnAddressChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Zip", DbType="Int")]
		public System.Nullable<int> Zip
		{
			get
			{
				return this._Zip;
			}
			set
			{
				if ((this._Zip != value))
				{
					this.OnZipChanging(value);
					this.SendPropertyChanging();
					this._Zip = value;
					this.SendPropertyChanged("Zip");
					this.OnZipChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_City", DbType="NVarChar(50)")]
		public string City
		{
			get
			{
				return this._City;
			}
			set
			{
				if ((this._City != value))
				{
					this.OnCityChanging(value);
					this.SendPropertyChanging();
					this._City = value;
					this.SendPropertyChanged("City");
					this.OnCityChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LocationInfo", DbType="NVarChar(MAX)")]
		public string LocationInfo
		{
			get
			{
				return this._LocationInfo;
			}
			set
			{
				if ((this._LocationInfo != value))
				{
					this.OnLocationInfoChanging(value);
					this.SendPropertyChanging();
					this._LocationInfo = value;
					this.SendPropertyChanged("LocationInfo");
					this.OnLocationInfoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageUrl", DbType="NVarChar(50)")]
		public string ImageUrl
		{
			get
			{
				return this._ImageUrl;
			}
			set
			{
				if ((this._ImageUrl != value))
				{
					this.OnImageUrlChanging(value);
					this.SendPropertyChanging();
					this._ImageUrl = value;
					this.SendPropertyChanged("ImageUrl");
					this.OnImageUrlChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Location_Event", Storage="_Events", ThisKey="LocationId", OtherKey="LocationId")]
		public EntitySet<Event> Events
		{
			get
			{
				return this._Events;
			}
			set
			{
				this._Events.Assign(value);
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
		
		private void attach_Events(Event entity)
		{
			this.SendPropertyChanging();
			entity.Location = this;
		}
		
		private void detach_Events(Event entity)
		{
			this.SendPropertyChanging();
			entity.Location = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.[User]")]
	public partial class User : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _UserId;
		
		private string _FIrstName;
		
		private string _LastName;
		
		private string _Mail;
		
		private System.Nullable<int> _BirthYear;
		
		private string _Gender;
		
		private System.Nullable<int> _MobilPhone;
		
		private System.Nullable<int> _Newsletter;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnUserIdChanging(int value);
    partial void OnUserIdChanged();
    partial void OnFIrstNameChanging(string value);
    partial void OnFIrstNameChanged();
    partial void OnLastNameChanging(string value);
    partial void OnLastNameChanged();
    partial void OnMailChanging(string value);
    partial void OnMailChanged();
    partial void OnBirthYearChanging(System.Nullable<int> value);
    partial void OnBirthYearChanged();
    partial void OnGenderChanging(string value);
    partial void OnGenderChanged();
    partial void OnMobilPhoneChanging(System.Nullable<int> value);
    partial void OnMobilPhoneChanged();
    partial void OnNewsletterChanging(System.Nullable<int> value);
    partial void OnNewsletterChanged();
    #endregion
		
		public User()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int UserId
		{
			get
			{
				return this._UserId;
			}
			set
			{
				if ((this._UserId != value))
				{
					this.OnUserIdChanging(value);
					this.SendPropertyChanging();
					this._UserId = value;
					this.SendPropertyChanged("UserId");
					this.OnUserIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FIrstName", DbType="NVarChar(50)")]
		public string FIrstName
		{
			get
			{
				return this._FIrstName;
			}
			set
			{
				if ((this._FIrstName != value))
				{
					this.OnFIrstNameChanging(value);
					this.SendPropertyChanging();
					this._FIrstName = value;
					this.SendPropertyChanged("FIrstName");
					this.OnFIrstNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastName", DbType="NVarChar(50)")]
		public string LastName
		{
			get
			{
				return this._LastName;
			}
			set
			{
				if ((this._LastName != value))
				{
					this.OnLastNameChanging(value);
					this.SendPropertyChanging();
					this._LastName = value;
					this.SendPropertyChanged("LastName");
					this.OnLastNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Mail", DbType="NVarChar(50)")]
		public string Mail
		{
			get
			{
				return this._Mail;
			}
			set
			{
				if ((this._Mail != value))
				{
					this.OnMailChanging(value);
					this.SendPropertyChanging();
					this._Mail = value;
					this.SendPropertyChanged("Mail");
					this.OnMailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_BirthYear", DbType="Int")]
		public System.Nullable<int> BirthYear
		{
			get
			{
				return this._BirthYear;
			}
			set
			{
				if ((this._BirthYear != value))
				{
					this.OnBirthYearChanging(value);
					this.SendPropertyChanging();
					this._BirthYear = value;
					this.SendPropertyChanged("BirthYear");
					this.OnBirthYearChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Gender", DbType="NVarChar(50)")]
		public string Gender
		{
			get
			{
				return this._Gender;
			}
			set
			{
				if ((this._Gender != value))
				{
					this.OnGenderChanging(value);
					this.SendPropertyChanging();
					this._Gender = value;
					this.SendPropertyChanged("Gender");
					this.OnGenderChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MobilPhone", DbType="Int")]
		public System.Nullable<int> MobilPhone
		{
			get
			{
				return this._MobilPhone;
			}
			set
			{
				if ((this._MobilPhone != value))
				{
					this.OnMobilPhoneChanging(value);
					this.SendPropertyChanging();
					this._MobilPhone = value;
					this.SendPropertyChanged("MobilPhone");
					this.OnMobilPhoneChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Newsletter", DbType="Int")]
		public System.Nullable<int> Newsletter
		{
			get
			{
				return this._Newsletter;
			}
			set
			{
				if ((this._Newsletter != value))
				{
					this.OnNewsletterChanging(value);
					this.SendPropertyChanging();
					this._Newsletter = value;
					this.SendPropertyChanged("Newsletter");
					this.OnNewsletterChanged();
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
