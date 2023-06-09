USE [master]
GO
/****** Object:  Database [Movie]    Script Date: 6/18/2022 4:22:26 PM ******/
CREATE DATABASE [Movie]
GO
ALTER DATABASE [Movie] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Movie] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Movie] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Movie] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Movie] SET ARITHABORT OFF 
GO
ALTER DATABASE [Movie] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Movie] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Movie] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Movie] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Movie] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Movie] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Movie] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Movie] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Movie] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Movie] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Movie] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Movie] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Movie] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Movie] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Movie] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Movie] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Movie] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Movie] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Movie] SET  MULTI_USER 
GO
ALTER DATABASE [Movie] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Movie] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Movie] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Movie] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Movie] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Movie] SET QUERY_STORE = OFF
GO
USE [Movie]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Movie]
GO
/****** Object:  Table [dbo].[MovieDetails]    Script Date: 6/18/2022 4:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieDetails](
	[Id] [varchar](100) NOT NULL,
	[Title] [varchar](100) NULL,
	[Year] [int] NULL,
	[Directors] [varchar](50) NULL,
	[RuntimeMins] [int] NULL,
	[Genres] [varchar](50) NULL,
	[Plot] [varchar](250) NULL,
	[image] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoviePosters]    Script Date: 6/18/2022 4:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoviePosters](
	[Id] [uniqueidentifier] NOT NULL,
	[MovieId] [varchar](100) NOT NULL,
	[PosterUrl] [varchar](250) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[MovieDetails] ([Id], [Title], [Year], [Directors], [RuntimeMins], [Genres], [Plot], [image]) VALUES (N'tt1745960', N'Top Gun: Maverick', 2022, N'Joseph Kosinski', 130, N'Action, Drama', N'After more than thirty years of service as one of the Navy''s top aviators, Pete Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him.', N'https://m.media-amazon.com/images/M/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg')
INSERT [dbo].[MovieDetails] ([Id], [Title], [Year], [Directors], [RuntimeMins], [Genres], [Plot], [image]) VALUES (N'tt0092099', N'Top Gun', 1986, N'Tony Scott', 110, N'Action, Drama', N'As students at the United States Navy''s elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom.', N'https://imdb-api.com/images/original/MV5BZjQxYTA3ODItNzgxMy00N2Y2LWJlZGMtMTRlM2JkZjI1ZDhhXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg')
INSERT [dbo].[MovieDetails] ([Id], [Title], [Year], [Directors], [RuntimeMins], [Genres], [Plot], [image]) VALUES (N'tt3513500', N'Chip ''n Dale: Rescue Rangers', 2022, N'
Akiva Schaffer', 97, N'Animation, Adventure, Comedy', N'Thirty years after their popular television show ended, chipmunks Chip and Dale live very different lives. When a cast member from the original series mysteriously disappears, the pair must reunite to save their friend.', N'https://imdb-api.com/images/original/MV5BZjBlMjIxN2ItNTMyNi00NDk5LWFhMzEtNzdiODE0Y2M4MWI2XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg')
INSERT [dbo].[MovieDetails] ([Id], [Title], [Year], [Directors], [RuntimeMins], [Genres], [Plot], [image]) VALUES (N'tt10648342', N'Thor: Love and Thunder', 2022, N'Taika Waititi', 119, N'Action, Adventure, Comedy', N'Thor enlists the help of Valkyrie, Korg and ex-girlfriend Jane Foster to fight Gorr the God Butcher, who intends to make the gods extinct.', N'https://imdb-api.com/images/original/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg')
GO
INSERT [dbo].[MoviePosters] ([Id], [MovieId], [PosterUrl]) VALUES (N'70132bb0-2f46-4b97-8a26-837a0aab9d67', N'tt1745960', N'https://m.media-amazon.com/images/M/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg')
INSERT [dbo].[MoviePosters] ([Id], [MovieId], [PosterUrl]) VALUES (N'4dfdd3c2-1b52-476a-b38f-70d22255731b', N'tt0092099', N'https://imdb-api.com/images/original/MV5BZjQxYTA3ODItNzgxMy00N2Y2LWJlZGMtMTRlM2JkZjI1ZDhhXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg')
INSERT [dbo].[MoviePosters] ([Id], [MovieId], [PosterUrl]) VALUES (N'722d862a-e2bf-454e-9134-6aff01489436', N'tt3513500', N'https://imdb-api.com/images/original/MV5BZjBlMjIxN2ItNTMyNi00NDk5LWFhMzEtNzdiODE0Y2M4MWI2XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg')
INSERT [dbo].[MoviePosters] ([Id], [MovieId], [PosterUrl]) VALUES (N'2423b90b-a303-4937-80cb-165556f9f020', N'tt10648342', N'https://imdb-api.com/images/original/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg')
GO
USE [master]
GO
ALTER DATABASE [Movie] SET  READ_WRITE 
GO
