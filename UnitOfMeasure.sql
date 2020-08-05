CREATE TABLE IF NOT EXISTS dbo."UnitOfMeasure"
(    
    "UnitOfMeasureId"       INTEGER                                        NOT NULL,
    "UOMDescription"        VARCHAR(50) COLLATE dbo.case_insensitive       NOT NULL,
    
    CONSTRAINT "PK_UnitOfMeasure" PRIMARY KEY  
    (
        "UnitOfMeasureId"
        )
);
