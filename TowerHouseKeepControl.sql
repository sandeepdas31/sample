CREATE TABLE IF NOT EXISTS dbo."TowerHouseKeepControl"
(
    "SQLNamePrefix" CHAR(9) NOT NULL,
    "TableName"     sysname NOT NULL,
    "RetentionDays" INTEGER	NOT NULL,

    CONSTRAINT "PK_TowerHouseKeepControl" PRIMARY KEY   
    (
        "SQLNamePrefix",
        "TableName"
    )  
);
