CREATE OR REPLACE VIEW Fide_Facturas_Pendientes_v AS
SELECT 
    F.ID_Factura,
    C.Nombre_Cliente || ' ' || C.Primer_Apellido_Cliente AS Cliente,
    F.Fecha_Emision,
    F.Total_Factura,
    F.Metodo_Pago
FROM FIDE_HeaderFactura_TB F
JOIN FIDE_Clientes_TB C ON F.ID_Cliente_FK = C.ID_Cliente
WHERE F.ID_Estado_FK = 2;


SELECT * FROM Fide_Facturas_Pendientes_v;

CREATE OR REPLACE VIEW Fide_Clientes_Mayores_Compradores_v AS
SELECT 
    C.ID_Cliente,
    C.Nombre_Cliente || ' ' || C.Primer_Apellido_Cliente AS Cliente,
    SUM(H.Total_Compra) AS Total_Gastado
FROM FIDE_Clientes_TB C
JOIN FIDE_HistorialCompras_TB H ON C.ID_Cliente = H.ID_Cliente_FK
GROUP BY C.ID_Cliente, C.Nombre_Cliente, C.Primer_Apellido_Cliente
ORDER BY Total_Gastado DESC;

/

SELECT * FROM Fide_Clientes_Mayores_Compradores_v;

/

CREATE OR REPLACE VIEW Fide_Productos_Mas_Vendidos_v AS
SELECT 
    P.ID_Producto,
    P.Nombre_Producto,
    SUM(D.Cantidad) AS Cantidad_Vendida,
    P.Precio_Unitario
FROM FIDE_Producto_TB P
JOIN FIDE_DetalleFactura_TB D ON P.ID_Producto = D.ID_Producto_FK
GROUP BY P.ID_Producto, P.Nombre_Producto, P.Precio_Unitario
ORDER BY Cantidad_Vendida DESC;

/

SELECT * FROM Fide_Productos_Mas_Vendidos_v;

/

CREATE OR REPLACE VIEW Fide_Proveedores_Con_Pedidos_Pendientes_v AS
SELECT 
    P.ID_Proveedor,
    P.Nombre_Empresa,
    PP.ID_PedidoProveedor,
    PP.Fecha_Pedido,
    PP.Fecha_Entrega
FROM FIDE_Proveedores_TB P
JOIN Fide_PedidoProveedor_TB PP ON P.ID_Proveedor = PP.ID_Proveedor_FK
WHERE PP.ID_Estado_FK = 2; 

/


SELECT * FROM Fide_Proveedores_Con_Pedidos_Pendientes_v;

/

CREATE OR REPLACE VIEW Fide_Productos_Con_Bajo_Stock_v AS
SELECT 
    P.ID_Producto,
    P.Nombre_Producto,
    I.Stock
FROM FIDE_Producto_TB P
JOIN FIDE_Inventario_TB I ON P.ID_Producto = I.ID_Producto_FK
WHERE I.Stock < 10
ORDER BY I.Stock ASC;

/


SELECT * FROM Fide_Productos_Con_Bajo_Stock_v;

CREATE OR REPLACE VIEW Fide_ColaboradoresActivos_V AS
SELECT
    C.NOMBRE_COLABORADOR,
    C.PRIMER_APELLIDO_COLABORADOR,
    C.SEGUNDO_APELLIDO_COLABORADOR,
    C.CORREO_COLABORADOR,
    E.DESCRIPCION as estado
FROM
    FIDE_Colaboradores_TB C
JOIN
    FIDE_Estado_TB E ON C.ID_ESTADO_FK = E.ID_ESTADO
WHERE
    C.ID_ESTADO_FK != 3;

SELECT * FROM Fide_ColaboradoresActivos_V;


CREATE OR REPLACE VIEW Fide_ColaboradoresInactivos_V AS
SELECT
    C.NOMBRE_COLABORADOR,
    C.PRIMER_APELLIDO_COLABORADOR,
    C.SEGUNDO_APELLIDO_COLABORADOR,
    C.CORREO_COLABORADOR,
    E.DESCRIPCION as estado
FROM
    FIDE_Colaboradores_TB C
JOIN
    FIDE_Estado_TB E ON C.ID_ESTADO_FK = E.ID_ESTADO
WHERE
    C.ID_ESTADO_FK = 3;
    
SELECT * FROM Fide_ColaboradoresInactivos_V;

CREATE OR REPLACE VIEW Fide_ProveedoresActivos_V AS
SELECT
    P.NOMBRE_EMPRESA,
    P.CORREO_EMPRESA,
    E.DESCRIPCION as Estado
    
FROM
    FIDE_Proveedores_TB P
JOIN
    FIDE_Estado_TB E ON P.ID_ESTADO_FK = E.ID_ESTADO
WHERE
    P.ID_ESTADO_FK != 3;

Select * from Fide_ProveedoresActivos_V;

CREATE OR REPLACE VIEW Fide_ProveedoresInactivos_V AS
SELECT
    P.NOMBRE_EMPRESA,
    P.CORREO_EMPRESA,
    E.DESCRIPCION as Estado
    
FROM
    FIDE_Proveedores_TB P
JOIN
    FIDE_Estado_TB E ON P.ID_ESTADO_FK = E.ID_ESTADO
WHERE
    P.ID_ESTADO_FK = 3;

Select * from Fide_ProveedoresInactivos_V;

CREATE OR REPLACE VIEW Fide_ClientesActivos_V AS
SELECT
    C.NOMBRE_CLIENTE,
    C.PRIMER_APELLIDO_CLIENTE,
    C.SEGUNDO_APELLIDO_CLIENTE,
    C.CORREO_CLIENTE,
    E.DESCRIPCION as estado
FROM
    FIDE_CLIENTES_TB C
JOIN
    FIDE_Estado_TB E ON C.ID_ESTADO_FK = E.ID_ESTADO
WHERE
    C.ID_ESTADO_FK != 3;

SELECT * FROM Fide_ClientesActivos_V;


CREATE OR REPLACE VIEW Fide_ClientesInactivos_V AS
SELECT
    C.NOMBRE_CLIENTE,
    C.PRIMER_APELLIDO_CLIENTE,
    C.SEGUNDO_APELLIDO_CLIENTE,
    C.CORREO_CLIENTE,
    E.DESCRIPCION as estado
FROM
    FIDE_CLIENTES_TB C
JOIN
    FIDE_Estado_TB E ON C.ID_ESTADO_FK = E.ID_ESTADO
WHERE
    C.ID_ESTADO_FK = 3;
    
SELECT * FROM Fide_ClientesInactivos_V;

CREATE OR REPLACE VIEW FIDE_DiccionarioDatos_V AS
SELECT 
    utc.table_name              AS Nombre_Tabla,
    utc.column_name             AS Nombre_Columna,
    utc.data_type               AS Tipo_Dato,
    utc.data_length             AS Longitud,
    utc.nullable                AS Acepta_Nulos,
    ucc.comments                AS Comentario
FROM 
    user_tab_columns utc
LEFT JOIN 
    user_col_comments ucc 
    ON utc.table_name = ucc.table_name 
    AND utc.column_name = ucc.column_name
ORDER BY 
    utc.table_name, utc.column_name;
    
SELECT * FROM FIDE_DiccionarioDatos_V;

CREATE OR REPLACE  VIEW FIDE_USUARIOS_UNIFICADOS_VW("USER_ID", "CEDULA", "NAME", "LAST_NAME", "SECOND_LAST_NAME", "EMAIL", "PHONE", "ROL", "PASSWORD", "ESTADO", "USACLAVETEMP", "VIGENCIA", "USERTYPE") AS 
  SELECT 
    ID_Colaborador AS USER_ID, 
    CEDULA AS CEDULA,
    Nombre_COLABORADOR AS NAME, 
    PRIMER_APELLIDO_COLABORADOR AS LAST_NAME, 
    SEGUNDO_APELLIDO_COLABORADOR AS SECOND_LAST_NAME, 
    CORREO_COLABORADOR AS EMAIL, 
    TELEFONO_COLABORADOR AS PHONE, 
    ID_ROL_FK AS ROL, 
    CLAVE_COLABORADOR AS PASSWORD,
    ID_ESTADO_FK AS ESTADO, 
    USACLAVETEMP AS USACLAVETEMP,
    VIGENCIA AS VIGENCIA,
    'Colaborador' AS UserType 
FROM FIDE_Colaboradores_TB

UNION ALL

SELECT 
    ID_Cliente AS USER_ID, 
    CEDULA AS CEDULA,
    NOMBRE_CLIENTE AS NAME, 
    PRIMER_APELLIDO_CLIENTE AS LAST_NAME, 
    SEGUNDO_APELLIDO_CLIENTE AS SECOND_LAST_NAME, 
    CORREO_CLIENTE AS EMAIL,  
    TELEFONO_CLIENTE AS PHONE,  
    NULL AS ROL,  
    CLAVE_CLIENTE AS PASSWORD,  
    ID_ESTADO_FK AS ESTADO, 
    USACLAVETEMP AS USACLAVETEMP,
    VIGENCIA AS VIGENCIA,
    'Cliente' AS UserType 
FROM FIDE_Clientes_TB
;
