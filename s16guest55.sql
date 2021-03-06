USE [s16guest55]
GO
/****** Object:  Table [dbo].[Authentications]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authentications](
	[Customer_ID] [int] NOT NULL,
	[User_Name] [nvarchar](100) NOT NULL,
	[Date] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Authentications] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Branch]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Branch_ID] [int] NOT NULL,
	[Product_ID] [int] NULL,
	[Platform_ID] [int] NULL,
	[Branch_Code] [nchar](10) NULL,
	[Download_link] [nvarchar](200) NOT NULL,
	[ReleaseType_ID] [int] NOT NULL,
	[Strat_Date] [nvarchar](10) NOT NULL,
	[End_Date] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Branch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_ID] [int] NOT NULL,
	[City_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[clients requests for download]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients requests for download](
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Company] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[request for download of version] [float] NULL,
	[date] [datetime] NULL,
	[company address] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country_ID] [int] NOT NULL,
	[Country] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] NOT NULL,
	[Customer_Name] [nvarchar](100) NOT NULL,
	[Customer_Lastname] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Company_Name] [nvarchar](100) NOT NULL,
	[Address_ID] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer_Address]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Address](
	[Address_ID] [int] NOT NULL,
	[Street] [nvarchar](100) NOT NULL,
	[City_ID] [int] NOT NULL,
	[State_ID] [int] NULL,
	[Country_ID] [int] NULL,
	[Zipcode] [nvarchar](100) NULL,
 CONSTRAINT [PK_Customer_Address] PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer_Phone]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Phone](
	[Customer_ID] [int] NOT NULL,
	[Phone_ID] [int] NOT NULL,
 CONSTRAINT [PK_Customer_Phone] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC,
	[Phone_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Download_history]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download_history](
	[Download_ID] [int] NOT NULL,
	[Branch_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Download_Date] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Download_history] PRIMARY KEY CLUSTERED 
(
	[Download_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[Itreation_ID] [int] NOT NULL,
	[Feature_ID] [int] NOT NULL,
	[Branch_ID] [int] NOT NULL,
	[Feature_Discription] [nvarchar](100) NOT NULL,
	[Feature_DateRelese] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Feature_1] PRIMARY KEY CLUSTERED 
(
	[Feature_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Itreations]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itreations](
	[Iteration_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Platform_ID] [int] NOT NULL,
	[Version_Code] [nvarchar](10) NOT NULL,
	[Version_Discription] [nvarchar](200) NULL,
	[Version_Date] [nvarchar](10) NULL,
 CONSTRAINT [PK_Itreations] PRIMARY KEY CLUSTERED 
(
	[Iteration_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[Phone_ID] [int] NOT NULL,
	[Phone_Number] [nvarchar](100) NOT NULL,
	[PhoneType_ID] [int] NOT NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[Phone_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhoneType]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneType](
	[Phonetype_ID] [int] NOT NULL,
	[Phone_Type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PhoneType] PRIMARY KEY CLUSTERED 
(
	[Phonetype_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Platforms]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platforms](
	[Platform_ID] [int] NOT NULL,
	[Platform_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Platform_ID_1] PRIMARY KEY CLUSTERED 
(
	[Platform_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product_ID] [int] NOT NULL,
	[Product_Name] [nchar](200) NOT NULL,
	[Product_Discription] [nchar](200) NOT NULL,
	[Product_Date] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductVersionRelease]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVersionRelease](
	[Product] [nvarchar](255) NULL,
	[Platform] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Version] [float] NULL,
	[New Features] [nvarchar](255) NULL,
	[Release] [float] NULL,
	[type of release] [nvarchar](255) NULL,
	[Date of release] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Release Type]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Release Type](
	[ReleaseType_ID] [int] NOT NULL,
	[Release_Type] [nchar](200) NOT NULL,
 CONSTRAINT [PK_Release Type] PRIMARY KEY CLUSTERED 
(
	[ReleaseType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[State_ID] [int] NOT NULL,
	[State_Name] [nchar](100) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Authentications]  WITH CHECK ADD  CONSTRAINT [FK_Authentications_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Authentications] CHECK CONSTRAINT [FK_Authentications_Customer]
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Release Type] FOREIGN KEY([ReleaseType_ID])
REFERENCES [dbo].[Release Type] ([ReleaseType_ID])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_Release Type]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Customer_Address] FOREIGN KEY([Address_ID])
REFERENCES [dbo].[Customer_Address] ([Address_ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Customer_Address]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([City_ID])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_City]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address_Country] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([Country_ID])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_Country]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address_State] FOREIGN KEY([State_ID])
REFERENCES [dbo].[State] ([State_ID])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_State]
GO
ALTER TABLE [dbo].[Customer_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Phone_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Phone] CHECK CONSTRAINT [FK_Customer_Phone_Customer]
GO
ALTER TABLE [dbo].[Customer_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Phone_Phone] FOREIGN KEY([Phone_ID])
REFERENCES [dbo].[Phone] ([Phone_ID])
GO
ALTER TABLE [dbo].[Customer_Phone] CHECK CONSTRAINT [FK_Customer_Phone_Phone]
GO
ALTER TABLE [dbo].[Download_history]  WITH CHECK ADD  CONSTRAINT [FK_Download_history_Branch] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Download_history] CHECK CONSTRAINT [FK_Download_history_Branch]
GO
ALTER TABLE [dbo].[Download_history]  WITH CHECK ADD  CONSTRAINT [FK_Download_history_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Download_history] CHECK CONSTRAINT [FK_Download_history_Customer]
GO
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_Branch] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_Branch]
GO
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_Itreations] FOREIGN KEY([Itreation_ID])
REFERENCES [dbo].[Itreations] ([Iteration_ID])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_Itreations]
GO
ALTER TABLE [dbo].[Itreations]  WITH CHECK ADD  CONSTRAINT [FK_Itreations_Platform_ID] FOREIGN KEY([Platform_ID])
REFERENCES [dbo].[Platforms] ([Platform_ID])
GO
ALTER TABLE [dbo].[Itreations] CHECK CONSTRAINT [FK_Itreations_Platform_ID]
GO
ALTER TABLE [dbo].[Itreations]  WITH CHECK ADD  CONSTRAINT [FK_Itreations_Products] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([Product_ID])
GO
ALTER TABLE [dbo].[Itreations] CHECK CONSTRAINT [FK_Itreations_Products]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_PhoneType] FOREIGN KEY([PhoneType_ID])
REFERENCES [dbo].[PhoneType] ([Phonetype_ID])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_PhoneType]
GO
/****** Object:  StoredProcedure [dbo].[Report1]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report1]
AS
BEGIN
	SELECT        dbo.Products.Product_Name, dbo.Branch.Branch_Code, SUBSTRING(dbo.Download_history.Download_Date, 1, 2) AS Month, COUNT(*) AS Count
	FROM           dbo.Products INNER JOIN
                   dbo.Branch ON dbo.Products.Product_ID = dbo.Branch.Product_ID INNER JOIN
                   dbo.Download_history ON dbo.Branch.Branch_ID = dbo.Download_history.Branch_ID
	GROUP BY	   dbo.Products.Product_Name, dbo.Branch.Branch_Code, 
					SUBSTRING(dbo.Download_history.Download_Date, 1, 2)

END

GO
/****** Object:  StoredProcedure [dbo].[Report2]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Report2](@Branch_Id int)

AS

BEGIN
	BEGIN TRY
		DECLARE @temp1 int = (select count(*) from Feature where  
					Branch_ID = @Branch_ID)
		DECLARE @temp2 nvarchar(10) = (select Branch_Code from Branch where  
					Branch_ID= @Branch_ID)
		if @temp1 > 0
		begin
			if @temp1 = 1
			begin
				DECLARE @temp3 nvarchar(100) = (select Feature_Discription from Feature where  
					Branch_ID = @Branch_ID)
					if CHARINDEX ( 'bug fix' ,@temp3) > 0 begin
						select 'It is a bug–fix release'
					end else begin
						select CAST(@temp1 AS varchar(10)) + ' features are in the '+ @temp2 + ' release'
					end

			end else begin
				select CAST(@temp1 AS varchar(10)) + ' features are in the '+ @temp2 + ' release'
			end
		end else begin
			select 'There are no new features in the '+ @temp2  +' release'
		end
	END TRY
	BEGIN CATCH
		raiserror('Report21 Error!',1,1)
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[spInsertPhoneType]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROC [dbo].[spInsertPhoneType](@Phonetype_ID int,
					@Phone_Type nvarchar(100))
AS
BEGIN
	DECLARE @temp int = (select count(*) from PhoneType where  
				Phone_Type = @Phone_Type)
	if @temp = 0
	begin
		BEGIN TRY
			INSERT INTO [dbo].[PhoneType]
					([Phonetype_ID]
					,[Phone_Type])
			VALUES
					(@Phonetype_ID,
					@Phone_Type)
		END TRY

		BEGIN CATCH
			raiserror('insert error!',1,1)
		END CATCH

	end else begin
		raiserror('Data douplication error' ,2,1)
	end

END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateIterations]    Script Date: 5/6/2016 8:24:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[spUpdateIterations](@Iteration_ID int,
           @Product_ID int,
           @Platform_ID int,
           @Version_Code nvarchar(10),
           @Version_Discription nvarchar(200),
           @Version_Date nvarchar(10))
AS
BEGIN
	DECLARE @temp int = (select count(*) from Iterations where  
				Iteration_Id = @Iteration_Id )
	if @temp > 0
	begin
		BEGIN TRY
			SET NOCOUNT ON;
				UPDATE [dbo].[Iterations]
					SET [Iteration_ID] = @Iteration_ID,
						[Product_Id] = @Product_Id, 
						[Platform_Id] = @Platform_Id,
						[Version_Code] = @Version_Code,
						[Version_Discription] = @Version_Discription,
						[Version_Date] = @Version_Date
	  	where Iteration_Id = @Iteration_Id
		END try
		BEGIN CATCH
			raiserror('update error!',1,1)
		END CATCH

	end else begin
		raiserror('error: Data does not exist.' ,2,1)
	end
END
GO
