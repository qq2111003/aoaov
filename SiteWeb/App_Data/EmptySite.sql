/****** Object:  StoredProcedure [dbo].[DelColumn]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DelColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[DelColumn]
GO
/****** Object:  StoredProcedure [dbo].[GetAllNodeField]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllNodeField]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllNodeField]
GO
/****** Object:  StoredProcedure [dbo].[AddColumn]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddColumn]
GO
/****** Object:  StoredProcedure [dbo].[CreateTable]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreateTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CreateTable]
GO
/****** Object:  Table [dbo].[DataMark]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DataMark]') AND type in (N'U'))
DROP TABLE [dbo].[DataMark]
GO
/****** Object:  Table [dbo].[Node]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Node]') AND type in (N'U'))
DROP TABLE [dbo].[Node]
GO
/****** Object:  Table [dbo].[NodeUserModelField]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NodeUserModelField]') AND type in (N'U'))
DROP TABLE [dbo].[NodeUserModelField]
GO
/****** Object:  StoredProcedure [dbo].[Pager]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pager]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Pager]
GO
/****** Object:  Table [dbo].[RoleNode]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleNode]') AND type in (N'U'))
DROP TABLE [dbo].[RoleNode]
GO
/****** Object:  Table [dbo].[RoleNodeControl]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleNodeControl]') AND type in (N'U'))
DROP TABLE [dbo].[RoleNodeControl]
GO
/****** Object:  StoredProcedure [dbo].[SyscMarkName_Del]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SyscMarkName_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SyscMarkName_Del]
GO
/****** Object:  Table [dbo].[TeTags]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeTags]') AND type in (N'U'))
DROP TABLE [dbo].[TeTags]
GO
/****** Object:  Table [dbo].[TeTemplates]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeTemplates]') AND type in (N'U'))
DROP TABLE [dbo].[TeTemplates]
GO
/****** Object:  Table [dbo].[TeTemplateType]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeTemplateType]') AND type in (N'U'))
DROP TABLE [dbo].[TeTemplateType]
GO
/****** Object:  Table [dbo].[UserModel]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModel]') AND type in (N'U'))
DROP TABLE [dbo].[UserModel]
GO
/****** Object:  Table [dbo].[UserModelField]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModelField]') AND type in (N'U'))
DROP TABLE [dbo].[UserModelField]
GO
/****** Object:  Table [dbo].[UserModelFieldType]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModelFieldType]') AND type in (N'U'))
DROP TABLE [dbo].[UserModelFieldType]
GO
/****** Object:  Default [DF_Node_PageType]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Node_PageType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Node]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Node_PageType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Node] DROP CONSTRAINT [DF_Node_PageType]
END
End
GO
/****** Object:  Default [DF_SysNodeUserModelField_ShowInList]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SysNodeUserModelField_ShowInList]') AND parent_object_id = OBJECT_ID(N'[dbo].[NodeUserModelField]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SysNodeUserModelField_ShowInList]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NodeUserModelField] DROP CONSTRAINT [DF_SysNodeUserModelField_ShowInList]
END
End
GO
/****** Object:  Default [DF_SysNodeUserModelField_ListWidth]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SysNodeUserModelField_ListWidth]') AND parent_object_id = OBJECT_ID(N'[dbo].[NodeUserModelField]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SysNodeUserModelField_ListWidth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NodeUserModelField] DROP CONSTRAINT [DF_SysNodeUserModelField_ListWidth]
END
End
GO
/****** Object:  Default [DF_NodeUserModelField_Sort]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_NodeUserModelField_Sort]') AND parent_object_id = OBJECT_ID(N'[dbo].[NodeUserModelField]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_NodeUserModelField_Sort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NodeUserModelField] DROP CONSTRAINT [DF_NodeUserModelField_Sort]
END
End
GO
/****** Object:  Default [DF_Templates_CreateTime]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Templates_CreateTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeTemplates]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Templates_CreateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeTemplates] DROP CONSTRAINT [DF_Templates_CreateTime]
END
End
GO
/****** Object:  Default [DF_Templates_UpdateTime]    Script Date: 12/18/2013 14:50:50 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Templates_UpdateTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeTemplates]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Templates_UpdateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeTemplates] DROP CONSTRAINT [DF_Templates_UpdateTime]
END
End
GO
/****** Object:  Table [dbo].[UserModelFieldType]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModelFieldType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserModelFieldType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Ico] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[DBType] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SysUserModelFieldType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[UserModelFieldType] ON
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (1, N'SingleLine', N'', N'varchar(500)')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (2, N'MultiLine', N'', N'ntext')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (3, N'DateBox', N'', N'datetime')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (4, N'DateTimeBox', N'', N'datetime')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (5, N'TimeBox', N'', N'datetime')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (6, N'ImgUpload', N'', N'varchar(200)')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (7, N'FileUpload', N'', N'varchar(200)')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (8, N'Editor', N'', N'ntext')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (9, N'TreeNode', N'', N'int')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (10, N'Select', N'', N'varchar(200)')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (11, N'RadioButton', N'', N'varchar(200)')
INSERT [dbo].[UserModelFieldType] ([Id], [TypeName], [Ico], [DBType]) VALUES (12, N'CheckBox', N'', N'varchar(200)')
SET IDENTITY_INSERT [dbo].[UserModelFieldType] OFF
/****** Object:  Table [dbo].[UserModelField]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModelField]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserModelField](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserModelId] [int] NULL,
	[FieldName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Title] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[FieldTypeId] [int] NULL,
	[Sort] [int] NULL,
 CONSTRAINT [PK_SysUserModelField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[UserModel]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Title] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SysUserModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[TeTemplateType]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeTemplateType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TeTemplateType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_TemplateType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TeTemplateType] ON
INSERT [dbo].[TeTemplateType] ([Id], [TypeName]) VALUES (1, N'列表模板')
INSERT [dbo].[TeTemplateType] ([Id], [TypeName]) VALUES (2, N'内容模板')
INSERT [dbo].[TeTemplateType] ([Id], [TypeName]) VALUES (3, N'综合模板')
INSERT [dbo].[TeTemplateType] ([Id], [TypeName]) VALUES (4, N'公共模板')
SET IDENTITY_INSERT [dbo].[TeTemplateType] OFF
/****** Object:  Table [dbo].[TeTemplates]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeTemplates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TeTemplates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NULL,
	[Title] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[Note] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[TemplateHTML] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Templates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[TeTags]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeTags]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TeTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[TagHTML] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[SyscMarkName_Del]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SyscMarkName_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SyscMarkName_Del]
	@TableName varchar(50),
	@MarkName varchar(50)
AS
BEGIN
	declare @name varchar(50) 
select @name=b.name from syscolumns a,sysobjects b 
where a.id=object_id(@TableName) and b.id=a.cdefault 
and a.name=@MarkName and b.name like ''DF%'' 
exec(''alter table ''+@TableName+'' drop constraint ''+@name) 

exec(''alter table ''+@TableName+'' drop column ''+@MarkName)

END
' 
END
GO
/****** Object:  Table [dbo].[RoleNodeControl]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleNodeControl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleNodeControl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[NodeControlMark] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SysRoleNodeControl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[RoleNode]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleNode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[NodeId] [int] NULL,
 CONSTRAINT [PK_SysRoleNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[Pager]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pager]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		wusong
-- Create date: 2013-09-06
-- Description:	通用分页
-- =============================================
CREATE PROCEDURE [dbo].[Pager] 
	@PageIndex         int, 
	@PageSize      int, 
	@Field	varchar(500)=''*'',
	@TableName    nvarchar(4000), 
	@Where     nvarchar(4000)='''', 
	@rowcount int output
as 
	Declare @intStart    int 
	Declare @intEnd      int 
	Declare @SQl nvarchar(4000), @WhereR nvarchar(4000), @OrderBy nvarchar(4000) 
	set @rowcount=0 
	set nocount on 
	if @Where<>'''' 
	begin 
	set @Where='' and ''+@Where 
	end 
	if CHARINDEX(''order by'', @Where)>0 
	begin 
	set @WhereR=substring(@Where, 1, CHARINDEX(''order by'',@Where)-1) --取得条件 
	set @OrderBy=substring(@Where, CHARINDEX(''order by'',@Where), Len(@Where)) --取得排序方式(order by 字段 方式) 
	end 
	else 
	begin 
	set @WhereR=@Where 
	set @OrderBy='' order by Sort desc'' 
	end 
	set @SQl=''SELECT @rowcount=count(*) from ''+cast(@TableName as varchar(4000))+'' where 1=1 ''+@WhereR 
	exec sp_executeSql @SQl,N''@rowcount int output'',@rowcount output 
	if @PageIndex=0 and @PageSize=0 --不进行分页,查询所有数据列表 
	begin 
	set @SQl=''SELECT ''+@Field+'' from ''+cast(@TableName as varchar(4000))+'' where 1=1 ''+@Where 
	end 
	else --进行分页查询数据列表 
	begin 
	set @intStart=(@PageIndex-1)*@PageSize+1; 
	set @intEnd=@intStart+@PageSize-1 
	
	set @SQl=''select top ''+cast(@PageSize AS varchar(10))+'' ''+@Field+'' from ''+@TableName+'' where 1=1 ''+@WhereR
	+'' and id not in (select top ''+cast((@PageIndex-1)*@PageSize as varchar(10))+'' id from ''+@TableName+'' where 1=1 ''+@WhereR+'' ''+@OrderBy +'') ''+ @OrderBy
	
	print @SQl;
	--set @SQl=''select ''+@Field+'' from ''+@Field+'',ROW_NUMBER() OVER(''+cast(@OrderBy as nvarchar(400))+'') as row from '' 
	--set @SQl=@SQL+@TableName+'' where 1=1 ''+@WhereR+'') as a where row between ''+cast(@intStart as varchar)+'' and ''+cast(@intEnd as varchar) 
	end 
	exec sp_executeSql @SQl 
	set nocount off
' 
END
GO
/****** Object:  Table [dbo].[NodeUserModelField]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NodeUserModelField]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NodeUserModelField](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NULL,
	[UserModelFieldId] [int] NULL,
	[ReWriteTitle] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[ShowInList] [bit] NULL,
	[ListWidth] [int] NULL,
	[Sort] [int] NULL,
	[DefVal] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[OtherAttr] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[Validator] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[Tip] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SysNodeUserModelField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Node]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Node]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Node](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Title] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[UserModelId] [int] NULL,
	[PageType] [bit] NULL,
	[ListTemplateId] [int] NULL,
	[ListPageUrl] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[DetailTemplateId] [int] NULL,
	[DetailPageUrl] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SysNode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[DataMark]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DataMark]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DataMark](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[MarkName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Ico] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SysDataMark] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[CreateTable]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreateTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[CreateTable]
(
	@Title nvarchar(100),
	@TableName varchar(50)
)
AS

	declare @sql varchar(400);
	declare @str varchar(200);
	
	select @sql = '''';
	select @str = '''';
	
	--declare @TableName varchar(20);	select @TableName = ''tb_Info'';
	
	select @str =  @str + '', ['' + MarkName + ''] bit default(0)'' from datamark;
	
	print(@str);
	select @sql = ''CREATE TABLE ''+ @TableName+'' ([Id] [int] PRIMARY KEY IDENTITY NOT NULL,
		[NodeId] [int] NOT NULL ,
		[ParentId] [int] NULL ,
		[Sort] [int] default(0) NOT NULL,
		[CreateTime] datetime default(getdate()),
		[UpdateTime] datetime default(getdate()),
		[LastBuildTime] datetime default(getdate()),
		[Enable] bit default(1)
		''+@str+''
	)'';	
	--print(@sql);
	EXEC(@sql);	
	
	INSERT INTO [UserModel]
           ([TableName]
           ,[Title])
     VALUES
           (@TableName
           ,@Title)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AdminLogin]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminLogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[AdminLogin]
(
	@UserName varchar(40),
	@UserPwd varchar(48),
	@Status int output
	)
As
Set Nocount On
	Declare @Enable bit,@Pwd varchar(48)	
	Select @Pwd=[Password],@Enable=[Enable] From SysAdmin Where Name  COLLATE Chinese_PRC_CS_AS =@UserName
	If @Pwd Is Null
		select @Status = 0 --0：帐号不存在
	Else If @Pwd<>@UserPwd
		select @Status = 1 --1：密码错误
	Else If @Enable=0
		select @Status = 2 --2：帐号被锁定
	Else
	Begin	
		select @Status = -1 --2：帐号被锁定
		Update SysAdmin Set LoginTimes=LoginTimes+1,LastLoginTime=getdate() Where Name=@UserName
		Select top 1 * from SysAdmin where Name=@UserName
	End
	
Set Nocount Off
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddColumn]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[AddColumn]
(
	@UserModelId int,
	@Title nvarchar(200),
	@FieldName varchar(50),
	@FieldTypeId int
)
AS

	declare @sql varchar(800);
	declare @FieldDBType varchar(20);
	declare @TableName varchar(50);
	
	select @sql = '''';
	select @FieldDBType = '''';
	select @TableName = '''';
			
	select @FieldDBType = DBType from UserModelFieldType where Id = @FieldTypeId;
	select @TableName = TableName from UserModel where Id = @UserModelId;
		
	select @sql = ''ALTER TABLE ''+@TableName+'' add ''+@FieldName+'' ''+@FieldDBType;	
	print(@sql);	
	EXEC(@sql);	
	
	INSERT INTO [UserModelField]
           ([UserModelId]
           ,[FieldName]
           ,[Title]
           ,[FieldTypeId]
           ,[Sort])
     VALUES
           (@UserModelId
           ,@FieldName
           ,@Title
           ,@FieldTypeId
           ,0)
           
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllNodeField]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllNodeField]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllNodeField]
	@NodeId int
AS
Declare @Fields varchar(200);
select @Fields = ''[Id],[NodeId],[ParentId],[Sort],[CreateTime],[UpdateTime]'';
select @Fields =  @Fields + '',['' + MarkName + '']'' from datamark;
select @Fields = @Fields+'',[''+FieldName+'']'' from UserModelField inner join
NodeUserModelField on NodeUserModelField.UserModelFieldId = UserModelField.Id
where NodeId=@NodeId
select @Fields as Fields
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DelColumn]    Script Date: 12/18/2013 14:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DelColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DelColumn]
(
	@Id int
)
AS
	declare @sql varchar(100);
	declare @TableName varchar(50);
	declare @FieldName varchar(50);
	
	select @TableName ='''';
	select @FieldName ='''';
	
	select @TableName = UserModel.TableName,@FieldName = UserModelField.FieldName from UserModel inner join UserModelField on UserModelField.UserModelId = UserModel.Id
	where UserModelField.Id=@Id;
		
	select @sql = ''alter table [''+@TableName+''] drop column [''+@FieldName+'']'';	
	print(@sql);
	EXEC(@sql);
	
	delete FROM UserModelField where Id = @Id;
	' 
END
GO
/****** Object:  Default [DF_Node_PageType]    Script Date: 12/18/2013 14:50:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Node_PageType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Node]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Node_PageType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Node] ADD  CONSTRAINT [DF_Node_PageType]  DEFAULT ((0)) FOR [PageType]
END
End
GO
/****** Object:  Default [DF_SysNodeUserModelField_ShowInList]    Script Date: 12/18/2013 14:50:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SysNodeUserModelField_ShowInList]') AND parent_object_id = OBJECT_ID(N'[dbo].[NodeUserModelField]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SysNodeUserModelField_ShowInList]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NodeUserModelField] ADD  CONSTRAINT [DF_SysNodeUserModelField_ShowInList]  DEFAULT ((1)) FOR [ShowInList]
END
End
GO
/****** Object:  Default [DF_SysNodeUserModelField_ListWidth]    Script Date: 12/18/2013 14:50:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SysNodeUserModelField_ListWidth]') AND parent_object_id = OBJECT_ID(N'[dbo].[NodeUserModelField]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SysNodeUserModelField_ListWidth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NodeUserModelField] ADD  CONSTRAINT [DF_SysNodeUserModelField_ListWidth]  DEFAULT ((100)) FOR [ListWidth]
END
End
GO
/****** Object:  Default [DF_NodeUserModelField_Sort]    Script Date: 12/18/2013 14:50:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_NodeUserModelField_Sort]') AND parent_object_id = OBJECT_ID(N'[dbo].[NodeUserModelField]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_NodeUserModelField_Sort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NodeUserModelField] ADD  CONSTRAINT [DF_NodeUserModelField_Sort]  DEFAULT ((0)) FOR [Sort]
END
End
GO
/****** Object:  Default [DF_Templates_CreateTime]    Script Date: 12/18/2013 14:50:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Templates_CreateTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeTemplates]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Templates_CreateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeTemplates] ADD  CONSTRAINT [DF_Templates_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
END
End
GO
/****** Object:  Default [DF_Templates_UpdateTime]    Script Date: 12/18/2013 14:50:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Templates_UpdateTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeTemplates]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Templates_UpdateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeTemplates] ADD  CONSTRAINT [DF_Templates_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
END
End
GO
