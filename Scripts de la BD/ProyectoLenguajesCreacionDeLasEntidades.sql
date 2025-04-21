/*
Creado por Alexander
Fecha: 3/20/2025
Creacion De entidades para la BD del proyecto 
*/

Create Table FIDE_Estado_TB(
ID_Estado number CONSTRAINT FIDE_Estado_TB_ID_Estado_PK primary key not null,
Descripcion Varchar2(100) not null,
Fecha_modificacion Timestamp ,
Creado_Por Varchar2(100) not null,
Fecha_Creacion Timestamp not null,
Ultima_Actualizacion_Por Varchar2(100),
Accion Varchar2(100) not null
);


Create Table FIDE_Distrito_TB(
ID_Distrito number CONSTRAINT FIDE_Distrito_TB_ID_Distrito_PK primary key not null,
Descripcion Varchar2(100) not null,
ID_Estado_FK number not null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) not null,
Fecha_Creacion Timestamp not null,
Ultima_Actualizacion_Por Varchar2(100) not null,
Accion Varchar2(100) not null,
Constraint FIDE_Distrito_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_Canton_TB(
ID_Canton number CONSTRAINT FIDE_Canton_TB_ID_Canton_PK primary key not null,
Descripcion Varchar2(100) not null,
ID_Estado_FK number not null,
ID_Distrito_FK number not null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) not null,
Fecha_Creacion Timestamp not null,
Ultima_Actualizacion_Por Varchar2(100) not null,
Accion Varchar2(100) not null,
Constraint FIDE_Canton_TB_ID_Distrito_FK foreign key (ID_Distrito_FK) references FIDE_Distrito_TB(ID_Distrito),
Constraint FIDE_Canton_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_Provincia_TB(
ID_Provincia number CONSTRAINT FIDE_Povincia_TB_ID_Provincia_PK primary key not null,
Descripcion Varchar2(100) not null,
ID_Estado_FK number,
ID_Canton_FK number,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Provincia_TB_ID_Canton_FK foreign key (ID_Canton_FK) references FIDE_Canton_TB(ID_Canton),
Constraint FIDE_Provincia_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_Ubicacion_TB(
ID_Ubicacion number CONSTRAINT FIDE_Ubicacion_TB_ID_Ubicacion_PK primary key not null,
ID_Estado_FK number Not Null,
ID_Provincia_FK number Not null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Ubicacion_TB_ID_Provincia_FK foreign key (ID_Provincia_FK) references FIDE_Provincia_TB(ID_Provincia),
Constraint FIDE_Ubicacion_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_Roles_TB (
ID_Rol number CONSTRAINT FIDE_Roles_TB_ID_Rol_PK primary key not null,
Nombre_Rol Varchar2(100) Not Null,
Descripcion Varchar2(1000) Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Roles_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);


/

Create Table FIDE_Categorias_TB(
ID_Categoria number CONSTRAINT FIDE_Categorias_TB_ID_Categoria_PK primary key not null,
Nombre_Categoria Varchar2(100) Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Categorias_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_Producto_TB(
ID_Producto number CONSTRAINT FIDE_Producto_TB_ID_Producto_PK primary key not null,
Nombre_Producto Varchar2(100) Not Null,
Descripcion Varchar2(1000) Not Null,
Precio_Unitario Number Not Null,
ID_Estado_FK number Not Null,
ID_Categoria_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Producto_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint FIDE_Producto_TB_ID_Categoria_FK foreign key (ID_Categoria_FK) references FIDE_Categorias_TB(ID_Categoria)
);

/

Create Table FIDE_Horarios_TB(
ID_Horario number CONSTRAINT FIDE_Horarios_TB_ID_Horarios_PK primary key not null,
Hora_Entrada TIMESTAMP not null,
Hora_Salida TIMESTAMP not null,
Dias_Laborales Varchar2(300) Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Horarios_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_Colaboradores_TB(
ID_Colaborador number CONSTRAINT FIDE_Colaboradores_TB_ID_Colaborador_PK primary key not null,
Nombre_Colaborador Varchar2(100) Not Null,
Primer_Apellido_Colaborador Varchar2(100) Not Null,
Segundo_Apellido_Colaborador Varchar2(100) Not Null,
Telefono_Colaborador Varchar2(100) Not Null,
Correo_Colaborador Varchar2(400) Not Null,
Salario_Colaborador Raw(32),
Fecha_Contratacion Timestamp Not null,
Clave_Colaborador Raw(32),
ID_Rol_FK number Not Null,
ID_Horario_FK number Not Null,
ID_Ubicacion_FK number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Colaboradores_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint FIDE_Colaboradores_TB_ID_Rol_FK foreign key (ID_Rol_FK) references FIDE_Roles_TB(ID_Rol),
Constraint FIDE_Colaboradores_TB_ID_Ubicacion_FK foreign key (ID_Ubicacion_FK) references FIDE_Ubicacion_TB(ID_Ubicacion),
Constraint FIDE_Colaboradores_TB_ID_Horario_FK foreign key (ID_Horario_FK) references FIDE_Horarios_TB(ID_Horario)
);

/

Create Table FIDE_Clientes_TB(
ID_Cliente number CONSTRAINT FIDE_Clientes_TB_ID_Cliente_PK primary key not null,
Nombre_Cliente Varchar2(100) Not Null,
Primer_Apellido_Cliente Varchar2(100) Not Null,
Segundo_Apellido_Cliente Varchar2(100) Not Null,
Telefono_Cliente Varchar2(100) Not Null,
Correo_Cliente Varchar2(400) Not Null,
ID_Estado_FK number Not Null,
ID_Ubicacion_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Clientes_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint FIDE_Clientes_TB_ID_Ubicacion_FK foreign key (ID_Ubicacion_FK) references FIDE_Ubicacion_TB(ID_Ubicacion)
);

/

Create Table Fide_Proveedores_TB(
ID_Proveedor number CONSTRAINT Fide_Proveedores_TB_ID_Proveedor_PK primary key not null,
Nombre_Empresa Varchar2(100) Not Null,
Telefono_Empresa Varchar2(100) Not Null,
Correo_Empresa Varchar2(400) Not Null,
ID_Estado_FK number Not Null,
ID_Ubicacion_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint Fide_Proveedores_TB_ID_Ubicacion_FK foreign key (ID_Ubicacion_FK) references FIDE_Ubicacion_TB(ID_Ubicacion),
Constraint Fide_Proveedores_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_Inventario_TB (
ID_Inventario number CONSTRAINT FIDE_Inventario_TB_ID_Inventario_PK primary key not null,
Stock number Not Null,
ID_Producto_FK number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Inventario_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint FIDE_Inventario_TB_ID_Producto_FK foreign key (ID_Producto_FK) references FIDE_Producto_TB(ID_Producto)
);

/

Create Table FIDE_HistorialCompras_TB(
ID_Historial number CONSTRAINT FIDE_HistorialCompras_TB_ID_Historial_PK primary key not null,
Total_Compra number Not Null,
Fecha_Compra Timestamp Not null,
ID_Cliente_FK number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_HistorialCompras_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint FIDE_HistorialCompras_TB_ID_Cliente_FK foreign key (ID_Cliente_FK) references FIDE_Clientes_TB(ID_Cliente)
);

/

Create Table FIDE_Promociones_TB(
ID_Promociones number CONSTRAINT FIDE_Promociones_TB_ID_Promociones_PK primary key not null,
Fecha_Inicio Date not null,
Fecha_Final Date not null,
Descripcion Varchar2(1000) Not Null,
Descuento Number Not null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Promociones_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_HistorialProducto_TB(
ID_HistorialProducto NUMBER CONSTRAINT Fide_HistorialProducto_TB_ID_HistorialProducto_PK primary key not null,
ID_Producto_FK number Not Null,
Cantidad number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_HistorialProducto_TB_PK Primary Key (ID_Historial_FK,ID_Producto_FK),
Constraint FIDE_HistorialProducto_TB_ID_Producto_FK foreign key (ID_Producto_FK) references FIDE_Producto_TB(ID_Producto),
Constraint FIDE_HistorialProducto_TB_ID_Historial_FK foreign key (ID_Historial_FK) references FIDE_HistorialCompras_TB(ID_Historial),
Constraint FIDE_HistorialProducto_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_HeaderFactura_TB(
ID_Factura Varchar2(100) CONSTRAINT FIDE_HeaderFactura_TB_ID_Factura_PK primary key not null,
Fecha_Emision Timestamp Not null,
Total_Factura number Not Null,
Impuesto number Not Null,
Metodo_Pago Varchar2(100) Not Null,
SubTotal number Not Null,
Descuento number Not Null,
ID_Estado_FK number Not Null,
ID_Cliente_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_HeaderFactura_TB_ID_Cliente_FK foreign key (ID_Cliente_FK) references FIDE_Clientes_TB(ID_Cliente),
Constraint FIDE_HeaderFactura_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table Fide_Venta_TB(
ID_Venta number CONSTRAINT Fide_Venta_TB_ID_Venta_PK primary key not null,
ID_Factura_FK Varchar2(100) Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint Fide_Venta_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint Fide_Venta_TB_ID_Factura_FK foreign key (ID_Factura_FK) references FIDE_HeaderFactura_TB(ID_Factura)
);

/

Create Table FIDE_DetalleFactura_TB(
ID_Producto_FK number Not Null,
ID_Factura_FK Varchar2(100)  Not Null,
Cantidad Number Not null,
Precio_Unitario Number Not null,
SubTotal number Not Null,
Descuento number Not Null,
Impuesto number Not Null,
Total number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_DetalleFactura_TB_PK Primary Key (ID_Factura_FK,ID_Producto_FK),
Constraint FIDE_DetalleFactura_TB_ID_Producto_FK foreign key (ID_Producto_FK) references FIDE_Producto_TB(ID_Producto),
Constraint FIDE_DetalleFactura_TB_ID_Factura_FK foreign key (ID_Factura_FK) references FIDE_HeaderFactura_TB(ID_Factura),
Constraint FIDE_DetalleFactura_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_ProductosPromocion_TB(
ID_Producto_FK number Not Null,
ID_Promociones_FK number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_ProductosPromocion_TB_PK Primary Key (ID_Promociones_FK,ID_Producto_FK),
Constraint FIDE_ProductosPromocion_TB_ID_Producto_FK foreign key (ID_Producto_FK) references FIDE_Producto_TB(ID_Producto),
Constraint FIDE_ProductosPromocion_TB_ID_Promociones_FK foreign key (ID_Promociones_FK) references FIDE_Promociones_TB(ID_Promociones),
Constraint FIDE_ProductosPromocion_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table Fide_PedidoProveedor_TB(
ID_PedidoProveedor number CONSTRAINT Fide_PedidoProveedor_TB_ID_PedidoProveedor_PK primary key,
Fecha_pedido Date Not null,
Fecha_Entrega Date ,
ID_Estado_FK number Not Null,
ID_proveedor_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint Fide_PedidoProveedor_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint Fide_PedidoProveedor_TB_ID_proveedor_FK foreign key (ID_proveedor_FK) references Fide_Proveedores_TB(ID_Proveedor)
);

/

Create Table FIDE_DetallePedipoProveedor_TB(
Cantidad Number Not null,
Precio_Unitario Number Not null,
ID_PedidoProveedor_FK number Not Null,
ID_Producto_FK  number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_DetallePedipoProveedor_TB_PK Primary Key (ID_PedidoProveedor_FK,ID_Producto_FK),
Constraint FIDE_DetallePedipoProveedor_TB_ID_Producto_FK foreign key (ID_Producto_FK) references FIDE_Producto_TB(ID_Producto),
Constraint FIDE_DetallePedipoProveedor_TB_ID_PedidoProveedor foreign key (ID_PedidoProveedor_FK) references Fide_PedidoProveedor_TB(ID_PedidoProveedor),
Constraint FIDE_DetallePedipoProveedor_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create table Fide_Claves_TB(
ID_Clave number CONSTRAINT Fide_Claves_TB_ID_Clave_PK primary key,
Clave raw(32) not null,
ID_Estado_FK number Not Null,
Fecha_modificacion Timestamp Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Timestamp Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint Fide_Claves_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

CREATE TABLE FIDE_USUARIOS_UNIFICADOS_TB AS 
SELECT * FROM (
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
);
/