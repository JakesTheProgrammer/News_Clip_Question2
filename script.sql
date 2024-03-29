USE [Question2_database]
GO
/****** Object:  Table [dbo].[tblBranches]    Script Date: 2019/10/25 01:16:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBranches](
	[branch_ID] [int] IDENTITY(1,1) NOT NULL,
	[branch_description] [varchar](50) NULL,
 CONSTRAINT [PK_tblBranches] PRIMARY KEY CLUSTERED 
(
	[branch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblShifts]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblShifts](
	[shift_ID] [int] IDENTITY(1,1) NOT NULL,
	[shift_description] [varchar](50) NULL,
 CONSTRAINT [PK_tblShifts] PRIMARY KEY CLUSTERED 
(
	[shift_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[user_ID] [int] IDENTITY(1,1) NOT NULL,
	[user_Name] [varchar](50) NULL,
	[user_FullName] [varchar](50) NULL,
	[branch_ID] [int] NOT NULL,
	[shift_ID] [int] NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[user_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBranches] ON 

INSERT [dbo].[tblBranches] ([branch_ID], [branch_description]) VALUES (1, N'Support')
INSERT [dbo].[tblBranches] ([branch_ID], [branch_description]) VALUES (2, N'Sales')
INSERT [dbo].[tblBranches] ([branch_ID], [branch_description]) VALUES (3, N'Management')
INSERT [dbo].[tblBranches] ([branch_ID], [branch_description]) VALUES (6, N'Cleaning')
SET IDENTITY_INSERT [dbo].[tblBranches] OFF
SET IDENTITY_INSERT [dbo].[tblShifts] ON 

INSERT [dbo].[tblShifts] ([shift_ID], [shift_description]) VALUES (1, N'Day')
INSERT [dbo].[tblShifts] ([shift_ID], [shift_description]) VALUES (2, N'Night')
INSERT [dbo].[tblShifts] ([shift_ID], [shift_description]) VALUES (3, N'Morning')
INSERT [dbo].[tblShifts] ([shift_ID], [shift_description]) VALUES (4, N'Afternoon')
INSERT [dbo].[tblShifts] ([shift_ID], [shift_description]) VALUES (5, N'Graveyard')
INSERT [dbo].[tblShifts] ([shift_ID], [shift_description]) VALUES (6, N'0')
SET IDENTITY_INSERT [dbo].[tblShifts] OFF
SET IDENTITY_INSERT [dbo].[tblUsers] ON 

INSERT [dbo].[tblUsers] ([user_ID], [user_Name], [user_FullName], [branch_ID], [shift_ID]) VALUES (1, N'John32', N'John Smith', 1, 1)
INSERT [dbo].[tblUsers] ([user_ID], [user_Name], [user_FullName], [branch_ID], [shift_ID]) VALUES (2, N'Maisie', N'Stark', 1, 1)
INSERT [dbo].[tblUsers] ([user_ID], [user_Name], [user_FullName], [branch_ID], [shift_ID]) VALUES (3, N'Alexis@QS', N'Alexis Pieters', 2, 2)
INSERT [dbo].[tblUsers] ([user_ID], [user_Name], [user_FullName], [branch_ID], [shift_ID]) VALUES (4, N'MikeTheBike', N'Micheal Stone', 2, 3)
INSERT [dbo].[tblUsers] ([user_ID], [user_Name], [user_FullName], [branch_ID], [shift_ID]) VALUES (5, N'Mustang', N'Sally Jobs', 3, 1)
INSERT [dbo].[tblUsers] ([user_ID], [user_Name], [user_FullName], [branch_ID], [shift_ID]) VALUES (6, N'An3', N'Andri Du Preez', 6, 5)
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
/****** Object:  StoredProcedure [dbo].[ProcedureName]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		show_users
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[ProcedureName] 
AS
	SELECT user_ID, user_Name, user_FullName, branch_ID, shift_ID from tblUsers;

GO
/****** Object:  StoredProcedure [dbo].[show_branches]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jaco
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[show_branches] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tblBranches;
END
GO
/****** Object:  StoredProcedure [dbo].[show_shifts]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		show_shifts
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[show_shifts]
AS
	SELECT * from tblShifts;
GO
/****** Object:  StoredProcedure [dbo].[show_users]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		show_users
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[show_users] 
AS
	SELECT user_ID as "ID", user_Name as "UserName", user_FullName as "FullName", tblBranches.branch_description as "Branch", tblShifts.shift_description as "Shift" from tblUsers
	INNER JOIN tblBranches on tblUsers.branch_ID = tblBranches.branch_ID 
	INNER JOIN tblShifts on tblUsers.shift_ID = tblShifts.shift_ID;

GO
/****** Object:  StoredProcedure [dbo].[update_branches]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[update_branches] 
	-- Add the parameters for the stored procedure here
	@pID int = 0, 
	@pDesc varchar = " "
AS
	UPDATE tblBranches
	SET branch_description = @pDesc
	WHERE branch_ID = @pID
GO
/****** Object:  StoredProcedure [dbo].[update_shifts]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[update_shifts] 
	-- Add the parameters for the stored procedure here
	@pID int = 0, 
	@pDesc varchar = 0
AS
BEGIN
	SELECT @pID, @pDesc

	UPDATE tblShifts
	SET shift_description = @pDesc
	WHERE shift_ID = @pID
END
GO
/****** Object:  StoredProcedure [dbo].[update_users]    Script Date: 2019/10/25 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[update_users] 
	-- Add the parameters for the stored procedure here
	@pID int = 0,
	@pUserName varchar = 0, 
	@pFullName varchar = 0,
	@pbranch int = 0,
	@pshift int = 0
AS
	UPDATE tblUsers
	SET user_Name = @pUserName, user_FullName = @pFullName, branch_ID = @pbranch, shift_ID = @pshift
	WHERE user_ID = @pID;
GO
