USE [Clip-DB-Test]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[obtenerLogin]
	@usuario varchar(50),@password varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [id],
		   [nombre_usuario],
		   [password]
    FROM [dbo].[cliente]
	WHERE nombre_usuario=@usuario AND password=@password;

END
GO