INSERT INTO usuarios (dni, fechaNacimiento, nombre, correoElectronico, telefono) VALUES
('39457809F', '1999-09-11', 'Carmen', 'carmen@gmail.com',684654869), #VETERINARIO
('98734982G', '1999-02-13', 'Elene', 'elene@gmail.com', 634554869) , #GESTOR DE PRUEBAS
('48736878F', '1984-08-28', 'Jesús', 'jesus@token.com', 638101004), #GESTOR DE PRUEBAS
('67834289H', '1970-02-28', 'Pepe', 'pepe@director.com', 683829423), #DIRECTORGENERAL
('45628135W', '2002-11-11', 'Carlos', 'carlos@gmail.com', 650065552), #CLIENTE
('98732748H', '1999-04-10', 'Juan', 'juan@gmail.com', 987438294) #RECEPCIONISTA
('45612374G', '2001-10-23', 'Begoña', 'ña@gmail.com', 654326165),#CLIENTE
('15642378D', '2006-12-24', 'Maria Dolores', 'mariadoremifa@gmail.com', 657896543), #CLIENTE
('75648912F', '1994-10-30', 'Mar', 'oceano@gmail.com', 678923432),#CLIENTE
('45312687H', '1982-07-08', 'Caye', 'calle@gmail.com', 636374787),#CLIENTE
('32456895J', '1985-04-07', 'Diego', 'diegosniper@gmail.com', 621874637), #VETERINARIO
('93729827K', '2000-09-23', 'Hugo', 'hugo23@gmail.com', 673281789),#CLIENTE
('93674892Y', '1982-12-13', 'Federico', 'lorca@gmail.com', 666666666),#CLIENTE
('83849283J', '1972-12-13', 'Apicultor24', 'apicultor@gmail.com', 645612354),#CLIENTE
('87632781K', '1979-04-23', 'Carla', 'mas@gmail.com', 678234873),
('19287389L', '1969-10-10', 'Pedro', 'sanchez@gmail.com', 626373787),
('78634642A', '1989-05-10', 'Alberto', 'feijoo@gmail.com', 645637987),
('97846789J', '1999-06-30', 'Santiago', 'abascal@gmail.com', 625161828),
('74389827T', '1999-07-20', 'Paco', 'chocolatero@gmail.com', 696850484);

INSERT INTO veterinarios (veterinarioId, salario) VALUES
(1, 4000.00),
(11,3500.00);

INSERT INTO gestores_pruebas (gestorPruebasId, salario) VALUES
(2, 1435.00),
(3, 535.00);

INSERT INTO director_general(directorGeneralId, salario) VALUES
(4, 1435.00);

INSERT INTO clientes (clienteId, direccionPostal) VALUES
(5, 41008),
(7, 41420),
(8, 7151),
(9, 41010),
(10, 41012),
(12, 41022),
(13, 41109),
(14, 41113);

INSERT INTO clinicas (nombre, localizacion, directorGeneralId) VALUES
('Clinica JJCC Fuentes', 'Fuentes de Andalucía', 4),
('Clinica JJCC Pinomontano', 'Pinomontano', 4),
('Clinica JJCC Madrid', 'Madrid', 4),
('Clinica JJCC La Antartida', 'La Antartida', 4),
('Clinica JJCC Tokio', 'Tokio', 4),
('Clinica JJCC Buenos Aires 5º Escalon', 'Buenos Aires', 4);


INSERT INTO recepcionistas (recepcionistaId, salario, clinicaId) VALUES
(6, 1200.00, 1),
(15, 1350.00, 2),
(16, 1450.00, 3),
(17, 1500.00, 4),
(18, 1100.00, 5),
(19, 1000.00, 6);

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
