CREATE VIEW dbo.DemoView
AS
    SELECT
        CatalogName = FTC.[name],
        caFTC.IndexSize
    FROM sys.fulltext_catalogs AS FTC
        CROSS APPLY (
            SELECT
                IndexSize = FULLTEXTCATALOGPROPERTY(FTC.[name], 'IndexSize')
        ) AS caFTC
GO