USE [18ip48]
GO
/****** Object:  Table [dbo].[Garant]    Script Date: 30.11.2021 8:18:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Garant](
	[id гарантии] [int] NOT NULL,
	[Дата выдачи] [nvarchar](50) NULL,
	[Срок гарантии] [nvarchar](50) NULL,
 CONSTRAINT [PK_Garant] PRIMARY KEY CLUSTERED 
(
	[id гарантии] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategory]    Script Date: 30.11.2021 8:18:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategory](
	[id категроии] [int] NOT NULL,
	[Наименование категории] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kategory] PRIMARY KEY CLUSTERED 
(
	[id категроии] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klients]    Script Date: 30.11.2021 8:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klients](
	[id клиента] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[Телефон] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Klients] PRIMARY KEY CLUSTERED 
(
	[id клиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kompetenciy]    Script Date: 30.11.2021 8:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kompetenciy](
	[id компетенции] [int] NOT NULL,
	[Наименование компитенции] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_kompetenciy] PRIMARY KEY CLUSTERED 
(
	[id компетенции] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log in]    Script Date: 30.11.2021 8:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log in](
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master/kompet]    Script Date: 30.11.2021 8:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master/kompet](
	[id мастера/компетенции] [int] NOT NULL,
	[id компетенции] [int] NOT NULL,
	[id мастера] [int] NULL,
 CONSTRAINT [PK_Master/kompet] PRIMARY KEY CLUSTERED 
(
	[id мастера/компетенции] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mastera]    Script Date: 30.11.2021 8:18:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mastera](
	[id мастера] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[Телефон] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Mastera] PRIMARY KEY CLUSTERED 
(
	[id мастера] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statys]    Script Date: 30.11.2021 8:18:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statys](
	[id статуса] [int] NOT NULL,
	[Наименование статуса] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Statys] PRIMARY KEY CLUSTERED 
(
	[id статуса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tehnika]    Script Date: 30.11.2021 8:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tehnika](
	[id техники] [int] NOT NULL,
	[Модель техники] [nvarchar](50) NOT NULL,
	[id категории поломки] [int] NOT NULL,
	[Описание поломки] [nvarchar](250) NULL,
	[Рекомендции по починке] [nvarchar](250) NULL,
 CONSTRAINT [PK_Tehnika] PRIMARY KEY CLUSTERED 
(
	[id техники] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uslugi]    Script Date: 30.11.2021 8:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uslugi](
	[id услуги] [int] NOT NULL,
	[Наименование услуги] [nvarchar](50) NOT NULL,
	[Предварительная стоимость] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Uslugi] PRIMARY KEY CLUSTERED 
(
	[id услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yslygi/zakaz]    Script Date: 30.11.2021 8:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yslygi/zakaz](
	[id услуги/заказы] [int] NOT NULL,
	[id услуг] [int] NOT NULL,
	[id заказа] [int] NOT NULL,
 CONSTRAINT [PK_yslygi/zakaz] PRIMARY KEY CLUSTERED 
(
	[id услуги/заказы] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakazy]    Script Date: 30.11.2021 8:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazy](
	[id заказа] [int] NOT NULL,
	[id клиента] [int] NOT NULL,
	[id мастера] [int] NOT NULL,
	[id техники] [int] NOT NULL,
	[Дата обращения] [date] NOT NULL,
	[Дата завершения] [date] NOT NULL,
	[id статуса] [int] NOT NULL,
	[Стоимость] [nvarchar](50) NOT NULL,
	[Гарантия] [int] NOT NULL,
 CONSTRAINT [PK_Zakazy] PRIMARY KEY CLUSTERED 
(
	[id заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Master/kompet]  WITH CHECK ADD  CONSTRAINT [FK_Master/kompet_kompetenciy] FOREIGN KEY([id компетенции])
REFERENCES [dbo].[kompetenciy] ([id компетенции])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Master/kompet] CHECK CONSTRAINT [FK_Master/kompet_kompetenciy]
GO
ALTER TABLE [dbo].[Master/kompet]  WITH CHECK ADD  CONSTRAINT [FK_Master/kompet_Mastera] FOREIGN KEY([id мастера])
REFERENCES [dbo].[Mastera] ([id мастера])
GO
ALTER TABLE [dbo].[Master/kompet] CHECK CONSTRAINT [FK_Master/kompet_Mastera]
GO
ALTER TABLE [dbo].[Tehnika]  WITH CHECK ADD  CONSTRAINT [FK_Tehnika_Kategory1] FOREIGN KEY([id категории поломки])
REFERENCES [dbo].[Kategory] ([id категроии])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tehnika] CHECK CONSTRAINT [FK_Tehnika_Kategory1]
GO
ALTER TABLE [dbo].[yslygi/zakaz]  WITH CHECK ADD  CONSTRAINT [FK_yslygi/zakaz_Uslugi] FOREIGN KEY([id услуг])
REFERENCES [dbo].[Uslugi] ([id услуги])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[yslygi/zakaz] CHECK CONSTRAINT [FK_yslygi/zakaz_Uslugi]
GO
ALTER TABLE [dbo].[yslygi/zakaz]  WITH CHECK ADD  CONSTRAINT [FK_yslygi/zakaz_Zakazy] FOREIGN KEY([id заказа])
REFERENCES [dbo].[Zakazy] ([id заказа])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[yslygi/zakaz] CHECK CONSTRAINT [FK_yslygi/zakaz_Zakazy]
GO
ALTER TABLE [dbo].[Zakazy]  WITH CHECK ADD  CONSTRAINT [FK_Zakazy_Garant] FOREIGN KEY([Гарантия])
REFERENCES [dbo].[Garant] ([id гарантии])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Zakazy] CHECK CONSTRAINT [FK_Zakazy_Garant]
GO
ALTER TABLE [dbo].[Zakazy]  WITH CHECK ADD  CONSTRAINT [FK_Zakazy_Klients] FOREIGN KEY([id клиента])
REFERENCES [dbo].[Klients] ([id клиента])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Zakazy] CHECK CONSTRAINT [FK_Zakazy_Klients]
GO
ALTER TABLE [dbo].[Zakazy]  WITH CHECK ADD  CONSTRAINT [FK_Zakazy_Mastera] FOREIGN KEY([id мастера])
REFERENCES [dbo].[Mastera] ([id мастера])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Zakazy] CHECK CONSTRAINT [FK_Zakazy_Mastera]
GO
ALTER TABLE [dbo].[Zakazy]  WITH CHECK ADD  CONSTRAINT [FK_Zakazy_Statys] FOREIGN KEY([id статуса])
REFERENCES [dbo].[Statys] ([id статуса])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Zakazy] CHECK CONSTRAINT [FK_Zakazy_Statys]
GO
ALTER TABLE [dbo].[Zakazy]  WITH CHECK ADD  CONSTRAINT [FK_Zakazy_Tehnika] FOREIGN KEY([id техники])
REFERENCES [dbo].[Tehnika] ([id техники])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Zakazy] CHECK CONSTRAINT [FK_Zakazy_Tehnika]
GO
