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

![1](https://github.com/user-attachments/assets/c3d922a4-3876-4e75-816a-f2cfd163e6cc)

### 2. `ROWTYPE`
Uso de registros tipo `ROWTYPE` para almacenar una fila completa de la tabla `EMPLOYEES`.

![2](https://github.com/user-attachments/assets/3430f0fb-a54d-4ccc-82b3-d535d845f8b5)


### 3. `JOIN` entre empleados y sus gerentes
Consulta que muestra el nombre del empleado y su jefe utilizando `JOIN` interno sobre la misma tabla.

![3](https://github.com/user-attachments/assets/5019f716-d59f-4c33-90e1-afe952d65a34)

### 4. Cursores explícitos con `FETCH`
Uso de cursores para recorrer filas manualmente con `OPEN`, `FETCH`, `EXIT` y `CLOSE`.

![4](https://github.com/user-attachments/assets/b2464146-a6b6-4d84-a78e-76324e60fffb)


### 5. Cursores con `FOR`
Simplificación de la iteración con un cursor usando la sintaxis `FOR IN`.

![5](https://github.com/user-attachments/assets/204c5f5a-572e-4721-904d-1953e19994df)


### 6. Cursores parametrizados
Consulta dinámica filtrando empleados por `job_id`.

![6](https://github.com/user-attachments/assets/4dd5a054-d13a-477b-bec0-c2f3bbffc85f)


### 7. Clasificación por departamentos con `IF...ELSIF...ELSE`
Inserción de empleados en diferentes tablas según su `department_id`.

![7](https://github.com/user-attachments/assets/73216639-8cdc-41e8-9b72-ee313bf9e144)


### 8. Clasificación por departamentos con `CASE`
Misma lógica que el punto anterior, pero usando `CASE` para mayor claridad estructural.

![8](https://github.com/user-attachments/assets/5836ed52-0e9e-4c8c-b646-c1ad1d59f121)

### 9. Inserción por departamento con cursores parametrizados
Uso de un solo cursor parametrizado para insertar empleados en distintas tablas.

![9](https://github.com/user-attachments/assets/3db201c8-60a0-4910-be97-1664cd82ae05)


### 10. Cursor sobre `USER_TABLES`
Recorrido de la vista `USER_TABLES` para listar tablas del usuario y su tablespace.

![10](https://github.com/user-attachments/assets/8da5f3e2-bde3-4550-9515-2a173daa7eac)

### 11. Actualización de salarios por departamento
Actualización de salarios con diferentes porcentajes según el `department_id`, usando `UPDATE` y `SQL%ROWCOUNT`.

![11](https://github.com/user-attachments/assets/6cbbb2db-1c10-4225-aaf6-6afca9ed7ff9)

### 12. Procedimiento: Mostrar subordinados de un gerente
Procedimiento `psub` que imprime los empleados a cargo de un gerente específico.

![12](https://github.com/user-attachments/assets/1cec73c6-d5fc-4021-a543-6408c5fe99b2)

### 13. Procedimiento: Mostrar el jefe de un empleado
Procedimiento `pmgr` que imprime el nombre del jefe de un empleado dado.

![13](https://github.com/user-attachments/assets/3351ddb8-f88c-4607-acb5-94e654d09baa)

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

