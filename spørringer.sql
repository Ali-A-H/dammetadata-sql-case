-- Denne SQL spørringen viser alle dammer med kommune
SELECT d.navn AS damnavn, d.damtype, d.byggeaar, k.navn AS kommune, d.status
FROM dam d
JOIN kommune k ON d.kommune_id = k.kommune_id;

-- Denne SQL spørringen viser dammer som mangler viktig informasjon
SELECT navn, damtype, byggeaar
FROM dam
WHERE damtype IS NULL OR byggeaar IS NULL;


-- Denne SQL spørrigen viser dammer med kulturminnestatus
SELECT d.navn, km.vernestatus, km.beskrivelse
FROM dam d
JOIN kulturminne km ON d.dam_id = km.dam_id;

-- Denne SQL spørringen viser dammer med lav eller middels datakvalitet
SELECT d.navn, m.kvalitet, m.kommentar
FROM dam d
JOIN metadata_registrering m ON d.dam_id = m.dam_id
WHERE m.kvalitet IN ('Lav', 'Middels');

