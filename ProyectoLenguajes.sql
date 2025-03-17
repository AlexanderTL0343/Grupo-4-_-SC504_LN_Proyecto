/*
Creado por Alexander
Fecha: 3/15/2025
Creacion De entidades para la BD del proyecto 
*/

Create Table FIDE_Estado_TB(
ID_Estado number CONSTRAINT FIDE_Estado_TB_ID_Estado_PK primary key not null,
Descripcion Varchar2(100) not null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) not null,
Fecha_Creacion Date not null,
Ultima_Actualizacion_Por Varchar2(100) not null,
Accion Varchar2(100) not null
);


Create Table FIDE_Distrito_TB(
ID_Distrito number CONSTRAINT FIDE_Distrito_TB_ID_Distrito_PK primary key not null,
Descripcion Varchar2(100) not null,
ID_Estado_FK number not null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) not null,
Fecha_Creacion Date not null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) not null,
Fecha_Creacion Date not null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Roles_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);


/

Create Table FIDE_Categorias_TB(
ID_Categoria number CONSTRAINT FIDE_Categorias_TB_ID_Categoria_PK primary key not null,
Nombre_Categoria Varchar2(100) Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_Contratacion Date Not null,
ID_Rol_FK number Not Null,
ID_Horario_FK number Not Null,
ID_Ubicacion_FK number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Clave_Cliente Raw(32),
ID_Estado_FK number Not Null,
ID_Ubicacion_FK number Not Null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Inventario_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint FIDE_Inventario_TB_ID_Producto_FK foreign key (ID_Producto_FK) references FIDE_Producto_TB(ID_Producto)
);

/

Create Table FIDE_HistorialCompras_TB(
ID_Historial number CONSTRAINT FIDE_HistorialCompras_TB_ID_Historial_PK primary key not null,
Total_Compra number Not Null,
Fecha_Compra Date Not null,
ID_Cliente_FK number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_Promociones_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_HistorialProducto_TB(
ID_Producto_FK number Not Null,
ID_Historial_FK number Not Null,
Cantidad number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_HistorialProducto_TB_PK Primary Key (ID_Historial_FK,ID_Producto_FK),
Constraint FIDE_HistorialProducto_TB_ID_Producto_FK foreign key (ID_Producto_FK) references FIDE_Producto_TB(ID_Producto),
Constraint FIDE_HistorialProducto_TB_ID_Historial_FK foreign key (ID_Historial_FK) references FIDE_HistorialCompras_TB(ID_Historial),
Constraint FIDE_HistorialProducto_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table FIDE_HeaderFactura_TB(
ID_Factura number CONSTRAINT FIDE_HeaderFactura_TB_ID_Factura_PK primary key not null,
Fecha_Emision Date Not null,
Total_Factura number Not Null,
Impuesto number Not Null,
Metodo_Pago Varchar2(100) Not Null,
SubTotal number Not Null,
Descuento number Not Null,
ID_Estado_FK number Not Null,
ID_Cliente_FK number Not Null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint FIDE_HeaderFactura_TB_ID_Cliente_FK foreign key (ID_Cliente_FK) references FIDE_Clientes_TB(ID_Cliente),
Constraint FIDE_HeaderFactura_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

Create Table Fide_Venta_TB(
ID_Venta number CONSTRAINT Fide_Venta_TB_ID_Venta_PK primary key not null,
ID_Factura_FK number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint Fide_Venta_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado),
Constraint Fide_Venta_TB_ID_Factura_FK foreign key (ID_Factura_FK) references FIDE_HeaderFactura_TB(ID_Factura)
);

/

Create Table FIDE_DetalleFactura_TB(
ID_Producto_FK number Not Null,
ID_Factura_FK number Not Null,
Cantidad Number Not null,
Precio_Unitario Number Not null,
SubTotal number Not Null,
Descuento number Not Null,
Impuesto number Not Null,
Total number Not Null,
ID_Estado_FK number Not Null,
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
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
Fecha_modificacion Date Not null,
Creado_Por Varchar2(100) Not Null,
Fecha_Creacion Date Not Null,
Ultima_Actualizacion_Por Varchar2(100) Not Null,
Accion Varchar2(100) not Null,
Constraint Fide_Claves_TB_ID_Estado_FK foreign key (ID_Estado_FK) references FIDE_Estado_TB(ID_Estado)
);

/

create or replace Procedure FIDE_Estado_TB_Insertar_SP(
                                        P_ID_Estado in number,
                                        P_Descripcion in Varchar2,
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2                                        
)as

Begin                                         
        insert into FIDE_Estado_TB(ID_Estado,Descripcion,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Estado,P_Descripcion,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Estado_TB_Insertar_SP;

/

create or replace Procedure FIDE_Distrito_TB_Insertar_SP(
                                        P_ID_Distrito in number,
                                        P_Descripcion in Varchar2,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

Begin                                         
        insert into FIDE_Distrito_TB(ID_Distrito,Descripcion,
                                   ID_Estado_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Distrito,P_Descripcion,
                                P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Distrito_TB_Insertar_SP;

/

create or replace Procedure FIDE_Canton_TB_Insertar_SP(
                                        P_ID_Canton in number,
                                        P_Descripcion in Varchar2,
                                        P_ID_Distrito_FK in number ,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

Begin                                         
        insert into FIDE_Canton_TB(ID_Canton,Descripcion,
                                   ID_Distrito_FK,ID_Estado_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Canton,P_Descripcion,
                                P_ID_Distrito_FK ,P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Canton_TB_Insertar_SP;

/

create or replace Procedure FIDE_Provincia_TB_Insertar_SP(
                                        P_ID_Provincia in number,
                                        P_Descripcion in Varchar2,
                                        P_ID_Canton_FK in number ,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

Begin                                         
        insert into FIDE_Provincia_TB(ID_Provincia,Descripcion,
                                   ID_Canton_FK,ID_Estado_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Provincia,P_Descripcion,
                                P_ID_Canton_FK ,P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Provincia_TB_Insertar_SP;

/

create or replace Procedure FIDE_Ubicacion_TB_Insertar_SP(
                                        P_ID_Ubicacion in number,
                                        P_ID_Provincia_FK in number ,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

Begin                                         
        insert into FIDE_Ubicacion_TB(ID_Ubicacion,
                                   ID_Provincia_FK,ID_Estado_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Ubicacion,
                                P_ID_Provincia_FK ,P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Ubicacion_TB_Insertar_SP;

/

create or replace Procedure FIDE_Roles_TB_Insertar_SP(
                                        P_ID_Rol in number,
                                        P_Nombre_Rol in Varchar2,
                                        P_Descripcion in Varchar2,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

Begin                                         
        insert into FIDE_Roles_TB( ID_Rol,Nombre_Rol,Descripcion,
                                   ID_Estado_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Rol,P_Nombre_Rol,
                                P_Descripcion ,P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Roles_TB_Insertar_SP;

/

create or replace Procedure FIDE_Categorias_TB_Insertar_SP(
                                        P_ID_Categoria in number,
                                        P_Nombre_Categoria in Varchar2,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

Begin                                         
        insert into FIDE_Categorias_TB( ID_Categoria,Nombre_Categoria,
                                   ID_Estado_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Categoria,P_Nombre_Categoria,
                                P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Categorias_TB_Insertar_SP;

Begin
        FIDE_Categorias_TB_Insertar_SP(1,'Motor',1,Sysdate,'Alexander',sysdate,'Alexander','Insert');
end;

/

create or replace Procedure FIDE_Producto_TB_Insertar_SP(
                                        P_ID_Producto in number,
                                        P_Nombre_Producto in Varchar2,
                                        P_Descripcion in varchar2,
                                        P_Precio_Unitario in number,
                                        P_ID_Estado_FK in number, 
                                        P_ID_Categoria_FK in number,
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

Begin                                         
        insert into FIDE_Producto_TB( ID_Producto,Nombre_Producto,
                                   Descripcion,Precio_Unitario,
                                   ID_Estado_FK,ID_Categoria_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Producto,P_Nombre_Producto,
                                P_Descripcion, P_Precio_Unitario, 
                                P_ID_Estado_FK ,P_ID_Categoria_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Producto_TB_Insertar_SP;

/

create or replace Procedure FIDE_Horarios_TB_Insertar_SP(
                                        P_ID_Horario in number,
                                        P_Hora_Entrada in TimeStamp,
                                        P_Hora_Salida in TimeStamp,
                                        P_Dias_Laborales in Varchar2,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

Begin                                         
        insert into FIDE_Horarios_TB( ID_Horario,Hora_Entrada,
                                   Hora_Salida,Dias_Laborales,
                                   ID_Estado_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Horario,P_Hora_Entrada,
                                P_Hora_Salida, P_Dias_Laborales, 
                                P_ID_Estado_FK ,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Horarios_TB_Insertar_SP;

/

create or replace Procedure FIDE_Colaboradores_TB_Insertar_SP(
                                        P_ID_Colaborador in number,
                                        P_Nombre_Colaborador in Varchar2,
                                        P_Primer_Apellido_Colaborador in Varchar2,
                                        P_Segundo_Apellido_Colaborador in Varchar2,
                                        P_Telefono_Colaborador in Varchar2,
                                        P_Correo_Colaborador in Varchar2,
                                        P_Salario_Colaborador in number,
                                        P_Fecha_Contratacion in Date ,
                                        P_ID_Estado_FK in number, 
                                        P_ID_Rol_FK in number, 
                                        P_ID_Horario_FK in number,
                                        P_ID_Ubicacion_FK in number,
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

L_Key raw (32);
L_data varchar2(100);
L_Encriptar_Data raw(2000);
Begin
        Select Clave into L_Key
        From Fide_Claves_Tb
        where ID_Clave=1;

        L_data := To_Char(P_Salario_Colaborador);

        L_Encriptar_Data := DBMS_CRYPTO.ENCRYPT(
                                                    SRC=>UTL_RAW.CAST_TO_RAW(L_data),
                                                    TYP=>DBMS_CRYPTO.ENCRYPT_AES256+DBMS_CRYPTO.CHAIN_CBC
                                                    +DBMS_CRYPTO.PAD_PKCS5, key=> L_Key);     
                                                    
        insert into FIDE_Colaboradores_TB( ID_Colaborador,Nombre_Colaborador,
                                   Primer_Apellido_Colaborador,Segundo_Apellido_Colaborador,
                                   Telefono_Colaborador, Correo_Colaborador,
                                   Salario_Colaborador,Fecha_Contratacion,
                                   ID_Estado_FK,ID_Rol_FK,ID_Horario_FK,ID_Ubicacion_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Colaborador,P_Nombre_Colaborador,
                                P_Primer_Apellido_Colaborador, P_Segundo_Apellido_Colaborador, 
                                P_Telefono_Colaborador, P_Correo_Colaborador,
                                L_Encriptar_Data ,P_Fecha_Contratacion,
                                P_ID_Estado_FK ,P_ID_Rol_FK,P_ID_Horario_FK,P_ID_Ubicacion_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Colaboradores_TB_Insertar_SP;

/

create or replace Procedure FIDE_Clientes_TB_Insertar_SP(
                                        P_ID_Cliente in number,
                                        P_Nombre_Cliente in Varchar2,
                                        P_Primer_Apellido_Cliente in Varchar2,
                                        P_Segundo_Apellido_Cliente in Varchar2,
                                        P_Telefono_Cliente in Varchar2,
                                        P_Correo_Cliente in Varchar2,
                                        P_Clave_Cliente in number,                                       
                                        P_ID_Estado_FK in number, 
                                        P_ID_Ubicacion_FK in number,
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as

L_Key raw (32);
L_data varchar2(100);
L_Encriptar_Data raw(2000);
Begin
        Select Clave into L_Key
        From Fide_Claves_Tb
        where ID_Clave=1;

        L_data := To_Char(P_Clave_Cliente);
        

        L_Encriptar_Data := DBMS_CRYPTO.ENCRYPT(
                                                    SRC=>UTL_RAW.CAST_TO_RAW(L_data),
                                                    TYP=>DBMS_CRYPTO.ENCRYPT_AES256+DBMS_CRYPTO.CHAIN_CBC
                                                    +DBMS_CRYPTO.PAD_PKCS5, key=> L_Key);     
                                                    
        insert into FIDE_Clientes_TB( ID_Cliente,Nombre_Cliente,
                                   Primer_Apellido_Cliente,Segundo_Apellido_Cliente,
                                   Telefono_Cliente, Correo_Cliente,
                                   Clave_Cliente,
                                   ID_Estado_FK,ID_Ubicacion_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Cliente,P_Nombre_Cliente,
                                P_Primer_Apellido_Cliente, P_Segundo_Apellido_Cliente, 
                                P_Telefono_Cliente, P_Correo_Cliente,
                                L_Encriptar_Data ,
                                P_ID_Estado_FK ,P_ID_Ubicacion_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Clientes_TB_Insertar_SP;

/

create or replace Procedure Fide_Proveedores_TB_Insertar_SP(
                                        P_ID_Proveedor in number,
                                        P_Nombre_Empresa in Varchar2,
                                        P_Telefono_Empresa in Varchar2,
                                        P_Correo_Empresa in Varchar2,                                      
                                        P_ID_Estado_FK in number, 
                                        P_ID_Ubicacion_FK in number,
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into Fide_Proveedores_TB( ID_Proveedor,Nombre_Empresa,
                                   Telefono_Empresa,Correo_Empresa,
                                   ID_Estado_FK,ID_Ubicacion_FK,
                                   Fecha_modificacion,Creado_Por,
                                   Fecha_Creacion,Ultima_Actualizacion_Por,
                                   Accion)
                                Values
                                (P_ID_Proveedor,P_Nombre_Empresa,
                                P_Telefono_Empresa, P_Correo_Empresa, 
                                P_ID_Estado_FK ,P_ID_Ubicacion_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End Fide_Proveedores_TB_Insertar_SP;

/

create or replace Procedure FIDE_Inventario_TB_Insertar_SP(
                                        P_ID_Inventario in number,
                                        P_Stock in number,                                      
                                        P_ID_Estado_FK in number, 
                                        P_ID_Producto_FK in number,
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into FIDE_Inventario_TB( ID_Inventario,Stock,
                                        ID_Estado_FK,ID_Producto_FK,
                                        Fecha_modificacion,Creado_Por,
                                        Fecha_Creacion,Ultima_Actualizacion_Por,
                                        Accion)
                                Values
                                (P_ID_Inventario,P_Stock,
                                P_ID_Estado_FK ,P_ID_Producto_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Inventario_TB_Insertar_SP;

/

create or replace Procedure FIDE_Promociones_TB_Insertar_SP(
                                        P_ID_Promociones in number,
                                        P_Fecha_Inicio in date, 
                                        P_Fecha_Final in date, 
                                        P_Descripcion in Varchar2,
                                        P_Descuento in Number,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into FIDE_Promociones_TB( ID_Promociones,Fecha_Inicio,
                                        Fecha_Final,Descripcion, Descuento,
                                        ID_Estado_FK,
                                        Fecha_modificacion,Creado_Por,
                                        Fecha_Creacion,Ultima_Actualizacion_Por,
                                        Accion)
                                Values
                                (P_ID_Promociones,P_Fecha_Inicio,
                                P_Fecha_Final,P_Descripcion,P_Descuento,
                                P_ID_Estado_FK ,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_Promociones_TB_Insertar_SP;

/

create or replace Procedure FIDE_HistorialProducto_TB_Insertar_SP(
                                        P_ID_Historial_FK in number,
                                        P_ID_Producto_FK in number,
                                        P_Cantidad in Number,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into FIDE_HistorialProducto_TB( ID_Historial_FK,ID_Producto_FK,
                                        Cantidad ,ID_Estado_FK,
                                        Fecha_modificacion,Creado_Por,
                                        Fecha_Creacion,Ultima_Actualizacion_Por,
                                        Accion)
                                Values
                                (P_ID_Historial_FK,P_ID_Producto_FK,
                                P_Cantidad, P_ID_Estado_FK ,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_HistorialProducto_TB_Insertar_SP;

/

create or replace Procedure FIDE_HeaderFactura_TB_Insertar_SP(
                                        P_ID_Factura in number,
                                        P_Fecha_Emision in Date,
                                        P_Total_Factura in Number,
                                        P_Impuesto in Number,
                                        P_Metodo_Pago in Varchar2, 
                                        P_SubTotal in Number,
                                        P_Descuento in number,
                                        P_ID_Estado_FK in number, 
                                        P_ID_Cliente_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into FIDE_HeaderFactura_TB( ID_Factura,Fecha_Emision,
                                        Total_Factura ,Impuesto, 
                                        Metodo_Pago,SubTotal,
                                        Descuento, ID_Estado_FK,ID_Cliente_FK,
                                        Fecha_modificacion,Creado_Por,
                                        Fecha_Creacion,Ultima_Actualizacion_Por,
                                        Accion)
                                Values
                                (P_ID_Factura,P_Fecha_Emision,
                                P_Total_Factura,P_Impuesto,
                                P_Metodo_Pago,P_SubTotal,
                                P_Descuento,
                                P_ID_Estado_FK,P_ID_Cliente_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_HeaderFactura_TB_Insertar_SP;

/

create or replace Procedure Fide_Venta_TB_Insertar_SP(
                                        P_ID_Venta in Number,
                                        P_ID_Factura_FK in number,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into Fide_Venta_TB(ID_Venta,ID_Factura_FK,
                                    ID_Estado_FK,
                                    Fecha_modificacion,Creado_Por,
                                    Fecha_Creacion,Ultima_Actualizacion_Por,
                                    Accion)
                                Values
                                (P_ID_Venta,P_ID_Factura_FK,
                                P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End Fide_Venta_TB_Insertar_SP;

/

create or replace Procedure FIDE_DetalleFactura_TB_Insertar_SP(
                                        P_ID_Producto_FK in number,
                                        P_ID_Factura_FK in number,
                                        P_Precio_Unitario in Number,
                                        P_Cantidad in Number,
                                        P_Total in Number,
                                        P_Impuesto in Number,
                                        P_Metodo_Pago in Varchar2, 
                                        P_SubTotal in Number,
                                        P_Descuento in number,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into FIDE_DetalleFactura_TB( ID_Producto_FK,ID_Factura_FK,
                                        Cantidad ,Precio_Unitario, 
                                        SubTotal,Descuento,Impuesto,
                                        Total, ID_Estado_FK,
                                        Fecha_modificacion,Creado_Por,
                                        Fecha_Creacion,Ultima_Actualizacion_Por,
                                        Accion)
                                Values
                                (P_ID_Producto_FK,P_ID_Factura_FK,
                                P_Cantidad,P_Precio_Unitario,
                                P_SubTotal,P_Descuento,
                                P_Impuesto,P_Total,
                                P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_DetalleFactura_TB_Insertar_SP;

/

create or replace Procedure FIDE_ProductosPromocion_TB_Insertar_SP(
                                        P_ID_Producto_FK in Number,
                                        P_ID_Promociones_FK in number,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into FIDE_ProductosPromocion_TB(ID_Producto_FK,ID_Promociones_FK,
                                    ID_Estado_FK,
                                    Fecha_modificacion,Creado_Por,
                                    Fecha_Creacion,Ultima_Actualizacion_Por,
                                    Accion)
                                Values
                                (P_ID_Producto_FK,P_ID_Promociones_FK,
                                P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_ProductosPromocion_TB_Insertar_SP;

/

create or replace Procedure Fide_PedidoProveedor_TB_Insertar_SP(
                                        P_ID_PedidoProveedor in Number,
                                        P_Fecha_pedido in Date,
                                        P_ID_Estado_FK in number, 
                                        P_ID_proveedor_FK in Number,
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into Fide_PedidoProveedor_TB(ID_PedidoProveedor,Fecha_pedido,
                                    ID_Estado_FK,ID_proveedor_FK,
                                    Fecha_modificacion,Creado_Por,
                                    Fecha_Creacion,Ultima_Actualizacion_Por,
                                    Accion)
                                Values
                                (P_ID_PedidoProveedor,P_Fecha_pedido,
                                P_ID_Estado_FK,P_ID_proveedor_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End Fide_PedidoProveedor_TB_Insertar_SP;

/

create or replace Procedure FIDE_DetallePedipoProveedor_TB_Insertar_SP(
                                        P_Cantidad in Number,
                                        P_Precio_Unitario in Number,
                                        P_ID_PedidoProveedor_FK in Number,
                                        P_ID_Producto_FK in Number,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into FIDE_DetallePedipoProveedor_TB(Cantidad,Precio_Unitario,
                                    ID_PedidoProveedor_FK,ID_Producto_FK, ID_Estado_FK,
                                    Fecha_modificacion,Creado_Por,
                                    Fecha_Creacion,Ultima_Actualizacion_Por,
                                    Accion)
                                Values
                                (P_Cantidad,P_Precio_Unitario,
                                P_ID_PedidoProveedor_FK, P_ID_Producto_FK,P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End FIDE_DetallePedipoProveedor_TB_Insertar_SP;

/

create or replace Procedure Fide_Claves_TB_Insertar_SP(
                                        P_ID_Clave in Number,
                                        P_Clave in Raw,
                                        P_ID_Estado_FK in number, 
                                        P_Fecha_modificacion in Date ,
                                        P_Creado_Por in Varchar2, 
                                        P_Fecha_Creacion in Date ,
                                        P_Ultima_Actualizacion_Por in Varchar2,
                                        P_Accion in Varchar2     
)as    
Begin                                              
        insert into Fide_Claves_TB(ID_Clave,Clave,
                                    ID_Estado_FK,
                                    Fecha_modificacion,Creado_Por,
                                    Fecha_Creacion,Ultima_Actualizacion_Por,
                                    Accion)
                                Values
                                (P_ID_Clave,P_Clave,
                                P_ID_Estado_FK,
                                P_Fecha_modificacion,P_Creado_Por,
                                P_Fecha_Creacion,P_Ultima_Actualizacion_Por,
                                P_Accion);
        Commit;

End Fide_Claves_TB_Insertar_SP;

/
create or replace Procedure FIDE_Distrito_TB_ActualizarEstado_SP(
                                        P_ID_Distrito in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Distrito_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Distrito = P_ID_Distrito;
        Commit;

End FIDE_Distrito_TB_ActualizarEstado_SP;

/

create or replace Procedure FIDE_Canton_TB_ActualizarEstado_SP(
                                        P_ID_Canton in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Canton_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Canton = P_ID_Canton;
        Commit;

End FIDE_Canton_TB_ActualizarEstado_SP;

/

create or replace Procedure FIDE_Provincia_TB_ActualizarEstado_SP(
                                        P_ID_Provincia in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Provincia_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Provincia = P_ID_Provincia;
        Commit;

End FIDE_Provincia_TB_ActualizarEstado_SP;


create or replace Procedure FIDE_Ubicacion_TB_ActualizarEstado_SP(
                                        P_ID_Ubicacion in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Ubicacion_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Ubicacion = P_ID_Ubicacion;
        Commit;

End FIDE_Ubicacion_TB_ActualizarEstado_SP;


create or replace Procedure FIDE_Roles_TB_ActualizarEstado_SP(
                                        P_ID_Rol in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Roles_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Rol = P_ID_Rol;
        Commit;

End FIDE_Roles_TB_ActualizarEstado_SP;



create or replace Procedure FIDE_Categorias_TB_ActualizarEstado_SP(
                                        P_ID_Categoria in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Categorias_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Categoria = P_ID_Categoria;
        Commit;

End FIDE_Categorias_TB_ActualizarEstado_SP;

/

create or replace Procedure FIDE_Producto_TB_ActualizarEstado_SP(
                                        P_ID_Producto in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Producto_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Producto = P_ID_Producto;
        Commit;

End FIDE_Producto_TB_ActualizarEstado_SP;


/

create or replace Procedure FIDE_Horarios_TB_ActualizarEstado_SP(
                                        P_ID_Horario in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Horarios_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Horario = P_ID_Horario;
        Commit;

End FIDE_Horarios_TB_ActualizarEstado_SP;



create or replace Procedure FIDE_Colaboradores_TB_ActualizarEstado_SP(
                                        P_ID_Colaborador in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Colaboradores_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Colaborador = P_ID_Colaborador;
        Commit;

End FIDE_Colaboradores_TB_ActualizarEstado_SP;



create or replace Procedure FIDE_Clientes_TB_ActualizarEstado_SP(
                                        P_ID_Cliente in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Clientes_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Cliente = P_ID_Cliente;
        Commit;

End FIDE_Clientes_TB_ActualizarEstado_SP;




create or replace Procedure Fide_Proveedores_TB_ActualizarEstado_SP(
                                        P_ID_Proveedor in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update Fide_Proveedores_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Proveedor = P_ID_Proveedor;
        Commit;

End Fide_Proveedores_TB_ActualizarEstado_SP;



create or replace Procedure FIDE_Inventario_TB_ActualizarEstado_SP(
                                        P_ID_Inventario in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Inventario_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Inventario = P_ID_Inventario;
        Commit;

End FIDE_Inventario_TB_ActualizarEstado_SP;




create or replace Procedure FIDE_Promociones_TB_ActualizarEstado_SP(
                                        P_ID_Promociones in number,
                                        P_ID_Estado_FK in number,
                                        p_Ultima_Actualizacion_Por in Varchar2
                                                                                
)as

Begin                                         
        Update FIDE_Promociones_TB
        Set ID_Estado_FK = P_ID_Estado_FK,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
        Where ID_Promociones = P_ID_Promociones;
        Commit;

End FIDE_Promociones_TB_ActualizarEstado_SP;

/

create or replace Procedure FIDE_Colaboradores_TB_Actualizar_Telefono_Correo_Colaborador_SP(
                                                                                                p_ID_Colaborador IN NUMBER,
                                                                                                p_Telefono_Colaborador IN VARCHAR2,
                                                                                                p_Correo_Colaborador IN VARCHAR2,
                                                                                                p_Ultima_Actualizacion_Por IN VARCHAR2
)As
BEGIN
    UPDATE FIDE_Colaboradores_TB
    SET Telefono_Colaborador = p_Telefono_Colaborador,
        Correo_Colaborador = p_Correo_Colaborador,
        Fecha_modificacion = SYSDATE,
        Ultima_Actualizacion_Por = p_Ultima_Actualizacion_Por,
        Accion = 'Update'
    WHERE ID_Colaborador = p_ID_Colaborador;

    COMMIT;
END FIDE_Colaboradores_TB_Actualizar_Telefono_Correo_Colaborador_SP;

/

/*
Creado por Jose Siles
Fecha: 16/03/2025
Creacion De procesos y vistas 
*/

CREATE OR REPLACE FUNCTION FIDE_Calcular_Total_Factura_FN(
    P_ID_Factura IN NUMBER
) RETURN NUMBER AS
    v_Total NUMBER;
BEGIN
    SELECT SUM((Cantidad * Precio_Unitario) - Descuento + Impuesto)
    INTO v_Total
    FROM FIDE_DetalleFactura_TB
    WHERE ID_Factura_FK = P_ID_Factura;
    RETURN v_Total;
END FIDE_Calcular_Total_Factura_FN;
/

SELECT FIDE_Calcular_Total_Factura_FN(1) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Stock_FN(
    P_ID_Producto IN NUMBER
) RETURN NUMBER AS
    v_Stock NUMBER;
BEGIN
    SELECT Stock INTO v_Stock
    FROM FIDE_Inventario_TB
    WHERE ID_Producto_FK = P_ID_Producto;
    RETURN v_Stock;
END FIDE_Obtener_Stock_FN;

/

SELECT FIDE_Obtener_Stock_FN(5) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Verificar_Disponibilidad_Producto_FN(
    P_ID_Producto IN NUMBER,
    P_Cantidad IN NUMBER
) RETURN NUMBER AS
    v_Stock NUMBER;
BEGIN
    SELECT Stock INTO v_Stock
    FROM FIDE_Inventario_TB
    WHERE ID_Producto_FK = P_ID_Producto;
    IF v_Stock >= P_Cantidad THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END FIDE_Verificar_Disponibilidad_Producto_FN;

/

SELECT FIDE_Verificar_Disponibilidad_Producto_FN(3, 10) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Cantidad_Compras_Cliente_FN(
    P_ID_Cliente IN NUMBER
) RETURN NUMBER AS
    v_Total_Compras NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_Total_Compras
    FROM FIDE_HistorialCompras_TB
    WHERE ID_Cliente_FK = P_ID_Cliente;
    RETURN v_Total_Compras;
END FIDE_Cantidad_Compras_Cliente_FN;

/

SELECT FIDE_Cantidad_Compras_Cliente_FN(2) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Descuento_Promocion_FN(
    P_ID_Producto IN NUMBER
) RETURN NUMBER AS
    v_Descuento NUMBER;
BEGIN
    SELECT NVL(MAX(Descuento), 0) INTO v_Descuento
    FROM FIDE_Promociones_TB PR
    JOIN FIDE_ProductosPromocion_TB PP ON PR.ID_Promociones = PP.ID_Promociones_FK
    WHERE PP.ID_Producto_FK = P_ID_Producto
    AND PR.Fecha_Inicio <= SYSDATE
    AND PR.Fecha_Final >= SYSDATE
    AND PR.ID_Estado_FK = 1;
    RETURN v_Descuento;
END FIDE_Obtener_Descuento_Promocion_FN;

/

SELECT FIDE_Obtener_Descuento_Promocion_FN(10) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Salario_Colaborador_FN(
    P_ID_Colaborador IN NUMBER
) RETURN RAW AS
    v_Salario RAW(32);
BEGIN
    SELECT Salario_Colaborador INTO v_Salario
    FROM FIDE_Colaboradores_TB
    WHERE ID_Colaborador = P_ID_Colaborador;
    RETURN v_Salario;
END FIDE_Obtener_Salario_Colaborador_FN;

/

SELECT FIDE_Obtener_Salario_Colaborador_FN(2) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Verificar_Proveedor_Existe_FN(
    P_ID_Proveedor IN NUMBER
) RETURN NUMBER AS
    v_Existe NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_Existe
    FROM FIDE_Proveedores_TB
    WHERE ID_Proveedor = P_ID_Proveedor;
    IF v_Existe > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END FIDE_Verificar_Proveedor_Existe_FN;

/

SELECT FIDE_Verificar_Proveedor_Existe_FN(3) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Total_Productos_Categoria_FN(
    P_ID_Categoria IN NUMBER
) RETURN NUMBER AS
    v_Total NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_Total
    FROM FIDE_Producto_TB
    WHERE ID_Categoria_FK = P_ID_Categoria;
    RETURN v_Total;
END FIDE_Obtener_Total_Productos_Categoria_FN;

/

SELECT FIDE_Obtener_Total_Productos_Categoria_FN(2) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Precio_Producto_FN(
    P_ID_Producto IN NUMBER
) RETURN NUMBER AS
    v_Precio NUMBER;
BEGIN
    SELECT Precio_Unitario INTO v_Precio
    FROM FIDE_Producto_TB
    WHERE ID_Producto = P_ID_Producto;
    RETURN v_Precio;
END FIDE_Obtener_Precio_Producto_FN;

/

SELECT FIDE_Obtener_Precio_Producto_FN(5) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Total_Ventas_Cliente_FN(
    P_ID_Cliente IN NUMBER
) RETURN NUMBER AS
    v_Total NUMBER;
BEGIN
    SELECT NVL(SUM(Total_Compra), 0) INTO v_Total
    FROM FIDE_HistorialCompras_TB
    WHERE ID_Cliente_FK = P_ID_Cliente;
    RETURN v_Total;
END FIDE_Obtener_Total_Ventas_Cliente_FN;

/

SELECT FIDE_Obtener_Total_Ventas_Cliente_FN(7) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Verificar_Pedido_Entregado_FN(
    P_ID_PedidoProveedor IN NUMBER
) RETURN NUMBER AS
    v_Estado NUMBER;
BEGIN
    SELECT ID_Estado_FK INTO v_Estado
    FROM Fide_PedidoProveedor_TB
    WHERE ID_PedidoProveedor = P_ID_PedidoProveedor;
    IF v_Estado = 3 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
    
END FIDE_Verificar_Pedido_Entregado_FN;

/

SELECT FIDE_Verificar_Pedido_Entregado_FN(10) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Verificar_Factura_Existe_FN(
    P_ID_Factura IN NUMBER
) RETURN NUMBER AS
    v_Existe NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_Existe
    FROM FIDE_HeaderFactura_TB
    WHERE ID_Factura = P_ID_Factura;

    IF v_Existe > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END FIDE_Verificar_Factura_Existe_FN;

/

SELECT FIDE_Verificar_Factura_Existe_FN(15) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Cantidad_Productos_Factura_FN(
    P_ID_Factura IN NUMBER
) RETURN NUMBER AS
    v_Cantidad NUMBER;
BEGIN
    SELECT SUM(Cantidad) INTO v_Cantidad
    FROM FIDE_DetalleFactura_TB
    WHERE ID_Factura_FK = P_ID_Factura;

    RETURN NVL(v_Cantidad, 0);
END FIDE_Obtener_Cantidad_Productos_Factura_FN;

/

SELECT FIDE_Obtener_Cantidad_Productos_Factura_FN(10) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Empleado_Existe_FN(
    P_ID_Colaborador IN NUMBER
) RETURN NUMBER AS
    v_Existe NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_Existe
    FROM FIDE_Colaboradores_TB
    WHERE ID_Colaborador = P_ID_Colaborador;

    IF v_Existe > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END FIDE_Obtener_Empleado_Existe_FN;

/

SELECT FIDE_Obtener_Empleado_Existe_FN(5) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Estado_Factura_FN(
    P_ID_Factura IN NUMBER
) RETURN NUMBER AS
    v_Estado NUMBER;
BEGIN
    SELECT ID_Estado_FK INTO v_Estado
    FROM FIDE_HeaderFactura_TB
    WHERE ID_Factura = P_ID_Factura;
    RETURN v_Estado;
END FIDE_Obtener_Estado_Factura_FN;

/

SELECT FIDE_Obtener_Estado_Factura_FN(20) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Total_Pagado_Proveedor_FN(
    P_ID_Proveedor IN NUMBER
) RETURN NUMBER AS
    v_Total NUMBER;
BEGIN
    SELECT NVL(SUM(DPP.Cantidad * DPP.Precio_Unitario), 0) INTO v_Total
    FROM FIDE_DetallePedipoProveedor_TB DPP
    JOIN Fide_PedidoProveedor_TB PP ON DPP.ID_PedidoProveedor_FK = PP.ID_PedidoProveedor
    WHERE PP.ID_Proveedor_FK = P_ID_Proveedor;

    RETURN v_Total;
END FIDE_Obtener_Total_Pagado_Proveedor_FN;

/

SELECT FIDE_Obtener_Total_Pagado_Proveedor_FN(3) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Cantidad_Facturas_Cliente_FN(
    P_ID_Cliente IN NUMBER
) RETURN NUMBER AS
    v_Cantidad NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_Cantidad
    FROM FIDE_HeaderFactura_TB
    WHERE ID_Cliente_FK = P_ID_Cliente;

    RETURN v_Cantidad;
END FIDE_Obtener_Cantidad_Facturas_Cliente_FN;

/

SELECT FIDE_Obtener_Cantidad_Facturas_Cliente_FN(5) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Fecha_Ultima_Compra_Cliente_FN(
    P_ID_Cliente IN NUMBER
) RETURN DATE AS
    v_Fecha DATE;
BEGIN
    SELECT MAX(Fecha_Compra) INTO v_Fecha
    FROM FIDE_HistorialCompras_TB
    WHERE ID_Cliente_FK = P_ID_Cliente;
    RETURN v_Fecha;
END FIDE_Obtener_Fecha_Ultima_Compra_Cliente_FN;

/

SELECT FIDE_Obtener_Fecha_Ultima_Compra_Cliente_FN(7) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Total_Factura_FN(
    P_ID_Factura IN NUMBER
) RETURN NUMBER AS
    v_Total NUMBER;
BEGIN
    SELECT Total_Factura INTO v_Total
    FROM FIDE_HeaderFactura_TB
    WHERE ID_Factura = P_ID_Factura;
    RETURN v_Total;
END FIDE_Obtener_Total_Factura_FN;

/

SELECT FIDE_Obtener_Total_Factura_FN(12) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Obtener_Cantidad_Productos_Proveedor_FN(
    P_ID_Proveedor IN NUMBER
) RETURN NUMBER AS
    v_Cantidad NUMBER;
BEGIN
    SELECT COUNT(DISTINCT DPP.ID_Producto_FK) INTO v_Cantidad
    FROM FIDE_DetallePedipoProveedor_TB DPP
    JOIN Fide_PedidoProveedor_TB PP ON DPP.ID_PedidoProveedor_FK = PP.ID_PedidoProveedor
    WHERE PP.ID_Proveedor_FK = P_ID_Proveedor;

    RETURN v_Cantidad;
END FIDE_Obtener_Cantidad_Productos_Proveedor_FN;

/

SELECT FIDE_Obtener_Cantidad_Productos_Proveedor_FN(3) FROM DUAL;

/

CREATE OR REPLACE FUNCTION FIDE_Verificar_Cliente_Tiene_Deuda_FN(
    P_ID_Cliente IN NUMBER
) RETURN NUMBER AS
    v_Deuda NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_Deuda
    FROM FIDE_HeaderFactura_TB
    WHERE ID_Cliente_FK = P_ID_Cliente
    AND ID_Estado_FK = 2;
    IF v_Deuda > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END FIDE_Verificar_Cliente_Tiene_Deuda_FN;

/

SELECT FIDE_Verificar_Cliente_Tiene_Deuda_FN(10) FROM DUAL;

/

CREATE OR REPLACE VIEW V_Facturas_Pendientes_v AS
SELECT 
    F.ID_Factura,
    C.Nombre_Cliente || ' ' || C.Primer_Apellido_Cliente AS Cliente,
    F.Fecha_Emision,
    F.Total_Factura,
    F.Metodo_Pago
FROM FIDE_HeaderFactura_TB F
JOIN FIDE_Clientes_TB C ON F.ID_Cliente_FK = C.ID_Cliente
WHERE F.ID_Estado_FK = 2;

/

SELECT * FROM V_Facturas_Pendientes_v;

/

CREATE OR REPLACE VIEW V_Clientes_Mayores_Compradores_v AS
SELECT 
    C.ID_Cliente,
    C.Nombre_Cliente || ' ' || C.Primer_Apellido_Cliente AS Cliente,
    SUM(H.Total_Compra) AS Total_Gastado
FROM FIDE_Clientes_TB C
JOIN FIDE_HistorialCompras_TB H ON C.ID_Cliente = H.ID_Cliente_FK
GROUP BY C.ID_Cliente, C.Nombre_Cliente, C.Primer_Apellido_Cliente
ORDER BY Total_Gastado DESC;

/

SELECT * FROM V_Clientes_Mayores_Compradores_v;

/

CREATE OR REPLACE VIEW V_Productos_Mas_Vendidos_v AS
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

SELECT * FROM V_Productos_Mas_Vendidos_v;

/

CREATE OR REPLACE VIEW V_Proveedores_Con_Pedidos_Pendientes_v AS
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

SELECT * FROM V_Proveedores_Con_Pedidos_Pendientes_v;

/

CREATE OR REPLACE VIEW V_Productos_Con_Bajo_Stock_v AS
SELECT 
    P.ID_Producto,
    P.Nombre_Producto,
    I.Stock
FROM FIDE_Producto_TB P
JOIN FIDE_Inventario_TB I ON P.ID_Producto = I.ID_Producto_FK
WHERE I.Stock < 10
ORDER BY I.Stock ASC;

/

SELECT * FROM V_Productos_Con_Bajo_Stock_v;

/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR EMPLEADOS IS 
        SELECT C.Nombre_Colaborador, C.Salario_Colaborador, R.Nombre_Rol
        FROM FIDE_Colaboradores_TB C
        JOIN FIDE_Roles_TB R ON C.ID_Rol_FK = R.ID_Rol;
    V_EMPLEADOS EMPLEADOS%ROWTYPE;
BEGIN
    FOR V_EMPLEADOS IN EMPLEADOS LOOP
        DBMS_OUTPUT.PUT_LINE('Empleado: ' || V_EMPLEADOS.Nombre_Colaborador ||
                             ' | Salario: ' || V_EMPLEADOS.Salario_Colaborador ||
                             ' | Rol: ' || V_EMPLEADOS.Nombre_Rol);
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR PRODUCTOS IS 
        SELECT P.Nombre_Producto, I.Stock, C.Nombre_Categoria
        FROM FIDE_Producto_TB P
        JOIN FIDE_Inventario_TB I ON P.ID_Producto = I.ID_Producto_FK
        JOIN FIDE_Categorias_TB C ON P.ID_Categoria_FK = C.ID_Categoria
        WHERE I.Stock > 0;
    V_PRODUCTOS PRODUCTOS%ROWTYPE;
BEGIN
    FOR V_PRODUCTOS IN PRODUCTOS LOOP
        DBMS_OUTPUT.PUT_LINE('Producto: ' || V_PRODUCTOS.Nombre_Producto ||
                             ' | Stock: ' || V_PRODUCTOS.Stock ||
                             ' | Categoría: ' || V_PRODUCTOS.Nombre_Categoria);
    END LOOP;
END;

/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR CLIENTES IS 
        SELECT C.Nombre_Cliente, C.Primer_Apellido_Cliente, E.Descripcion AS Estado
        FROM FIDE_Clientes_TB C
        JOIN FIDE_Estado_TB E ON C.ID_Estado_FK = E.ID_Estado
        WHERE C.ID_Estado_FK = 1;
    V_CLIENTES CLIENTES%ROWTYPE;
BEGIN
    FOR V_CLIENTES IN CLIENTES LOOP
        DBMS_OUTPUT.PUT_LINE('Cliente: ' || V_CLIENTES.Nombre_Cliente || ' ' || V_CLIENTES.Primer_Apellido_Cliente ||
                             ' | Estado: ' || V_CLIENTES.Estado);
    END LOOP;
END;

/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR PROVEEDORES IS 
        SELECT P.Nombre_Empresa, P.Telefono_Empresa, E.Descripcion AS Estado
        FROM FIDE_Proveedores_TB P
        JOIN FIDE_Estado_TB E ON P.ID_Estado_FK = E.ID_Estado
        WHERE P.ID_Estado_FK = 1;
    V_PROVEEDORES PROVEEDORES%ROWTYPE;
BEGIN
    FOR V_PROVEEDORES IN PROVEEDORES LOOP
        DBMS_OUTPUT.PUT_LINE('Proveedor: ' || V_PROVEEDORES.Nombre_Empresa ||
                             ' | Teléfono: ' || V_PROVEEDORES.Telefono_Empresa ||
                             ' | Estado: ' || V_PROVEEDORES.Estado);
    END LOOP;
END;

/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR PEDIDOS IS 
        SELECT PP.ID_PedidoProveedor, P.Nombre_Empresa, PP.Fecha_Pedido, E.Descripcion AS Estado
        FROM Fide_PedidoProveedor_TB PP
        JOIN FIDE_Proveedores_TB P ON PP.ID_Proveedor_FK = P.ID_Proveedor
        JOIN FIDE_Estado_TB E ON PP.ID_Estado_FK = E.ID_Estado
        WHERE PP.ID_Estado_FK = 2
    V_PEDIDOS PEDIDOS%ROWTYPE;
BEGIN
    FOR V_PEDIDOS IN PEDIDOS LOOP
        DBMS_OUTPUT.PUT_LINE('Pedido ID: ' || V_PEDIDOS.ID_PedidoProveedor ||
                             ' | Proveedor: ' || V_PEDIDOS.Nombre_Empresa ||
                             ' | Fecha Pedido: ' || TO_CHAR(V_PEDIDOS.Fecha_Pedido, 'YYYY-MM-DD') ||
                             ' | Estado: ' || V_PEDIDOS.Estado);
    END LOOP;
END;

/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR FACTURAS IS 
        SELECT F.ID_Factura, C.Nombre_Cliente, F.Fecha_Emision, F.Total_Factura
        FROM FIDE_HeaderFactura_TB F
        JOIN FIDE_Clientes_TB C ON F.ID_Cliente_FK = C.ID_Cliente
        WHERE F.Fecha_Emision >= SYSDATE - 30
        ORDER BY F.Fecha_Emision DESC;
    V_FACTURAS FACTURAS%ROWTYPE;
BEGIN
    FOR V_FACTURAS IN FACTURAS LOOP
        DBMS_OUTPUT.PUT_LINE('Factura ID: ' || V_FACTURAS.ID_Factura ||
                             ' | Cliente: ' || V_FACTURAS.Nombre_Cliente ||
                             ' | Fecha: ' || TO_CHAR(V_FACTURAS.Fecha_Emision, 'YYYY-MM-DD') ||
                             ' | Total: ' || V_FACTURAS.Total_Factura);
    END LOOP;
END;

/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR PROMOCIONES IS 
        SELECT ID_Promociones, Descripcion, Descuento, Fecha_Inicio, Fecha_Final
        FROM FIDE_Promociones_TB
        WHERE ID_Estado_FK = 1
        ORDER BY Fecha_Inicio DESC;
    V_PROMOCIONES PROMOCIONES%ROWTYPE;
BEGIN
    FOR V_PROMOCIONES IN PROMOCIONES LOOP
        DBMS_OUTPUT.PUT_LINE('Promoción ID: ' || V_PROMOCIONES.ID_Promociones ||
                             ' | Descripción: ' || V_PROMOCIONES.Descripcion ||
                             ' | Descuento: ' || V_PROMOCIONES.Descuento || '%' ||
                             ' | Inicio: ' || TO_CHAR(V_PROMOCIONES.Fecha_Inicio, 'YYYY-MM-DD') ||
                             ' | Fin: ' || TO_CHAR(V_PROMOCIONES.Fecha_Final, 'YYYY-MM-DD'));
    END LOOP;
END;

/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR PRODUCTOS_SIN_VENTAS IS 
        SELECT P.ID_Producto, P.Nombre_Producto, C.Nombre_Categoria
        FROM FIDE_Producto_TB P
        JOIN FIDE_Categorias_TB C ON P.ID_Categoria_FK = C.ID_Categoria
        WHERE P.ID_Producto NOT IN (
            SELECT DISTINCT ID_Producto_FK 
            FROM FIDE_DetalleFactura_TB DF
            JOIN FIDE_HeaderFactura_TB F ON DF.ID_Factura_FK = F.ID_Factura
            WHERE F.Fecha_Emision >= SYSDATE - 60
        )
        ORDER BY P.Nombre_Producto;

    V_PRODUCTOS PRODUCTOS_SIN_VENTAS%ROWTYPE;
BEGIN
    FOR V_PRODUCTOS IN PRODUCTOS_SIN_VENTAS LOOP
        DBMS_OUTPUT.PUT_LINE('Producto ID: ' || V_PRODUCTOS.ID_Producto ||
                             ' | Nombre: ' || V_PRODUCTOS.Nombre_Producto ||
                             ' | Categoría: ' || V_PRODUCTOS.Nombre_Categoria);
    END LOOP;
END;