CREATE TABLE IF NOT EXISTS dbo."UnidentifiedUserBatchStatus"
(
    "UnidentifiedUserBatchStatusId"   INTEGER                                     NOT NULL,
    "Status"                          VARCHAR(25) COLLATE dbo.case_insensitive    NOT NULL,
    CONSTRAINT "PK_UnidentifiedUserBatchStatus" PRIMARY KEY  
    (
        "UnidentifiedUserBatchStatusId"
    )
);