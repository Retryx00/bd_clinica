# 🏥 Base de Datos Clínica

Scripts SQL para la creación, manipulación y consulta de una base de datos de clínica médica en **SQL Server**.

---

## 📋 Descripción

Este repositorio contiene los scripts necesarios para crear y gestionar la base de datos `Clinica`, que modela el funcionamiento básico de una clínica médica. Incluye tablas para **pacientes**, **doctores**, **historias clínicas** y **citas médicas**, con sus respectivas restricciones de integridad (PRIMARY KEY, FOREIGN KEY, CHECK, UNIQUE, DEFAULT).

---

## 🗂️ Estructura del repositorio

| Archivo | Descripción |
| :--- | :--- |
| `CREATE bd_clinica.sql` | Crea la base de datos, tablas y todas las restricciones |
| `INSERT.sql` | Inserciones de prueba (sintaxis completa y abreviada) |
| `UPDATE.sql` | Actualizaciones de datos con condiciones específicas |
| `DELETE.sql` | Eliminaciones de datos con condiciones de filtrado |

---

## 🗃️ Modelo de datos

### Tabla: `Paciente`
| Columna | Tipo | Restricción |
| :--- | :--- | :--- |
| DNI | char(8) | PK, CHECK (8 dígitos) |
| NombreCompleto | varchar(64) | NOT NULL |
| FechaNacimiento | date | NOT NULL |
| Telefono | char(9) | CHECK (9 dígitos) |
| Sexo | char(1) | CHECK ('M' o 'F') |

### Tabla: `Doctor`
| Columna | Tipo | Restricción |
| :--- | :--- | :--- |
| NumeroCMP | char(6) | PK, CHECK (6 dígitos) |
| DNI | char(8) | CHECK (8 dígitos) |
| NombreCompleto | varchar(50) | NOT NULL |
| Telefono | char(9) | CHECK (9 dígitos) |
| Especialidad | varchar(64) | NOT NULL |

### Tabla: `HistoriaClinica`
| Columna | Tipo | Restricción |
| :--- | :--- | :--- |
| Numero | char(4) | PK, CHECK ('HC' + 4 dígitos) |
| FechaRegistro | date | NOT NULL |
| Vigente | bit | NOT NULL |
| DNI | char(8) | FK → Paciente, UNIQUE |

### Tabla: `Cita`
| Columna | Tipo | Restricción |
| :--- | :--- | :--- |
| Numero | int | PK, IDENTITY(1,1) |
| FechaHora | datetime | DEFAULT getdate() |
| Costo | decimal(10,2) | CHECK (>= 0) |
| Comentarios | varchar(200) | NOT NULL |
| DNI | char(8) | FK → Paciente |
| NumeroCMP | char(6) | FK → Doctor |

---

## 🛠️ Tecnologías utilizadas

- **SQL Server** (T-SQL)
- **SQL Server Management Studio (SSMS)**
- **Git** y **GitHub** para control de versiones

---

## 🚀 Cómo usar

1. Abre **SQL Server Management Studio**.
2. Ejecuta los scripts en este orden:
