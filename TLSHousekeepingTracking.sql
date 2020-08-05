CREATE TABLE IF NOT EXISTS dbo."TLSHousekeepingTracking"
(           
     "CustomerId"                INTEGER            NOT NULL,
     "DateAdded"                 TIMESTAMP(3)       NOT NULL,
    
    CONSTRAINT "PK_TLSHousekeepingTracking" PRIMARY KEY 
    (
           "CustomerId"
    )
);
