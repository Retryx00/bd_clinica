-- SINTAXIS COMPLETA (Tabla Paciente)
INSERT INTO Paciente (DNI, NombreCompleto, FechaNacimiento, Telefono, Sexo)
VALUES ('16635498', 'López Montoya, Percy', '1990-07-06', '979551141', 'M')

INSERT INTO Paciente (DNI, NombreCompleto, FechaNacimiento, Telefono, Sexo)
VALUES ('16587414', 'Ramírez Soto, Ana', '1985-11-20', '975412025', 'F')

-- SINTAXIS ABREVIADA (Tabla Paciente)
INSERT INTO Paciente VALUES ('16698498', 'Manuel Salazar', '1978-02-21', '979061141', 'M')


-- SINTAXIS COMPLETA (Tabla Doctor)
INSERT INTO Doctor (NumeroCMP, DNI, NombreCompleto, Telefono, Especialidad)
VALUES ('019939', '98837488', 'Paul Roman', '996765234', 'Cirujano')

INSERT INTO Doctor (NumeroCMP, DNI, NombreCompleto, Telefono, Especialidad)
VALUES ('017888', '98837499', 'Carla Mendoza', '987654321', 'Pediatra')

-- SINTAXIS ABREVIADA (Tabla Doctor)
INSERT INTO Doctor VALUES ('018939', '98837568', 'Roberto Quinche', '996765534', 'Traumatologo')


-- SINTAXIS COMPLETA (Tabla HistoriaClinica)
INSERT INTO HistoriaClinica (Numero, FechaRegistro, Vigente, DNI)
VALUES ('HC0001', '2026-09-24', 1, '16635498')

INSERT INTO HistoriaClinica (Numero, FechaRegistro, Vigente, DNI)
VALUES ('HC0003', '2026-09-22', 1, '16587414')

-- SINTAXIS ABREVIADA (Tabla HistoriaClinica)
INSERT INTO HistoriaClinica VALUES ('HC0002', '2026-09-20', 1, '16698498')


-- SINTAXIS COMPLETA (Tabla Cita)
INSERT INTO Cita (FechaHora, Costo, Comentarios, DNI, NumeroCMP)
VALUES ('2026-09-25 10:30:00', 150.00, 'Consulta de control', '16635498', '019939')

INSERT INTO Cita (FechaHora, Costo, Comentarios, DNI, NumeroCMP)
VALUES ('2026-09-26 15:00:00', 180.00, 'Chequeo general', '16587414', '017888')

-- SINTAXIS ABREVIADA (Tabla Cita)
INSERT INTO Cita VALUES (DEFAULT, 200.50, 'Primera consulta', '16698498', '018939')
