# Título Proyecto

## Miembros del grupo L5-AM-4 

1. Rodríguez Puente, Carmen
2. Alfonso Ramos, Juan
3. Pacheco Espejo, Carlos
4. Martín Morano, Jesús

## 1. Introducción al problema

- Una empresa de clínicas veterinarias, atiende a miles de clientes en diferentes clínicas al mes, tiene dificultades para la gestión de los datos de los usuarios y empleados debido a que todo este proceso es realizado en papel y no pueden compartir estos mismos entre las diferentes clínicas, lo cual genera problema en el tratamiento de distintos animales si sus dueños se mudan o acuden a un tratamiento en alguna clínica distinta a la habitual por cualquier motivo. Además, llevar las cuentas de los productos totales vendidos y llevar un registro sobre las diferentes muestras que son enviadas a los diferentes laboratorios y sus resultados es un problema que está generando muchos gastos de gestión.



Con la introducción de la base de datos, buscamos agilizar el proceso de búsqueda de datos puesto que esto facilitaría en una amplia medida la eficiencia a la hora de trabajar con distintos clientes al mismo tiempo. A su vez pretendemos reducir los gastos de gestión de las resoluciones de pruebas de los laboratorios al mismo tiempo que guardamos un historial que contenga toda la información del cliente y sus mascotas.


## 2. Glosario de términos

- Términos específicos del dominio del problema, ordenados alfabéticamente. Se valorará la presencia de información multimedia.

## 3. Visión general del sistema

### 3.1. Requisitos generales

#### R.G.01. Gestionar las resoluciones de las muestra
  Como gestor de muestras de las clínicas, quiero llevar un registro de las pruebas resueltas, con sus respectivas fechas de emisión y resolución,de cada mascota perteneciente a un cliente.
  
#### R.G.02. Gestionar los trabajadores de cada clínica
  Como Director de la empresa, quiero poder llevar el recuento de que trabajadores forman parte de qué clínica, así como poder ver qué tiempo lleva trabajando y su salario.
  
#### R.G.03. Gestionar horarios laborales
  Como gerente de las diferentes clínicas, quiero poder hacer un horario de mis trabajadores y posibles veterinarios de guardia, para que las clínicas siempre estén bien atendidas.

#### R.G.04. Gestión de datos del cliente
  Como recepcionista de la clínica, quiero poder acceder a los datos de los clientes rápidamente, para mejorar la eficiencia de la clínica.

#### R.G.05. Gestionar las visitas a otras clínicas
  Como cliente, quiero que la clínica tenga la información de mi mascota aunque yo haya ido anteriormente a otra clínica del mismo grupo, para que traten a mi mascota con toda la información posible.

### 3.2. Usuarios del sistema

## 4. Catálogo de requisitos

### 4.1. Requisitos funcionales

#### R.F.01. Título requisito funcional

Como [tipo de usuario]
quiero [servicio]
para [razón]

**Prueba de aceptación**
- Descripción de la primera comprobación a realizar
- Descripción de la segunda comprobación a realizar
- Se debe aplicar la regla de negocio R.N.XX.
- ...

#### 4.1.1. Requisitos de información

##### R.I.01. Título requisito de información

Como [tipo de usuario]
quiero [servicio]
para [razón]

**Prueba de aceptación**
- Descripción de la primera comprobación a realizar
- Descripción de la segunda comprobación a realizar
- ...

#### 4.1.2. Reglas de negocio

##### R.N.01. Título regla negocio

Descripción de la regla de negocio.

### 4.2. Mapa de historias de usuario (opcional)

### 4.3. Requisitos no funcionales (opcional)

**R.N.F. 01. Título requisito no funcional**
Como [tipo de usuario]
quiero [servicio]
para [razón]

-- fin entregable 1 --

## 5. Modelo conceptual

### 5.1. Diagramas de clases UML

- con restricciones.

### 5.2. Escenarios de prueba

- con descripción textual y diagrama de objetos UML.

## 6. Matrices de trazabilidad

- Matriz de trazabilidad entre los elementos del modelo conceptual y los requisitos.

|       | EntidadX   | AsociaciónX  | RestricciónX  | Entidad2 ...   | 
|:------|:-----------|:-----------|:-----------|:-----------|
| RI-1  | X          | X          | X          | X          |
| RI-2  |            | X          |            | X          |
| RF-1  |            | X          |            | X          |
| RF-2  | X          |            | X          | X          |
| RN-1  |            | X          |            |            |
| RN-2  | X          | X          | X          |            |
| ...   |            |            |            |            |

-- fin entregable 2 --

## 7. Modelo relacional en 3FN

- Relaciones obtenidas al aplicar la transformación del modelo conceptual.

### 7.1.  Justificación de la estrategia de transformación de jerarquías

- si se identificaron jerarquías en el MC.


### 8. Matriz de trazabilidad MC/SQL (opcional):

- Restricciones sobre el MC / Elementos del modelo tecnológico (SQL) (Triggers, checks, etc.)
- Incluir Reglas de negocio — Constraints/Triggers en las matrices de trazabilidad para el entregable 3

|       | EntidadX   | AsociaciónX  | RestricciónX  | Entidad2 ...   | 
|:-------|:-------|:-------|:-------|:-------|
| TABLA-1 |        |        |        |        |
| TABLA-2 |        |        |        |        |
| TABLA-3 |        |        |        |        |
| TABLA-4 |        |        |        |        |
| TRIG-1 |        |        |        |        |
| TRIG-2 | X      | X      |        | X      |
| TRIG-3 |        | X      |        | X      |
| TRIG-4 |        |        | X      |        |
| CONST-1 |        |        |        |        |
| CONST-2 | X      | X      |        | X      |
| CONST-3 |        | X      |        | X      |
| CONST-4 |        |        | X      |        |

Se consideran todo tipo de constraints declarativas (aquellas definidas durante el CREATE TABLE).
-- fin entregable 3 --

## Referencias


