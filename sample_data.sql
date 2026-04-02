INSERT INTO kommune VALUES
(1, 'Notodden', 'Telemark'),
(2, 'Tinn', 'Telemark'),
(3, 'Kongsberg', 'Buskerud');

INSERT INTO dam VALUES
(101, 'Tinnsjødammen', 'Betongdam', 1912, 2, 'Aktiv'),
(102, 'Heddalsdammen', 'Steinfyllingsdam', 1938, 1, 'Aktiv'),
(103, 'Numedalsdammen', 'Jorddam', 1956, 3, 'Ukjent'),
(104, 'Gamle Fossdam', NULL, NULL, 1, 'Nedlagt');

INSERT INTO kulturminne VALUES
(1, 101, 'Registrert', 'Tidlig kraftutbyggingsanlegg med kulturhistorisk verdi', 'NVE', '2025-06-15'),
(2, 102, 'Vurderes', 'Mulig lokalhistorisk verdi', 'NVE', '2025-06-18'),
(3, 104, 'Registrert', 'Eldre damanlegg med bevaringsinteresse', 'NVE', '2025-06-20');

INSERT INTO metadata_registrering VALUES
(1, 101, 'Arkiv', 'Ali Hirsi', '2026-03-10', 'Høy', 'Komplett datasett'),
(2, 102, 'Kommunal rapport', 'Ali Hirsi', '2026-03-11', 'Middels', 'Mangler eksakt byggeårsdokumentasjon'),
(3, 103, 'Eldre database', 'Ali Hirsi', '2026-03-11', 'Lav', 'Mangler damtype'),
(4, 104, 'Papirarkiv', 'Ali Hirsi', '2026-03-12', 'Middels', 'Byggeår ikke bekreftet');