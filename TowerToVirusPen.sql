    CREATE TABLE IF NOT EXISTS dbo."TowerToVirusPen"
    (
        "TowerId"                 INTEGER                                      NOT NULL,
        "PenNumber"               INTEGER                                      NOT NULL,
        "DateCreated"             TIMESTAMP(3)                                 NOT NULL     CONSTRAINT "DF_TowerToVirusPen_DateCreated"             DEFAULT LOCALTIMESTAMP,
        "DateAmended"             TIMESTAMP(3)                                 NOT NULL     CONSTRAINT "DF_TowerToVirusPen_DateAmended"             DEFAULT LOCALTIMESTAMP,
        "WhoAmended_nt_username"  VARCHAR(255) COLLATE dbo.case_insensitive    NOT NULL     CONSTRAINT "DF_TowerToVirusPen_WhoAmended_nt_username"  DEFAULT CURRENT_USER,
        "WhoAmended_hostname"     VARCHAR(255) COLLATE dbo.case_insensitive    NOT NULL     CONSTRAINT "DF_TowerToVirusPen_WhoAmended_hostname"     DEFAULT dbo."HostName"()
    );
