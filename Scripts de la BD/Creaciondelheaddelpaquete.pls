create or replace PACKAGE FIDE_ProyectoLenguajes_PCK as
FUNCTION Fide_Canton_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Categorias_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Claves_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Clientes_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Colaboradores_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Distrito_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Estado_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_HeaderFactura_TB_GENERARID_SEQ_FN RETURN VARCHAR2;
FUNCTION FIDE_HistorialCompras_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_Provincia_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_Ubicacion_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_Roles_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_Producto_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_Horarios_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Proveedores_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Venta_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_PedidoProveedor_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_Promociones_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_Inventario_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_HistorialProducto_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION FIDE_CARRITO_TB_GENERARID_SEQ_FN RETURN number;
FUNCTION Fide_Claves_TB_ObtenerClave_FN(P_ID_CLAVE IN NUMBER)RETURN Varchar2;
FUNCTION Fide_Proveedores_TB_CorreoProveedor_FN(p_ID_PROVEEDOR IN NUMBER) RETURN VARCHAR2;
FUNCTION Fide_Clientes_TB_CorreoClientes_FN(p_ID_CLIENTE IN NUMBER) RETURN VARCHAR2;
FUNCTION FIDE_COLABORADORES_TB_CorreoCOLABORADORES_FN(p_ID_COLABORADOR IN NUMBER) RETURN VARCHAR2;
FUNCTION FIDE_COLABORADORES_TB_TelefonoColaborador_FN(p_ID_COLABORADOR IN NUMBER) RETURN VARCHAR2;
FUNCTION FIDE_CLIENTES_TB_TelefonoCliente_FN(p_ID_CLIENTE IN NUMBER) RETURN VARCHAR2;
FUNCTION FIDE_PROVEEDORES_TB_Telefonoproveedor_FN(p_ID_PROVEEDOR IN NUMBER) RETURN VARCHAR2;
FUNCTION FIDE_INVENTARIO_TB_ObtenerStockDeUnProducto_FN(P_ID_Producto_fk IN NUMBER)RETURN NUMBER;
FUNCTION FIDE_Colaboradores_TB_ObtenerNombreRolColaborador_FN(P_ID_Colaborador IN NUMBER)RETURN VARCHAR2;
FUNCTION Fide_Distrito_TB_ObtenerNombreDistrito_FN(P_ID_Distrito IN NUMBER) RETURN VARCHAR2;
FUNCTION Fide_Canton_TB_ObtenerNombreCanton_FN(P_ID_Canton IN NUMBER) RETURN VARCHAR2;
FUNCTION Fide_Provincia_TB_ObtenerNombreProvincia_FN(P_ID_Provincia IN NUMBER) RETURN VARCHAR2;
FUNCTION FIDE_COLABORADORES_TB_NombreColaborador_FN(p_ID_COLABORADOR IN NUMBER) RETURN VARCHAR2;
FUNCTION FIDE_CLIENTES_TB_NombreCliente_FN(p_ID_CLIENTE IN NUMBER) RETURN VARCHAR2;
FUNCTION FIDE_PROVEEDORES_TB_Nombreproveedor_FN(p_ID_PROVEEDOR IN NUMBER) RETURN VARCHAR2;
----------------------------------------------------------------------------------------------------------
Procedure FIDE_Estado_TB_Insertar_SP(P_Descripcion in Varchar2);
Procedure FIDE_Distrito_TB_Insertar_SP(P_Descripcion in Varchar2);
Procedure FIDE_Canton_TB_Insertar_SP(P_Descripcion in Varchar2,P_ID_Distrito_FK in number);
Procedure FIDE_Provincia_TB_Insertar_SP(P_Descripcion in Varchar2,P_ID_Canton_FK in number);
Procedure FIDE_Ubicacion_TB_Insertar_SP(P_ID_Provincia_FK in number);
Procedure FIDE_Roles_TB_Insertar_SP(P_Nombre_Rol in Varchar2);
Procedure FIDE_Categorias_TB_Insertar_SP(P_Nombre_Categoria in Varchar2);
Procedure FIDE_Horarios_TB_Insertar_SP(P_Hora_Entrada in TimeStamp,P_Hora_Salida in TimeStamp,
                                                         P_Dias_Laborales in number);
Procedure FIDE_Colaboradores_TB_Insertar_SP(P_Nombre_Colaborador in Varchar2,P_Telefono_Colaborador in Varchar2,
                                            P_Correo_Colaborador in Varchar2,P_Salario_Colaborador in number,
                                            P_Fecha_Contratacion in timestamp ,P_CLAVE_COLABORADOR in varchar2,
                                            P_ID_Rol_FK in number,P_ID_Horario_FK in number,P_ID_Ubicacion_FK in number,p_cedula IN VARCHAR2,P_ROWS_AFFECTED OUT NUMBER );
PROCEDURE FIDE_Clientes_TB_Insertar_SP(p_cedula IN VARCHAR2,p_Identificacion IN NUMBER,p_Nombre IN VARCHAR2,p_telefono IN VARCHAR2,
                                       p_ubicacion IN NUMBER,p_Correo IN VARCHAR2,p_Contrasenna IN VARCHAR2);
Procedure Fide_Proveedores_TB_Insertar_SP(P_Nombre_Empresa in Varchar2,P_Telefono_Empresa in Varchar2,
                                          P_Correo_Empresa in Varchar2,P_ID_Ubicacion_FK in number);
Procedure FIDE_Inventario_TB_Insertar_SP(P_Stock in number,P_ID_Producto_FK in number);
Procedure FIDE_Promociones_TB_Insertar_SP(P_Fecha_Inicio in date,P_Fecha_Final in date,P_Descripcion in Varchar2,P_Descuento in Number);
Procedure FIDE_HistorialProducto_TB_Insertar_SP(P_ID_Producto_FK in number,P_Cantidad in Number);
Procedure FIDE_ProductosPromocion_TB_Insertar_SP(P_ID_Producto_FK in Number,P_ID_Promociones_FK in number);
Procedure Fide_Claves_TB_Insertar_SP(P_Clave in Raw);
PROCEDURE FIDE_Inventario_TB_UpdateEstadoInventario_SP;
PROCEDURE FIDE_Inventario_TB_UpdateEstadoInventarioActivar_SP;
PROCEDURE FIDE_Inventario_TB_ActualizarStock_SP (P_ID_PRODUCTO IN NUMBER,P_CANTIDAD IN NUMBER);
PROCEDURE FIDE_Proveedores_TB_UpdateEstadoproveedor_SP(P_IDProveedor in number);
PROCEDURE FIDE_Proveedores_TB_UpdateEstadoproveedorActivo_SP(P_IDProveedor in number);
PROCEDURE FIDE_Canton_TB_UpdateEstadoInactivo_SP(P_ID_Canton IN NUMBER);
PROCEDURE FIDE_Canton_TB_UpdateEstadoActivo_SP(P_ID_Canton IN NUMBER);
PROCEDURE FIDE_Categorias_TB_UpdateEstadoInactivo_SP(P_ID_Categoria IN NUMBER);
PROCEDURE FIDE_Categorias_TB_UpdateEstadoActivo_SP(P_ID_Categoria IN NUMBER);
PROCEDURE FIDE_Claves_TB_UpdateEstadoInactivo_SP(P_ID_Clave IN NUMBER);
PROCEDURE FIDE_Claves_TB_UpdateEstadoActivo_SP(P_ID_Clave IN NUMBER);
PROCEDURE FIDE_Clientes_TB_UpdateEstadoInactivo_SP(P_ID_Cliente IN NUMBER);
PROCEDURE FIDE_Clientes_TB_UpdateEstadoActivo_SP(P_ID_Cliente IN NUMBER);
PROCEDURE FIDE_Colaboradores_TB_UpdateEstadoInactivo_SP(P_ID_Colaborador IN NUMBER);
PROCEDURE FIDE_Colaboradores_TB_UpdateEstadoActivo_SP(P_ID_Colaborador IN NUMBER);
PROCEDURE FIDE_Distrito_TB_UpdateEstadoInactivo_SP(P_ID_Distrito IN NUMBER);
PROCEDURE FIDE_Distrito_TB_UpdateEstadoActivo_SP(P_ID_Distrito IN NUMBER);
PROCEDURE FIDE_DetallePediPoProveedor_TB_UpdateEstadoInactivo_SP(P_ID_PEDIDOPROVEEDOR_FK IN NUMBER);
PROCEDURE FIDE_DetallePediPoProveedor_TB_UpdateEstadoActivo_SP(P_ID_PEDIDOPROVEEDOR_FK IN NUMBER);
PROCEDURE FIDE_DetalleFactura_TB_UpdateEstadoInactivo_SP(P_ID_FACTURA_FK IN varchar2);
PROCEDURE FIDE_DetalleFactura_TB_UpdateEstadoActivo_SP(P_ID_FACTURA_FK IN varchar2);
PROCEDURE FIDE_HeaderFactura_TB_UpdateEstadoInactivo_SP(P_ID_FACTURA IN varchar2);
PROCEDURE FIDE_HeaderFactura_TB_UpdateEstadoActivo_SP(P_ID_FACTURA IN varchar2);
PROCEDURE FIDE_HistorialCompras_TB_UpdateEstadoInactivo_SP(P_ID_HISTORIAL IN NUMBER);
PROCEDURE FIDE_HistorialCompras_TB_UpdateEstadoActivo_SP(P_ID_HISTORIAL IN NUMBER);
PROCEDURE FIDE_HistorialProducto_TB_UpdateEstadoInactivo_SP(P_ID_PRODUCTO_FK IN NUMBER);
PROCEDURE FIDE_HistorialProducto_TB_UpdateEstadoActivo_SP(P_ID_PRODUCTO_FK IN NUMBER);
PROCEDURE FIDE_Horarios_TB_UpdateEstadoInactivo_SP(P_ID_Horario IN NUMBER);
PROCEDURE FIDE_Horarios_TB_UpdateEstadoActivo_SP(P_ID_Horario IN NUMBER);
PROCEDURE FIDE_Inventario_TB_UpdateEstadoInactivo_SP(P_ID_INVENTARIO IN NUMBER);
PROCEDURE FIDE_Inventario_TB_UpdateEstadoActivo_SP(P_ID_INVENTARIO IN NUMBER);
PROCEDURE FIDE_PedidoProveedor_TB_UpdateEstadoInactivo_SP(P_ID_PEDIDOPROVEEDOR IN NUMBER); 
PROCEDURE FIDE_PedidoProveedor_TB_UpdateEstadoActivo_SP(P_ID_PEDIDOPROVEEDOR IN NUMBER);
PROCEDURE FIDE_Producto_TB_UpdateEstadoInactivo_SP(P_ID_PRODUCTO IN NUMBER);
PROCEDURE FIDE_Producto_TB_UpdateEstadoActivo_SP(P_ID_PRODUCTO IN NUMBER);
PROCEDURE FIDE_ProductosPromocion_TB_UpdateEstadoInactivo_SP(P_ID_PROMOCIONES_FK IN NUMBER,P_ID_PRODUCTO_FK IN NUMBER );
PROCEDURE FIDE_ProductosPromocion_TB_UpdateEstadoActivo_SP(P_ID_PROMOCIONES_FK IN NUMBER,P_ID_PRODUCTO_FK IN NUMBER );
PROCEDURE FIDE_Promociones_TB_UpdateEstadoInactivo_SP(P_ID_PROMOCIONES IN NUMBER);
PROCEDURE FIDE_Promociones_TB_UpdateEstadoActivo_SP(P_ID_PROMOCIONES IN NUMBER);
PROCEDURE FIDE_Provincia_TB_UpdateEstadoInactivo_SP(P_ID_Provincia IN NUMBER);
PROCEDURE FIDE_Provincia_TB_UpdateEstadoActivo_SP(P_ID_Provincia IN NUMBER);
PROCEDURE FIDE_Roles_TB_UpdateEstadoInactivo_SP(P_ID_Rol IN NUMBER);
PROCEDURE FIDE_Roles_TB_UpdateEstadoActivo_SP(P_ID_Rol IN NUMBER);
PROCEDURE FIDE_Ubicacion_TB_UpdateEstadoInactivo_SP(P_ID_Ubicacion IN NUMBER);
PROCEDURE FIDE_Ubicacion_TB_UpdateEstadoActivo_SP(P_ID_Ubicacion IN NUMBER);
PROCEDURE FIDE_Venta_TB_UpdateEstadoInactivo_SP(P_ID_Venta IN NUMBER);
PROCEDURE FIDE_Venta_TB_UpdateEstadoActivo_SP(P_ID_Venta IN NUMBER);
PROCEDURE FIDE_LOGIN_SP (p_EMAIL IN VARCHAR2,p_PASSWORD IN VARCHAR2,p_USER_ID OUT NUMBER,p_NAME OUT VARCHAR2,
                         p_LAST_NAME OUT VARCHAR2,p_SECOND_LAST_NAME OUT VARCHAR2,p_EMAIL_OUT OUT VARCHAR2,
                         p_PHONE OUT VARCHAR2,p_ROL OUT VARCHAR2,p_ESTADO OUT NUMBER,p_USA_CLAVE_TEMP OUT NUMBER,
                         p_VIGENCIA OUT DATE);
PROCEDURE FIDE_ACTUALIZARCOLABORADOR_SP(p_Identificacion NUMBER, p_Cedula VARCHAR2,p_Nombre VARCHAR2,p_Correo  VARCHAR2,p_Salario NUMBER,
                                        p_IdRol  NUMBER,P_Ubicacion NUMBER, p_Resultado  OUT NUMBER );
PROCEDURE FIDE_ConsultarColaborador_SP (p_Identificacion NUMBER,p_Result OUT SYS_REFCURSOR);
PROCEDURE FIDE_CONSULTARHORARIOS_SP(p_Result OUT SYS_REFCURSOR);
PROCEDURE FIDE_ConsultarDetalleFactura_SP(p_IDFACTURA IN VARCHAR2,p_Result out SYS_REFCURSOR);
PROCEDURE FIDE_ConsultarFacturas_SP(p_Identificacion IN NUMBER,p_Result OUT SYS_REFCURSOR);
PROCEDURE FIDE_MOSTRARCOLABORADORES_SP(p_cursor OUT SYS_REFCURSOR);
PROCEDURE FIDE_ObtenerCategorias_SP( p_Cursor OUT SYS_REFCURSOR);
PROCEDURE FIDE_ActualizarProducto_SP(p_IdProducto IN NUMBER,p_Nombre IN VARCHAR2, p_Precio IN NUMBER,p_Inventario IN NUMBER,
                                     p_Resultado OUT NUMBER); 
PROCEDURE FIDE_ConsultarProducto_SP(p_IdProducto IN NUMBER, p_Cursor OUT SYS_REFCURSOR);
PROCEDURE FIDE_ConsultarProductos_SP (p_cursor OUT SYS_REFCURSOR);
PROCEDURE FIDE_VALIDARUSUARIO_SP (p_CorreoElectronico IN VARCHAR2, p_Result OUT SYS_REFCURSOR);
PROCEDURE FIDE_ActualizarContrasenna_SP ( p_Identificacion IN NUMBER,p_Contrasenna IN VARCHAR2,p_UsaClaveTemp IN NUMBER,  
                                            p_Vigencia IN DATE, p_Result OUT NUMBER );
PROCEDURE FIDE_ConsultarRoles_SP(p_Result OUT SYS_REFCURSOR);
PROCEDURE FIDE_ConsultarCliente_SP (p_Identificacion NUMBER, p_Result OUT SYS_REFCURSOR);
PROCEDURE FIDE_ActualizarPerfil_SP(p_Identificacion NUMBER,p_Cedula VARCHAR2,p_Nombre VARCHAR2,p_Correo VARCHAR2,p_IdRol NUMBER);
PROCEDURE FIDE_ConsultarUsuario_SP(p_Identificacion NUMBER,p_Result OUT SYS_REFCURSOR);
PROCEDURE FIDE_ConsultarClientes_SP(p_Result OUT SYS_REFCURSOR);
PROCEDURE FIDE_ActualizarCliente_SP(p_Identificacion NUMBER, p_Cedula VARCHAR2,p_Nombre VARCHAR2,p_Correo VARCHAR2,p_Resultado OUT NUMBER);
PROCEDURE FIDE_ConsultarCarrito_SP (p_Consecutivo IN NUMBER,p_Cursor OUT SYS_REFCURSOR); 
PROCEDURE FIDE_RegistrarCarrito_SP(p_IdUsuario IN NUMBER,p_idProducto IN NUMBER,p_Unidades IN NUMBER);
PROCEDURE FIDE_RemoverProductoCarrito_SP(p_IdUsuario NUMBER,p_IdProducto NUMBER);
PROCEDURE FIDE_PagarCarrito_SP(p_Identificacion NUMBER);
PROCEDURE FIDE_RegistrarProducto_SP(p_Nombre VARCHAR2,p_Precio NUMBER,p_Stock NUMBER,p_IdCategoria NUMBER,p_IdProducto OUT NUMBER);

End FIDE_ProyectoLenguajes_PCK;