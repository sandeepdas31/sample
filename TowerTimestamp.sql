CREATE TABLE IF NOT EXISTS dbo."TowerTimestamp"
(     
    "TowerId"               INTEGER     NOT NULL,
    "LockingTimestamp"      TIMESTAMP   NOT NULL,
    
    CONSTRAINT "PK_TowerTimestamp" PRIMARY KEY   
    (
        "TowerId"
    )  
);