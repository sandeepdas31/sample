CREATE TABLE IF NOT EXISTS dbo."UpdateBannersFromDisclaimersControl"
(
    "RowId"        SMALLINT     NOT NULL,
    "LastUpdate"   TIMESTAMP(3) NOT NULL,
    CONSTRAINT "PK_UpdateBannersFromDisclaimersControl_cu01" PRIMARY KEY  
    (
        "RowId"
        )
);
