# 🗃️ Prácticas de PL/SQL con la Base de Datos HR

Scripts de PL/SQL para practicar distintos aspectos fundamentales de la programación con procedimientos almacenados en Oracle, usando como base la base de datos de ejemplo **HR (Human Resources)**.

Cada ejercicio incluye:
- ✅ Redacción del problema
- 🔣 Código PL/SQL correspondiente
- 📤 Salida esperada mediante `DBMS_OUTPUT.PUT_LINE`

---

## 📌 Temas abordados

### 1. `SELECT INTO` con variables escalares
Consulta y almacenamiento de datos en variables individuales usando `SELECT INTO`.

### 2. `ROWTYPE`
Uso de registros tipo `ROWTYPE` para almacenar una fila completa de la tabla `EMPLOYEES`.

### 3. `JOIN` entre empleados y sus gerentes
Consulta que muestra el nombre del empleado y su jefe utilizando `JOIN` interno sobre la misma tabla.

### 4. Cursores explícitos con `FETCH`
Uso de cursores para recorrer filas manualmente con `OPEN`, `FETCH`, `EXIT` y `CLOSE`.

### 5. Cursores con `FOR`
Simplificación de la iteración con un cursor usando la sintaxis `FOR IN`.

### 6. Cursores parametrizados
Consulta dinámica filtrando empleados por `job_id`.

### 7. Clasificación por departamentos con `IF...ELSIF...ELSE`
Inserción de empleados en diferentes tablas según su `department_id`.

### 8. Clasificación por departamentos con `CASE`
Misma lógica que el punto anterior, pero usando `CASE` para mayor claridad estructural.

### 9. Inserción por departamento con cursores parametrizados
Uso de un solo cursor parametrizado para insertar empleados en distintas tablas.

### 10. Cursor sobre `USER_TABLES`
Recorrido de la vista `USER_TABLES` para listar tablas del usuario y su tablespace.

### 11. Actualización de salarios por departamento
Actualización de salarios con diferentes porcentajes según el `department_id`, usando `UPDATE` y `SQL%ROWCOUNT`.

### 12. Procedimiento: Mostrar subordinados de un gerente
Procedimiento `psub` que imprime los empleados a cargo de un gerente específico.

### 13. Procedimiento: Mostrar el jefe de un empleado
Procedimiento `pmgr` que imprime el nombre del jefe de un empleado dado.

---

## 🚀 Requisitos

- Oracle Database (se probó en versión 21c)
- Acceso a la base de datos **HR**
- Habilitar la salida de `DBMS_OUTPUT` en tu entorno (ej: SQL Developer, Oracle Live SQL)

---

## 🧾 Créditos
- **Materia:** Bases de Datos II
- **Asesor:** José Saul De Lira Miramontes
- **Alumno:** Jonathan Eduardo Olivas Meixueiro
- **Matricula:** 240694
- **Fecha de entrega:** 05/Junio/2025

