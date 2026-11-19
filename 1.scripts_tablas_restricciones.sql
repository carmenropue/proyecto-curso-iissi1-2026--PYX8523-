CREATE TABLE Usuarios (
    usuarioId INT PRIMARY KEY AUTO_INCREMENT,
    dni VARCHAR(9) UNIQUE NOT NULL,
    fechaNacimiento DATE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    correoElectronico VARCHAR(100),
    telefono VARCHAR(9) NOT NULL
);
CREATE TABLE Clientes (
    clienteId INT PRIMARY KEY,
    direccionPostal VARCHAR(100),
    FOREIGN KEY (clienteId) REFERENCES Usuarios(usuarioId)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE Gestores_Pruebas (
    gestorPruebasId INT PRIMARY KEY,
    salario DECIMAL(10, 2) NOT NULL CHECK (salario >= 0),
    FOREIGN KEY (gestorPruebasId) REFERENCES Usuarios(usuarioId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Veterinarios (
    veterinarioId INT PRIMARY KEY,
    salario DECIMAL(10, 2) NOT NULL CHECK (salario >= 0),
    FOREIGN KEY (veterinarioId) REFERENCES Usuarios(usuarioId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Director_General (
    directorGeneralId INT PRIMARY KEY,
    salario DECIMAL(10, 2) NOT NULL CHECK (salario >= 0),
    FOREIGN KEY (directorGeneralId) REFERENCES Usuarios(usuarioId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Clinicas (
    clinicaId INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) UNIQUE NOT NULL,
    localizacion VARCHAR(100) NOT NULL,
    directorGeneralId INT,
    FOREIGN KEY (directorGeneralId) REFERENCES Director_General(directorGeneralId)
        ON DELETE SET NULL 
        ON UPDATE CASCADE
);


CREATE TABLE Recepcionistas (
    recepcionistaId INT PRIMARY KEY,
    salario DECIMAL(10, 2) NOT NULL CHECK (salario >= 0),
    clinicaId INT NOT NULL,
    FOREIGN KEY (recepcionistaId) REFERENCES Usuarios(usuarioId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (clinicaId) REFERENCES Clinicas(clinicaId)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE Mascotas (
    mascotaId INT PRIMARY KEY AUTO_INCREMENT,
    numeroMicrochip VARCHAR(15) UNIQUE NOT NULL,
    especie VARCHAR(100),
    fechaNacimiento DATE,
    nombre VARCHAR(50) NOT NULL,
    peso DECIMAL(5, 2) NOT NULL CHECK (peso > 0),
    raza VARCHAR(50),
    sexo VARCHAR(15) NOT NULL,
    clienteId INT NOT NULL,
    FOREIGN KEY (clienteId) REFERENCES Clientes(clienteId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Pruebas (
    pruebaId INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    estadoPrueba ENUM('Recibida', 'Procesando', 'Enviada') NOT NULL DEFAULT 'Recibida',
    fechaEmision DATE NOT NULL,
    fechaResolucion DATE,
    resultado VARCHAR(100) DEFAULT 'Por saber',
    gestorPruebasId INT,
    veterinarioId INT NOT NULL,
    mascotaId INT NOT NULL,
    FOREIGN KEY (gestorPruebasId) REFERENCES Gestores_Pruebas(gestorPruebasId)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (veterinarioId) REFERENCES Veterinarios(veterinarioId)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (mascotaId) REFERENCES Mascotas(mascotaId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Enfermedades (
    enfermedadId INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(200) NOT NULL,
    duracion INT NOT NULL CHECK (duracion > 0),
    medicacion VARCHAR(100) NOT NULL,
    mascotaId INT NOT NULL,
    UNIQUE (mascotaId, descripcion),
    FOREIGN KEY (mascotaId) REFERENCES Mascotas(mascotaId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Vacunas (
    vacunaId INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    estadoVacuna ENUM('Pendiente', 'Suministrada') NOT NULL DEFAULT 'Pendiente',
    mascotaId INT NOT NULL,
    FOREIGN KEY (mascotaId) REFERENCES Mascotas(mascotaId)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE Citas (
    citaId INT PRIMARY KEY AUTO_INCREMENT,
    fechaCita DATE NOT NULL,
    duracion INT NOT NULL CHECK (duracion > 0),
    estadoCita ENUM('Pendiente','Completado') NOT NULL DEFAULT 'Pendiente',
    clienteId INT NOT NULL,
    veterinarioId INT NOT NULL,
    mascotaId INT NOT NULL,
    clinicaId INT NOT NULL,
    FOREIGN KEY (clienteId) REFERENCES Clientes(clienteId)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (veterinarioId) REFERENCES Veterinarios(veterinarioId)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (mascotaId) REFERENCES Mascotas(mascotaId)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (clinicaId) REFERENCES Clinicas(clinicaId)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE VeterinariosClinicas (
    veterinarioClinicaId INT PRIMARY KEY AUTO_INCREMENT,
    veterinarioId INT NOT NULL,
    clinicaId INT NOT NULL,
    UNIQUE (veterinarioId, clinicaId),
    FOREIGN KEY (veterinarioId) REFERENCES Veterinarios(veterinarioId)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (clinicaId) REFERENCES Clinicas(clinicaId)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
