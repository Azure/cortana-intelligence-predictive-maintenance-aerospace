IF OBJECT_ID('dbo.sp_loadScoreResult', 'P') IS NOT NULL
  DROP PROCEDURE [dbo].[sp_loadScoreResult]
GO

IF TYPE_ID('dbo.PMResultType') IS NOT NULL
  DROP TYPE [dbo].[PMResultType]
GO

IF OBJECT_ID('dbo.PMResult', 'U') IS NOT NULL
  DROP TABLE [dbo].[PMResult]
GO

CREATE TABLE [dbo].[PMResult] (
    [ID]  int   NOT NULL,
    [Cycle]      int     NOT NULL,
    [Rul]  FLOAT (53) NULL,
    CONSTRAINT [PK_PMResult] PRIMARY KEY CLUSTERED ( [ID] ASC, [Cycle] ASC)
);
go

CREATE TYPE [dbo].[PMResultType] 
AS TABLE(
    [ID]  int   NOT NULL,
    [Cycle]      int     NOT NULL,
    [Rul]  FLOAT (53) NULL
);
GO

CREATE PROCEDURE [dbo].[sp_loadScoreResult]
      @PMResult PMResultType READONLY
AS
BEGIN
SET NOCOUNT ON;
MERGE PMResult AS target
  USING (SELECT * from @PMResult) AS source
  ON (target.Id = source.Id and target.Cycle=source.Cycle)
  WHEN MATCHED THEN 
   UPDATE SET Rul= source.Rul
  WHEN NOT MATCHED THEN
   INSERT (Id, Cycle, Rul)
   VALUES (source.Id, source.Cycle, source.Rul);

END;
Go

INSERT INTO [dbo].[PMResult] VALUES
(101, 1, 192.2),(101, 2, 190.6),(101, 3, 195.6),(101, 4, 185.1),
(102, 1, 188.1),(102, 2, 189.2),(103, 1, 193.4),(104, 1, 198.5),
(104, 2, 190.3),(104, 3, 182.5),(105, 1, 181.5),(105, 2, 180.2);
GO
