CREATE TABLE IF NOT EXISTS dbo."tlsenforcedroutes_PD_subdom_staging"
(     
     "CustomerId"            INTEGER                                           NOT NULL,
     "partnerdomain"         VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL,
     "subdomain"             VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL,

     CONSTRAINT "PK_tlsenforcedroutes_PD_subdom_staging" PRIMARY KEY 
     (
          "CustomerId", 
          "partnerdomain", 
          "subdomain"
      )     
);
