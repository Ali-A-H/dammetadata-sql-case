CREATE DATABASE mini_prosjekt;
CREATE TABLE kommune (
    kommune_id INT PRIMARY KEY,
    navn VARCHAR(100) NOT NULL,
    fylke VARCHAR(100) NOT NULL
);
CREATE TABLE dam (
    dam_id INT PRIMARY KEY,
    navn VARCHAR(100) NOT NULL,
    damtype VARCHAR(50),
    byggeaar INT,
    kommune_id INT,
    status VARCHAR(50),
    FOREIGN KEY (kommune_id) REFERENCES kommune(kommune_id)
);
CREATE TABLE kulturminne (
    kulturminne_id INT PRIMARY KEY,
    dam_id INT,
    vernestatus VARCHAR(50),
    beskrivelse VARCHAR(255),
    vurdert_av VARCHAR(100),
    vurderingsdato DATE,
    FOREIGN KEY (dam_id) REFERENCES dam(dam_id)
);
CREATE TABLE metadata_registrering (
    metadata_id INT PRIMARY KEY,
    dam_id INT,
    datakilde VARCHAR(100),
    registrert_av VARCHAR(100),
    registreringsdato DATE,
    kvalitet VARCHAR(50),
    kommentar VARCHAR(255),
    FOREIGN KEY (dam_id) REFERENCES dam(dam_id)
);