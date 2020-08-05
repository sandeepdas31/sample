CREATE TABLE IF NOT EXISTS dbo."tlsenforcedroutes_SC_Staging" 
(      
      "configdomain"        VARCHAR(255) COLLATE dbo.case_insensitive            NOT NULL, 
      "domain"              VARCHAR(255) COLLATE dbo.case_insensitive            NOT NULL, 
      "TLSToMTA"            SMALLINT                                                 NULL, 
      "TLSFromMTA"          SMALLINT                                                 NULL,

      CONSTRAINT "PK_tlsenforcedroutes_SC_Staging" PRIMARY KEY 
      (
          "configdomain",
           "domain"
      )
);
