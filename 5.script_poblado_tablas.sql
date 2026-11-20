INSERT INTO usuarios (dni, fechaNacimiento, nombre, correoElectronico, telefono) VALUES
('39457809F', '1999-09-11', 'Carmen', 'carmen@gmail.com',684654869), 
('98734982G', '1999-02-13', 'Elene', 'elene@gmail.com', 634554869) ,
('48736878F', '1984-08-28', 'Jesús', 'jesus@token.com', 638101004),
('67834289H', '1970-02-28', 'Pepe', 'pepe@director.com', 683829423),
('45628135W', '2002-11-11', 'Carlos', 'carlos@gmail.com', 650065552),
('98732748H', '1999-04-10', 'Juan', 'juan@gmail.com', 987438294);

INSERT INTO veterinarios (veterinarioId, salario) VALUES
(1, 4000.00);

INSERT INTO gestores_pruebas (gestorPruebasId, salario) VALUES
(2, 1435.00);
INSERT INTO gestores_pruebas (gestorPruebasId, salario) VALUES
(3, 535.00);

INSERT INTO director_general(directorGeneralId, salario) VALUES
(4, 1435.00);

INSERT INTO clientes (clienteId, direccionPostal) VALUES
(5, 41008);

INSERT INTO clinicas (nombre, localizacion, directorGeneralId) VALUES
('Clinica JJCC Los Rosales', 'los Rosales', 4);


INSERT INTO recepcionistas (recepcionistaId, salario, clinicaId) VALUES
(6, 1200.00, 1);

INSERT INTO mascotas (numeroMicrochip, especie, fechaNacimiento,nombre,peso,raza,sexo,clienteId) VALUES
(1, 'hipopotamo', '2019-11-17','Tony',150, 'variegatus', 'masculino',5),
(2, 'murcielago', '2019-12-17', 'Kira', 250, 'ectophylla alba', 'femenino', 5);

INSERT INTO citas (fechaCita, duracion, estadoCita, clienteId, veterinarioId, mascotaId, clinicaId) VALUES
('2026-12-13', 30, 'Pendiente', 5,1,2,1),
('2024-11-11', 48, 'Completado', 5,1,1,1);

INSERT INTO pruebas (tipo,estadoPrueba,fechaEmision,fechaResolucion,resultado,gestorPruebasId,veterinarioId,mascotaId) VALUES
('Radiografia','Recibida','2026-11-09','2026-11-11','luxación',2,1,2);

INSERT INTO enfermedades(descripcion, duracion,medicacion,mascotaId) VALUES
('Luxación',24, 'Reposo relativo',2);

INSERT INTO vacunas (nombre,fecha,estadoVacuna,mascotaId) VALUES
('Vacuna rabia', '2024-11-15','Suministrada', 1);
