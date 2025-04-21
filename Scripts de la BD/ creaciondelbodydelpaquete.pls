create or replace PACKAGE body FIDE_ProyectoLenguajes_PCK as

FUNCTION Fide_Canton_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Canton_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Canton_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Categorias_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Categorias_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Categorias_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Claves_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Claves_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Claves_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Clientes_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Clientes_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Clientes_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Colaboradores_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Colaboradores_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Colaboradores_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Distrito_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Distrito_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Distrito_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Estado_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Estado_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Estado_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_HeaderFactura_TB_GENERARID_SEQ_FN RETURN VARCHAR2
as
V_Letra char(1);
V_Sequencia Varchar2(50);
begin
V_Letra:=CHR(65+trunc(DBMS_RAnDOM.Value(0,26)));
V_Sequencia := to_char (SYSDate,'ddmmyyyy')||'-'||
                FIDE_HeaderFactura_TB_SEQ.nextval||'-'||V_Letra;
RETURN V_Sequencia;
end;


FUNCTION FIDE_HistorialCompras_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_HistorialCompras_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_HistorialCompras_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_Provincia_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_Provincia_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_Provincia_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_Ubicacion_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_Ubicacion_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_Ubicacion_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_Roles_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_Roles_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_Roles_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_Producto_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_Producto_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_Producto_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_Horarios_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_Horarios_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_Horarios_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Proveedores_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Proveedores_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Proveedores_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Venta_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_Venta_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_Venta_TB_GENERARID_SEQ_FN;

FUNCTION Fide_PedidoProveedor_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=Fide_PedidoProveedor_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END Fide_PedidoProveedor_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_Promociones_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_Promociones_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_Promociones_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_Inventario_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_Inventario_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_Inventario_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_HistorialProducto_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_HistorialProducto_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_HistorialProducto_TB_GENERARID_SEQ_FN;

FUNCTION FIDE_CARRITO_TB_GENERARID_SEQ_FN RETURN number
AS
V_SEQUENCIA number;
BEGIN
V_SEQUENCIA:=FIDE_CARRITO_TB_SEQ.NEXTVAL;                 
RETURN V_SEQUENCIA;
END FIDE_CARRITO_TB_GENERARID_SEQ_FN;

FUNCTION Fide_Claves_TB_ObtenerClave_FN(P_ID_CLAVE IN NUMBER)
RETURN Varchar2 IS
    v_clave varchar2(100);
BEGIN
    SELECT CLAVE
    INTO v_clave
    FROM FIDE_Claves_TB
    WHERE ID_Clave = P_ID_CLAVE;

    RETURN v_clave;
END Fide_Claves_TB_ObtenerClave_FN;

FUNCTION Fide_Proveedores_TB_CorreoProveedor_FN(p_ID_PROVEEDOR IN NUMBER) RETURN VARCHAR2 IS
    v_correo VARCHAR2(100);
    CURSOR P_Proveedor IS 
    SELECT CORREO_EMPRESA 
    FROM FIDE_Proveedores_TB 
    WHERE ID_Proveedor = p_ID_PROVEEDOR;
BEGIN
    OPEN P_Proveedor;
    FETCH P_Proveedor INTO v_correo;
    CLOSE P_Proveedor;
    RETURN v_correo;
END Fide_Proveedores_TB_CorreoProveedor_FN;

FUNCTION Fide_Clientes_TB_CorreoClientes_FN(p_ID_CLIENTE IN NUMBER) RETURN VARCHAR2 IS
    v_correo VARCHAR2(100);
    CURSOR C_Cliente IS 
    SELECT CORREO_CLIENTE 
    FROM FIDE_CLIENTES_TB 
    WHERE ID_CLIENTE = p_ID_CLIENTE;
BEGIN
    OPEN C_Cliente;
    FETCH C_Cliente INTO v_correo;
    CLOSE C_Cliente;
    RETURN v_correo;
END Fide_Clientes_TB_CorreoClientes_FN;

FUNCTION FIDE_COLABORADORES_TB_CorreoCOLABORADORES_FN(p_ID_COLABORADOR IN NUMBER) RETURN VARCHAR2 IS
    v_correo VARCHAR2(100);
    CURSOR C_COLABORADOR IS 
    SELECT CORREO_COLABORADOR 
    FROM FIDE_COLABORADORES_TB 
    WHERE ID_COLABORADOR = p_ID_COLABORADOR;
BEGIN
    OPEN C_COLABORADOR;
    FETCH C_COLABORADOR INTO v_correo;
    CLOSE C_COLABORADOR;
    RETURN v_correo;
END FIDE_COLABORADORES_TB_CorreoCOLABORADORES_FN;

FUNCTION FIDE_COLABORADORES_TB_TelefonoColaborador_FN(p_ID_COLABORADOR IN NUMBER) RETURN VARCHAR2 IS
    v_Tel VARCHAR2(100);
    CURSOR C_COLABORADOR IS 
    SELECT TELEFONO_COLABORADOR 
    FROM FIDE_COLABORADORES_TB 
    WHERE ID_COLABORADOR = p_ID_COLABORADOR;
BEGIN
    OPEN C_COLABORADOR;
    FETCH C_COLABORADOR INTO v_Tel;
    CLOSE C_COLABORADOR;
    RETURN v_Tel;
END FIDE_COLABORADORES_TB_TelefonoColaborador_FN;

FUNCTION FIDE_CLIENTES_TB_TelefonoCliente_FN(p_ID_CLIENTE IN NUMBER) RETURN VARCHAR2 IS
    v_Tel VARCHAR2(100);
    CURSOR C_Cliente IS 
    SELECT TELEFONO_CLIENTE 
    FROM FIDE_CLIENTES_TB 
    WHERE ID_CLIENTE = p_ID_CLIENTE;
BEGIN
    OPEN C_Cliente;
    FETCH C_Cliente INTO v_Tel;
    CLOSE C_Cliente;
    RETURN v_Tel;
END FIDE_CLIENTES_TB_TelefonoCliente_FN;

FUNCTION FIDE_PROVEEDORES_TB_Telefonoproveedor_FN(p_ID_PROVEEDOR IN NUMBER) RETURN VARCHAR2 IS
    v_Tel VARCHAR2(100);
    CURSOR P_Proveedor IS 
    SELECT TELEFONO_EMPRESA 
    FROM FIDE_PROVEEDORES_TB 
    WHERE ID_PROVEEDOR = ID_PROVEEDOR;
BEGIN
    OPEN P_Proveedor;
    FETCH P_Proveedor INTO v_Tel;
    CLOSE P_Proveedor;
    RETURN v_Tel;
END FIDE_PROVEEDORES_TB_Telefonoproveedor_FN;

FUNCTION FIDE_INVENTARIO_TB_ObtenerStockDeUnProducto_FN(P_ID_Producto_fk IN NUMBER)
RETURN NUMBER IS
    v_stock_Actual NUMBER;
    CURSOR I_stock_Actual IS
        SELECT STOCK
        FROM FIDE_Inventario_TB
        WHERE ID_PRODUCTO_FK = P_ID_Producto_fk;
BEGIN
    OPEN I_stock_Actual;
    FETCH I_stock_Actual INTO v_stock_Actual;
    CLOSE I_stock_Actual;
    RETURN v_stock_Actual;
END;

FUNCTION FIDE_Colaboradores_TB_ObtenerNombreRolColaborador_FN(P_ID_Colaborador IN NUMBER)
RETURN VARCHAR2 IS
    v_nombreRol VARCHAR2(100);
    CURSOR N_Rol IS
        SELECT R.NOMBRE_ROL
        FROM FIDE_Colaboradores_TB C
        JOIN FIDE_Roles_TB R ON C.ID_ROL_FK = R.ID_ROL
        WHERE C.ID_COLABORADOR = P_ID_Colaborador;
BEGIN
    OPEN N_Rol;
    FETCH N_Rol INTO v_nombreRol;
    CLOSE N_Rol;
    RETURN v_nombreRol;
END;

FUNCTION Fide_Distrito_TB_ObtenerNombreDistrito_FN(P_ID_Distrito IN NUMBER) RETURN VARCHAR2 IS
    v_nombre_Distrito VARCHAR2(100);
    CURSOR D_distrito IS
        SELECT Descripcion
        FROM FIDE_Distrito_TB
        WHERE ID_DISTRITO = P_ID_Distrito;
BEGIN
    OPEN D_distrito;
    FETCH D_distrito INTO v_nombre_Distrito;
    CLOSE D_distrito;
    RETURN v_nombre_Distrito;
END;

FUNCTION Fide_Canton_TB_ObtenerNombreCanton_FN(P_ID_Canton IN NUMBER) RETURN VARCHAR2 IS
    v_nombre_Canton VARCHAR2(100);
    CURSOR C_Canton IS
        SELECT Descripcion
        FROM FIDE_Canton_TB
        WHERE ID_Canton = P_ID_Canton;
BEGIN
    OPEN C_Canton;
    FETCH C_Canton INTO v_nombre_Canton;
    CLOSE C_Canton;
    RETURN v_nombre_Canton;
END;

FUNCTION Fide_Provincia_TB_ObtenerNombreProvincia_FN(P_ID_Provincia IN NUMBER) RETURN VARCHAR2 IS
    v_nombre_Provincia VARCHAR2(100);
    CURSOR P_Provincia IS
        SELECT Descripcion
        FROM FIDE_Provincia_TB
        WHERE ID_Provincia = P_ID_Provincia;
BEGIN
    OPEN P_Provincia;
    FETCH P_Provincia INTO v_nombre_Provincia;
    CLOSE P_Provincia;
    RETURN v_nombre_Provincia;
END;

FUNCTION FIDE_COLABORADORES_TB_NombreColaborador_FN(p_ID_COLABORADOR IN NUMBER) RETURN VARCHAR2 IS
    v_Nombre VARCHAR2(100);
    CURSOR C_COLABORADOR IS 
    SELECT NOMBRE_COLABORADOR 
    FROM FIDE_COLABORADORES_TB 
    WHERE ID_COLABORADOR = p_ID_COLABORADOR;
BEGIN
    OPEN C_COLABORADOR;
    FETCH C_COLABORADOR INTO v_Nombre;
    CLOSE C_COLABORADOR;
    RETURN v_Nombre;
END FIDE_COLABORADORES_TB_NombreColaborador_FN;

FUNCTION FIDE_CLIENTES_TB_NombreCliente_FN(p_ID_CLIENTE IN NUMBER) RETURN VARCHAR2 IS
    v_Nombre VARCHAR2(100);
    CURSOR C_Cliente IS 
    SELECT NOMBRE_CLIENTE 
    FROM FIDE_CLIENTES_TB 
    WHERE ID_CLIENTE = p_ID_CLIENTE;
BEGIN
    OPEN C_Cliente;
    FETCH C_Cliente INTO v_Nombre;
    CLOSE C_Cliente;
    RETURN v_Nombre;
END FIDE_CLIENTES_TB_NombreCliente_FN;

FUNCTION FIDE_PROVEEDORES_TB_Nombreproveedor_FN(p_ID_PROVEEDOR IN NUMBER) RETURN VARCHAR2 IS
    v_Nombre VARCHAR2(100);
    CURSOR P_Proveedor IS 
    SELECT NOMBRE_EMPRESA 
    FROM FIDE_PROVEEDORES_TB 
    WHERE ID_PROVEEDOR = ID_PROVEEDOR;
BEGIN
    OPEN P_Proveedor;
    FETCH P_Proveedor INTO v_Nombre;
    CLOSE P_Proveedor;
    RETURN v_Nombre;
END FIDE_PROVEEDORES_TB_Nombreproveedor_FN;
------------------------------------------------------------------------------------------------------------
Procedure FIDE_Estado_TB_Insertar_SP(P_Descripcion in Varchar2)as

Begin                                         
        insert into FIDE_Estado_TB(Descripcion)
                                Values
                                (P_Descripcion);
        Commit;

End FIDE_Estado_TB_Insertar_SP;

Procedure FIDE_Distrito_TB_Insertar_SP(P_Descripcion in Varchar2)as

Begin                                         
        insert into FIDE_Distrito_TB(Descripcion)
                                Values
                                (P_Descripcion);
        Commit;

End FIDE_Distrito_TB_Insertar_SP;

Procedure FIDE_Canton_TB_Insertar_SP(P_Descripcion in Varchar2,P_ID_Distrito_FK in number)as

Begin                                         
        insert into FIDE_Canton_TB(Descripcion,ID_Distrito_FK)
                                Values
                                (P_Descripcion,P_ID_Distrito_FK);
        Commit;

End FIDE_Canton_TB_Insertar_SP;

Procedure FIDE_Provincia_TB_Insertar_SP(P_Descripcion in Varchar2,P_ID_Canton_FK in number)as

Begin                                         
        insert into FIDE_Provincia_TB(Descripcion,ID_Canton_FK)
                                Values
                                (P_Descripcion,P_ID_Canton_FK);
        Commit;

End FIDE_Provincia_TB_Insertar_SP;

Procedure FIDE_Ubicacion_TB_Insertar_SP(P_ID_Provincia_FK in number)as

Begin                                         
        insert into FIDE_Ubicacion_TB(ID_Provincia_FK)
                                Values
                                (P_ID_Provincia_FK);
        Commit;

End FIDE_Ubicacion_TB_Insertar_SP;

Procedure FIDE_Roles_TB_Insertar_SP(P_Nombre_Rol in Varchar2)as

Begin                                         
        insert into FIDE_Roles_TB(Nombre_Rol)
                                Values
                                (P_Nombre_Rol);
        Commit;

End FIDE_Roles_TB_Insertar_SP;

Procedure FIDE_Categorias_TB_Insertar_SP(P_Nombre_Categoria in Varchar2)as

Begin                                         
        insert into FIDE_Categorias_TB(Nombre_Categoria)
                                Values
                                (P_Nombre_Categoria);
        Commit;

End FIDE_Categorias_TB_Insertar_SP;


Procedure FIDE_Horarios_TB_Insertar_SP(P_Hora_Entrada in TimeStamp,P_Hora_Salida in TimeStamp,
                                                         P_Dias_Laborales in number)as

Begin                                         
        insert into FIDE_Horarios_TB(Hora_Entrada,Hora_Salida,Dias_Laborales)
                                Values
                                (P_Hora_Entrada,P_Hora_Salida, P_Dias_Laborales);
        Commit;

End FIDE_Horarios_TB_Insertar_SP;

Procedure FIDE_Colaboradores_TB_Insertar_SP(P_Nombre_Colaborador in Varchar2,P_Telefono_Colaborador in Varchar2,
                                            P_Correo_Colaborador in Varchar2,P_Salario_Colaborador in number,
                                            P_Fecha_Contratacion in timestamp ,P_CLAVE_COLABORADOR in varchar2,
                                            P_ID_Rol_FK in number,P_ID_Horario_FK in number,P_ID_Ubicacion_FK in number,p_cedula IN VARCHAR2,P_ROWS_AFFECTED OUT NUMBER )as

L_Key raw (32);
L_data varchar2(100);
L_data2 varchar2(100);
L_Encriptar_Data raw(2000);
L_Encriptar_Data2 raw(2000);
v_correo number;
Begin
        SELECT COUNT(*)
    INTO v_correo
    FROM FIDE_COLABORADORES_TB
    WHERE ID_COLABORADOR = p_cedula
       OR CORREO_COLABORADOR = P_CORREO_COLABORADOR;

        Select Clave into L_Key
        From Fide_Claves_Tb
        where ID_Clave=22;

        L_data := To_Char(P_Salario_Colaborador);
        L_data2 := To_Char(P_CLAVE_COLABORADOR);

        L_Encriptar_Data := DBMS_CRYPTO.ENCRYPT(
                                                    SRC=>UTL_RAW.CAST_TO_RAW(L_data),
                                                    TYP=>DBMS_CRYPTO.ENCRYPT_AES256+DBMS_CRYPTO.CHAIN_CBC
                                                    +DBMS_CRYPTO.PAD_PKCS5, key=> L_Key);
        L_Encriptar_Data2 := DBMS_CRYPTO.ENCRYPT(
                                                    SRC=>UTL_RAW.CAST_TO_RAW(L_data2),
                                                    TYP=>DBMS_CRYPTO.ENCRYPT_AES256+DBMS_CRYPTO.CHAIN_CBC
                                                    +DBMS_CRYPTO.PAD_PKCS5, key=> L_Key);
                                                    
       INSERT INTO FIDE_Colaboradores_TB (
        Cedula,
        NOMBRE_COLABORADOR, 
        SALARIO_COLABORADOR, 
        TELEFONO_COLABORADOR, 
        CLAVE_COLABORADOR, 
        FECHA_CONTRATACION,
        ID_ROL_FK, 
        ID_HORARIO_FK, 
        ID_UBICACION_FK, 
        CORREO_COLABORADOR
    ) 
    VALUES (
        p_cedula,
        P_NOMBRE_COLABORADOR, 
        L_Encriptar_Data,  
        P_TELEFONO_COLABORADOR, 
        L_Encriptar_Data2,    
        sysTIMESTAMP, 
        P_ID_ROL_FK, 
        P_ID_HORARIO_FK, 
        P_ID_UBICACION_FK, 
        P_CORREO_COLABORADOR
    );
    -- Return the number of rows inserted
    P_ROWS_AFFECTED := SQL%ROWCOUNT;

        Commit;

End FIDE_Colaboradores_TB_Insertar_SP;

PROCEDURE FIDE_Clientes_TB_Insertar_SP(p_cedula IN VARCHAR2,p_Identificacion IN NUMBER,p_Nombre IN VARCHAR2,p_telefono IN VARCHAR2,
                              p_ubicacion IN NUMBER,p_Correo IN VARCHAR2, p_Contrasenna IN VARCHAR2) AS
    v_EstadoActivo NUMBER := 1; 
    v_UsaClaveTemp NUMBER := 0; 
    v_ClienteCount NUMBER;
    L_KEY RAW(32);          -- Store encryption key
    L_DATA VARCHAR2(100);   -- Store data to encrypt
    L_ENCRIPTAR_CLAVE RAW(2000); -- Store encrypted password (clave)
BEGIN
    -- Check if the client already exists bas ed on ID or email
    SELECT COUNT(*)
    INTO v_ClienteCount
    FROM FIDE_CLIENTES_TB
    WHERE ID_CLIENTE = p_Identificacion
       OR CORREO_CLIENTE = p_Correo;

    IF v_ClienteCount = 0 THEN
        -- Get the encryption key from the FIDE_CLAVES_TB table
        SELECT CLAVE
        INTO L_KEY
        FROM FIDE_CLAVES_TB
        WHERE ID_CLAVE = 22;  -- Assuming we use ID_CLAVE = 1 for the default key

        -- Encrypt the password (p_Contrasenna)
        L_DATA := p_Contrasenna;  -- Directly use the password to encrypt
        DBMS_OUTPUT.PUT_LINE('L_DATA (before encryption for CLAVE): ' || L_DATA);

        L_ENCRIPTAR_CLAVE := DBMS_CRYPTO.ENCRYPT(
                                SRC => UTL_RAW.CAST_TO_RAW(L_DATA),
                                TYP => DBMS_CRYPTO.ENCRYPT_AES256 + DBMS_CRYPTO.CHAIN_CBC + DBMS_CRYPTO.PAD_PKCS5,
                                KEY => L_KEY
                              );

        -- Insert into FIDE_CLIENTES_TB table with encrypted password
        INSERT INTO FIDE_CLIENTES_TB (
            CEDULA,
            ID_CLIENTE,
            NOMBRE_CLIENTE,
            PRIMER_APELLIDO_CLIENTE,
            SEGUNDO_APELLIDO_CLIENTE,
            TELEFONO_CLIENTE,
            CORREO_CLIENTE,
            CLAVE_CLIENTE,
            ID_UBICACION_FK,
            USACLAVETEMP,
            VIGENCIA
        ) VALUES (
            p_cedula,
            p_Identificacion, 
            p_Nombre,
            NULL,  -- Assuming null for last name
            NULL,  -- Assuming null for second last name
            p_telefono, 
            p_Correo,
            L_ENCRIPTAR_CLAVE,  -- Insert encrypted password
            p_ubicacion, 
            v_UsaClaveTemp,
            SYSDATE 
        );

        COMMIT;
    END IF;
END FIDE_Clientes_TB_Insertar_SP;

Procedure Fide_Proveedores_TB_Insertar_SP(P_Nombre_Empresa in Varchar2,P_Telefono_Empresa in Varchar2,
                                          P_Correo_Empresa in Varchar2,P_ID_Ubicacion_FK in number)as    
Begin                                              
        insert into Fide_Proveedores_TB(Nombre_Empresa,Telefono_Empresa,Correo_Empresa,ID_Ubicacion_FK)
                                Values
                                (P_Nombre_Empresa,P_Telefono_Empresa, P_Correo_Empresa, P_ID_Ubicacion_FK);
        Commit;

End Fide_Proveedores_TB_Insertar_SP;

Procedure FIDE_Inventario_TB_Insertar_SP(P_Stock in number,P_ID_Producto_FK in number)as    
Begin                                              
        insert into FIDE_Inventario_TB(Stock,ID_Producto_FK)
                                Values
                                (P_Stock,P_ID_Producto_FK);
        Commit;

End FIDE_Inventario_TB_Insertar_SP;



Procedure FIDE_Promociones_TB_Insertar_SP(P_Fecha_Inicio in date,P_Fecha_Final in date,P_Descripcion in Varchar2,P_Descuento in Number)as    
Begin                                              
        insert into FIDE_Promociones_TB(Fecha_Inicio,Fecha_Final,Descripcion,Descuento)
                                Values
                                (P_Fecha_Inicio,P_Fecha_Final,P_Descripcion,P_Descuento);
        Commit;

End FIDE_Promociones_TB_Insertar_SP;
 
Procedure FIDE_HistorialProducto_TB_Insertar_SP(P_ID_Producto_FK in number,P_Cantidad in Number)as    
Begin                                              
        insert into FIDE_HistorialProducto_TB(ID_Producto_FK,Cantidad)
                                Values
                                (P_ID_Producto_FK,P_Cantidad);
        Commit;

End FIDE_HistorialProducto_TB_Insertar_SP;

Procedure FIDE_ProductosPromocion_TB_Insertar_SP(P_ID_Producto_FK in Number,P_ID_Promociones_FK in number)as    
Begin                                              
        insert into FIDE_ProductosPromocion_TB(ID_Producto_FK,ID_Promociones_FK)
                                Values
                                (P_ID_Producto_FK,P_ID_Promociones_FK);
        Commit;

End FIDE_ProductosPromocion_TB_Insertar_SP;

Procedure Fide_Claves_TB_Insertar_SP(P_Clave in Raw)as    
Begin                                              
        insert into Fide_Claves_TB(Clave)
                                Values
                                (P_Clave);
        Commit;

End Fide_Claves_TB_Insertar_SP;

PROCEDURE FIDE_Inventario_TB_UpdateEstadoInventario_SP IS
    CURSOR I_inventario IS
        SELECT ID_Producto_FK
        FROM FIDE_Inventario_TB
        WHERE STOCK = 0;

BEGIN

    FOR Rec IN I_inventario LOOP
        UPDATE FIDE_Inventario_TB
        SET ID_Estado_FK = 2
        WHERE ID_Producto_FK = Rec.ID_Producto_FK;
    END LOOP;

    COMMIT;
END FIDE_Inventario_TB_UpdateEstadoInventario_SP;

PROCEDURE FIDE_Inventario_TB_UpdateEstadoInventarioActivar_SP IS
    CURSOR I_inventario IS
        SELECT ID_Producto_FK
        FROM FIDE_Inventario_TB
        WHERE STOCK >= 1;

BEGIN

    FOR Rec IN I_inventario LOOP
        UPDATE FIDE_Inventario_TB
        SET ID_Estado_FK = 1
        WHERE ID_Producto_FK = Rec.ID_Producto_FK;
    END LOOP;

    COMMIT;
END  FIDE_Inventario_TB_UpdateEstadoInventarioActivar_SP;

PROCEDURE FIDE_Inventario_TB_ActualizarStock_SP (
    P_ID_PRODUCTO IN NUMBER,
    P_CANTIDAD IN NUMBER
) IS
BEGIN
    UPDATE FIDE_Inventario_TB
    SET STOCK = STOCK + P_CANTIDAD
    WHERE ID_PRODUCTO_FK = P_ID_PRODUCTO;

    COMMIT;
END FIDE_Inventario_TB_ActualizarStock_SP;

PROCEDURE FIDE_Proveedores_TB_UpdateEstadoproveedor_SP(P_IDProveedor in number) as
    
BEGIN
        UPDATE FIDE_Proveedores_TB
        SET ID_Estado_FK = 2
        WHERE ID_PROVEEDOR = P_IDProveedor;
    COMMIT;
END FIDE_Proveedores_TB_UpdateEstadoproveedor_SP;

PROCEDURE FIDE_Proveedores_TB_UpdateEstadoproveedorActivo_SP(P_IDProveedor in number) as
    
BEGIN  
        UPDATE FIDE_Proveedores_TB
        SET ID_Estado_FK = 1
        WHERE ID_PROVEEDOR = P_IDProveedor;
    COMMIT;
END FIDE_Proveedores_TB_UpdateEstadoproveedorActivo_SP;

PROCEDURE FIDE_Canton_TB_UpdateEstadoInactivo_SP(P_ID_Canton IN NUMBER) AS
BEGIN
    UPDATE FIDE_Canton_TB
    SET ID_Estado_FK = 2
    WHERE ID_Canton = P_ID_Canton;
    COMMIT;
END FIDE_Canton_TB_UpdateEstadoInactivo_SP;


PROCEDURE FIDE_Canton_TB_UpdateEstadoActivo_SP(P_ID_Canton IN NUMBER) AS
BEGIN
    UPDATE FIDE_Canton_TB
    SET ID_Estado_FK = 1
    WHERE ID_Canton = P_ID_Canton;
    COMMIT;
END FIDE_Canton_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Categorias_TB_UpdateEstadoInactivo_SP(P_ID_Categoria IN NUMBER) AS
BEGIN
    UPDATE FIDE_Categorias_TB
    SET ID_Estado_FK = 2
    WHERE ID_Categoria = P_ID_Categoria;
    COMMIT;
END FIDE_Categorias_TB_UpdateEstadoInactivo_SP;


PROCEDURE FIDE_Categorias_TB_UpdateEstadoActivo_SP(P_ID_Categoria IN NUMBER) AS
BEGIN
    UPDATE FIDE_Categorias_TB
    SET ID_Estado_FK = 1
    WHERE ID_Categoria = P_ID_Categoria;
    COMMIT;
END FIDE_Categorias_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Claves_TB_UpdateEstadoInactivo_SP(P_ID_Clave IN NUMBER) AS
BEGIN
    UPDATE FIDE_Claves_TB
    SET ID_Estado_FK = 2
    WHERE ID_Clave = P_ID_Clave;
    COMMIT;
END FIDE_Claves_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Claves_TB_UpdateEstadoActivo_SP(P_ID_Clave IN NUMBER) AS
BEGIN
    UPDATE FIDE_Claves_TB
    SET ID_Estado_FK = 1
    WHERE ID_Clave = P_ID_Clave;
    COMMIT;
END FIDE_Claves_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Clientes_TB_UpdateEstadoInactivo_SP(P_ID_Cliente IN NUMBER) AS
BEGIN
    UPDATE FIDE_Clientes_TB
    SET ID_Estado_FK = 2
    WHERE ID_Cliente = P_ID_Cliente;
    COMMIT;
END FIDE_Clientes_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Clientes_TB_UpdateEstadoActivo_SP(P_ID_Cliente IN NUMBER) AS
BEGIN
    UPDATE FIDE_Clientes_TB
    SET ID_Estado_FK = 1
    WHERE ID_Cliente = P_ID_Cliente;
    COMMIT;
END FIDE_Clientes_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Colaboradores_TB_UpdateEstadoInactivo_SP(P_ID_Colaborador IN NUMBER) AS
BEGIN
    UPDATE FIDE_Colaboradores_TB
    SET ID_Estado_FK = 2
    WHERE ID_Colaborador = P_ID_Colaborador;
    COMMIT;
END FIDE_Colaboradores_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Colaboradores_TB_UpdateEstadoActivo_SP(P_ID_Colaborador IN NUMBER) AS
BEGIN
    UPDATE FIDE_Colaboradores_TB
    SET ID_Estado_FK = 1
    WHERE ID_Colaborador = P_ID_Colaborador;
    COMMIT;
END FIDE_Colaboradores_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Distrito_TB_UpdateEstadoInactivo_SP(P_ID_Distrito IN NUMBER) AS
BEGIN
    UPDATE FIDE_Distrito_TB
    SET ID_Estado_FK = 2
    WHERE ID_Distrito = P_ID_Distrito;
    COMMIT;
END FIDE_Distrito_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Distrito_TB_UpdateEstadoActivo_SP(P_ID_Distrito IN NUMBER) AS
BEGIN
    UPDATE FIDE_Distrito_TB
    SET ID_Estado_FK = 1
    WHERE ID_Distrito = P_ID_Distrito;
    COMMIT;
END FIDE_Distrito_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_DetallePediPoProveedor_TB_UpdateEstadoInactivo_SP(P_ID_PEDIDOPROVEEDOR_FK IN NUMBER) AS
BEGIN
    UPDATE FIDE_DetallePediPoProveedor_TB
    SET ID_Estado_FK = 2
    WHERE ID_PEDIDOPROVEEDOR_FK = P_ID_PEDIDOPROVEEDOR_FK;
    COMMIT;
END FIDE_DetallePediPoProveedor_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_DetallePediPoProveedor_TB_UpdateEstadoActivo_SP(P_ID_PEDIDOPROVEEDOR_FK IN NUMBER) AS
BEGIN
    UPDATE FIDE_DetallePediPoProveedor_TB
    SET ID_Estado_FK = 1
    WHERE ID_PEDIDOPROVEEDOR_FK = P_ID_PEDIDOPROVEEDOR_FK;
    COMMIT;
END FIDE_DetallePediPoProveedor_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_DetalleFactura_TB_UpdateEstadoInactivo_SP(P_ID_FACTURA_FK IN varchar2) AS
BEGIN
    UPDATE FIDE_DetalleFactura_TB
    SET ID_Estado_FK = 2
    WHERE ID_FACTURA_FK = P_ID_FACTURA_FK;
    COMMIT;
END FIDE_DetalleFactura_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_DetalleFactura_TB_UpdateEstadoActivo_SP(P_ID_FACTURA_FK IN varchar2) AS
BEGIN
    UPDATE FIDE_DetalleFactura_TB
    SET ID_Estado_FK = 1
    WHERE ID_FACTURA_FK = P_ID_FACTURA_FK;
    COMMIT;
END FIDE_DetalleFactura_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_HeaderFactura_TB_UpdateEstadoInactivo_SP(P_ID_FACTURA IN varchar2) AS
BEGIN
    UPDATE FIDE_HeaderFactura_TB
    SET ID_Estado_FK = 2
    WHERE ID_FACTURA = P_ID_FACTURA;
    COMMIT;
END FIDE_HeaderFactura_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_HeaderFactura_TB_UpdateEstadoActivo_SP(P_ID_FACTURA IN varchar2) AS
BEGIN
    UPDATE FIDE_HeaderFactura_TB
    SET ID_Estado_FK = 1
    WHERE ID_FACTURA = P_ID_FACTURA;
    COMMIT;
END FIDE_HeaderFactura_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_HistorialCompras_TB_UpdateEstadoInactivo_SP(P_ID_HISTORIAL IN NUMBER) AS
BEGIN
    UPDATE FIDE_HistorialCompras_TB
    SET ID_Estado_FK = 2
    WHERE ID_HISTORIAL = P_ID_HISTORIAL;
    COMMIT;
END FIDE_HistorialCompras_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_HistorialCompras_TB_UpdateEstadoActivo_SP(P_ID_HISTORIAL IN NUMBER) AS
BEGIN
    UPDATE FIDE_HistorialCompras_TB
    SET ID_Estado_FK = 1
    WHERE ID_HISTORIAL = P_ID_HISTORIAL;
    COMMIT;
END FIDE_HistorialCompras_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_HistorialProducto_TB_UpdateEstadoInactivo_SP(P_ID_PRODUCTO_FK IN NUMBER) AS
BEGIN
    UPDATE FIDE_HistorialProducto_TB
    SET ID_Estado_FK = 2
    WHERE ID_PRODUCTO_FK = P_ID_PRODUCTO_FK;
    COMMIT;
END FIDE_HistorialProducto_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_HistorialProducto_TB_UpdateEstadoActivo_SP(P_ID_PRODUCTO_FK IN NUMBER) AS
BEGIN
    UPDATE FIDE_HistorialProducto_TB
    SET ID_Estado_FK = 1
    WHERE ID_PRODUCTO_FK = P_ID_PRODUCTO_FK;
    COMMIT;
END FIDE_HistorialProducto_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Horarios_TB_UpdateEstadoInactivo_SP(P_ID_Horario IN NUMBER) AS
BEGIN
    UPDATE FIDE_Horarios_TB
    SET ID_Estado_FK = 2
    WHERE ID_Horario = P_ID_Horario;
    COMMIT;
END FIDE_Horarios_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Horarios_TB_UpdateEstadoActivo_SP(P_ID_Horario IN NUMBER) AS
BEGIN
    UPDATE FIDE_Horarios_TB
    SET ID_Estado_FK = 1
    WHERE ID_Horario = P_ID_Horario;
    COMMIT;
END FIDE_Horarios_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Inventario_TB_UpdateEstadoInactivo_SP(P_ID_INVENTARIO IN NUMBER) AS
BEGIN
    UPDATE FIDE_Inventario_TB
    SET ID_Estado_FK = 2
    WHERE ID_Inventario = P_ID_INVENTARIO;
    COMMIT;
END FIDE_Inventario_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Inventario_TB_UpdateEstadoActivo_SP(P_ID_INVENTARIO IN NUMBER) AS
BEGIN
    UPDATE FIDE_Inventario_TB
    SET ID_Estado_FK = 1
    WHERE ID_Inventario = P_ID_INVENTARIO;
    COMMIT;
END FIDE_Inventario_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_PedidoProveedor_TB_UpdateEstadoInactivo_SP(P_ID_PEDIDOPROVEEDOR IN NUMBER) AS
BEGIN
    UPDATE FIDE_PedidoProveedor_TB
    SET ID_Estado_FK = 2
    WHERE ID_PedidoProveedor = P_ID_PEDIDOPROVEEDOR;
    COMMIT;
END FIDE_PedidoProveedor_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_PedidoProveedor_TB_UpdateEstadoActivo_SP(P_ID_PEDIDOPROVEEDOR IN NUMBER) AS
BEGIN
    UPDATE FIDE_PedidoProveedor_TB
    SET ID_Estado_FK = 1
    WHERE ID_PedidoProveedor = P_ID_PEDIDOPROVEEDOR;
    COMMIT;
END FIDE_PedidoProveedor_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Producto_TB_UpdateEstadoInactivo_SP(P_ID_PRODUCTO IN NUMBER) AS
BEGIN
    UPDATE FIDE_Producto_TB
    SET ID_Estado_FK = 2
    WHERE ID_Producto = P_ID_PRODUCTO;
    COMMIT;
END FIDE_Producto_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Producto_TB_UpdateEstadoActivo_SP(P_ID_PRODUCTO IN NUMBER) AS
BEGIN
    UPDATE FIDE_Producto_TB
    SET ID_Estado_FK = 1
    WHERE ID_Producto = P_ID_PRODUCTO;
    COMMIT;
END FIDE_Producto_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_ProductosPromocion_TB_UpdateEstadoInactivo_SP(P_ID_PROMOCIONES_FK IN NUMBER,P_ID_PRODUCTO_FK IN NUMBER ) AS
BEGIN
    UPDATE FIDE_ProductosPromocion_TB
    SET ID_Estado_FK = 2
    WHERE ID_PROMOCIONES_FK = P_ID_PROMOCIONES_FK and ID_PRODUCTO_FK = P_ID_PRODUCTO_FK;
    COMMIT;
END FIDE_ProductosPromocion_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_ProductosPromocion_TB_UpdateEstadoActivo_SP(P_ID_PROMOCIONES_FK IN NUMBER,P_ID_PRODUCTO_FK IN NUMBER ) AS
BEGIN
    UPDATE FIDE_ProductosPromocion_TB
    SET ID_Estado_FK = 1
    WHERE ID_PROMOCIONES_FK = P_ID_PROMOCIONES_FK and ID_PRODUCTO_FK = P_ID_PRODUCTO_FK;
    COMMIT;
END FIDE_ProductosPromocion_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Promociones_TB_UpdateEstadoInactivo_SP(P_ID_PROMOCIONES IN NUMBER) AS
BEGIN
    UPDATE FIDE_Promociones_TB
    SET ID_Estado_FK = 2
    WHERE ID_PROMOCIONES = P_ID_PROMOCIONES;
    COMMIT;
END FIDE_Promociones_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Promociones_TB_UpdateEstadoActivo_SP(P_ID_PROMOCIONES IN NUMBER) AS
BEGIN
    UPDATE FIDE_Promociones_TB
    SET ID_Estado_FK = 1
    WHERE ID_PROMOCIONES = P_ID_PROMOCIONES;
    COMMIT;
END FIDE_Promociones_TB_UpdateEstadoActivo_SP;
 
 PROCEDURE FIDE_Provincia_TB_UpdateEstadoInactivo_SP(P_ID_Provincia IN NUMBER) AS
BEGIN
    UPDATE FIDE_Provincia_TB
    SET ID_Estado_FK = 2
    WHERE ID_Provincia = P_ID_Provincia;
    COMMIT;
END FIDE_Provincia_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Provincia_TB_UpdateEstadoActivo_SP(P_ID_Provincia IN NUMBER) AS
BEGIN
    UPDATE FIDE_Provincia_TB
    SET ID_Estado_FK = 1
    WHERE ID_Provincia = P_ID_Provincia;
    COMMIT;
END FIDE_Provincia_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Roles_TB_UpdateEstadoInactivo_SP(P_ID_Rol IN NUMBER) AS
BEGIN
    UPDATE FIDE_Roles_TB
    SET ID_Estado_FK = 2
    WHERE ID_Rol = P_ID_Rol;
    COMMIT;
END FIDE_Roles_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Roles_TB_UpdateEstadoActivo_SP(P_ID_Rol IN NUMBER) AS
BEGIN
    UPDATE FIDE_Roles_TB
    SET ID_Estado_FK = 1
    WHERE ID_Rol = P_ID_Rol;
    COMMIT;
END FIDE_Roles_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Ubicacion_TB_UpdateEstadoInactivo_SP(P_ID_Ubicacion IN NUMBER) AS
BEGIN
    UPDATE FIDE_Ubicacion_TB
    SET ID_Estado_FK = 2
    WHERE ID_Ubicacion = P_ID_Ubicacion;
    COMMIT;
END FIDE_Ubicacion_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Ubicacion_TB_UpdateEstadoActivo_SP(P_ID_Ubicacion IN NUMBER) AS
BEGIN
    UPDATE FIDE_Ubicacion_TB
    SET ID_Estado_FK = 1
    WHERE ID_Ubicacion = P_ID_Ubicacion;
    COMMIT;
END FIDE_Ubicacion_TB_UpdateEstadoActivo_SP;

PROCEDURE FIDE_Venta_TB_UpdateEstadoInactivo_SP(P_ID_Venta IN NUMBER) AS
BEGIN
    UPDATE FIDE_Venta_TB
    SET ID_Estado_FK = 2
    WHERE ID_Venta = P_ID_Venta;
    COMMIT;
END FIDE_Venta_TB_UpdateEstadoInactivo_SP;

PROCEDURE FIDE_Venta_TB_UpdateEstadoActivo_SP(P_ID_Venta IN NUMBER) AS
BEGIN
    UPDATE FIDE_Venta_TB
    SET ID_Estado_FK = 1
    WHERE ID_Venta = P_ID_Venta;
    COMMIT;
END FIDE_Venta_TB_UpdateEstadoActivo_SP;


PROCEDURE FIDE_LOGIN_SP (p_EMAIL IN VARCHAR2,p_PASSWORD IN VARCHAR2,p_USER_ID OUT NUMBER,p_NAME OUT VARCHAR2,
                         p_LAST_NAME OUT VARCHAR2,p_SECOND_LAST_NAME OUT VARCHAR2,p_EMAIL_OUT OUT VARCHAR2,
                         p_PHONE OUT VARCHAR2,p_ROL OUT VARCHAR2,p_ESTADO OUT NUMBER,p_USA_CLAVE_TEMP OUT NUMBER,
                         p_VIGENCIA OUT DATE) AS
    L_KEY RAW(32);
    L_ENCRYPTED_PASSWORD RAW(2000);
BEGIN
    SELECT CLAVE INTO L_KEY
    FROM FIDE_CLAVES_TB
    WHERE ID_CLAVE = 22;

    L_ENCRYPTED_PASSWORD := DBMS_CRYPTO.ENCRYPT(
        SRC => UTL_RAW.CAST_TO_RAW(p_PASSWORD),
        TYP => DBMS_CRYPTO.ENCRYPT_AES256 + DBMS_CRYPTO.CHAIN_CBC + DBMS_CRYPTO.PAD_PKCS5,
        KEY => L_KEY
    );

    SELECT USER_ID, NAME, LAST_NAME, SECOND_LAST_NAME, EMAIL, PHONE, ROL, ESTADO,
           USACLAVETEMP, VIGENCIA
    INTO p_USER_ID, p_NAME, p_LAST_NAME, p_SECOND_LAST_NAME, p_EMAIL_OUT,
         p_PHONE, p_ROL, p_ESTADO, p_USA_CLAVE_TEMP, p_VIGENCIA
    FROM FIDE_USUARIOS_UNIFICADOS_VW
    WHERE EMAIL = p_EMAIL
      AND PASSWORD = L_ENCRYPTED_PASSWORD
      AND ESTADO = 1;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_USER_ID := NULL;
        -- Set all other OUT parameters to NULL
        p_USA_CLAVE_TEMP := NULL;
        p_VIGENCIA := NULL;
END FIDE_LOGIN_SP;

PROCEDURE FIDE_ACTUALIZARCOLABORADOR_SP(
    p_Identificacion NUMBER,
    p_Cedula         VARCHAR2,
    p_Nombre         VARCHAR2,
    p_Correo         VARCHAR2,
    p_Salario        NUMBER,
    p_IdRol          NUMBER,
    P_Ubicacion      NUMBER, -- Appears redundant, but kept if needed
    p_Resultado      OUT NUMBER  
) AS
    v_count NUMBER;
    L_KEY RAW(32);                   -- Encryption key
    L_DATA VARCHAR2(100);           
    L_ENCRIPTAR_SALARIO RAW(2000);  -- Encrypted salary
BEGIN
    -- Check for duplicate Correo (excluding the current ID)
    SELECT COUNT(*) INTO v_count
    FROM FIDE_COLABORADORES_TB
    WHERE (CORREO_COLABORADOR = p_Correo OR CORREO_COLABORADOR = p_Correo)
      AND ID_COLABORADOR != p_Identificacion;
      


    IF v_count = 0 THEN
        -- Get the encryption key
        SELECT CLAVE INTO L_KEY
        FROM FIDE_CLAVES_TB
        WHERE ID_CLAVE = 22;

        -- Encrypt the new salary
        L_DATA := TO_CHAR(p_Salario);
        L_ENCRIPTAR_SALARIO := DBMS_CRYPTO.ENCRYPT(
            SRC => UTL_RAW.CAST_TO_RAW(L_DATA),
            TYP => DBMS_CRYPTO.ENCRYPT_AES256 + DBMS_CRYPTO.CHAIN_CBC + DBMS_CRYPTO.PAD_PKCS5,
            KEY => L_KEY
        );

        -- Perform the update
        UPDATE FIDE_COLABORADORES_TB
        SET 
            CEDULA = p_Cedula,
            NOMBRE_COLABORADOR = p_Nombre,
            CORREO_COLABORADOR = p_Correo,
            SALARIO_COLABORADOR = L_ENCRIPTAR_SALARIO,
            ID_ROL_FK = p_IdRol,
            ID_UBICACION_FK = P_Ubicacion
        WHERE ID_COLABORADOR = p_Identificacion;

        -- Check update result
        IF SQL%ROWCOUNT > 0 THEN
            p_Resultado := 0;  -- Success
        ELSE
            p_Resultado := -2; -- No records updated
        END IF;
    ELSE
        p_Resultado := -3; -- Duplicate correo
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        p_Resultado := -1; -- General error
END FIDE_ACTUALIZARCOLABORADOR_SP;

PROCEDURE FIDE_ConsultarColaborador_SP (p_Identificacion NUMBER,p_Result OUT SYS_REFCURSOR) AS
    L_KEY RAW(32);               -- Encryption key
    L_DESENCRIPTAR_DATA RAW(2000);
    L_SALARIO VARCHAR2(100);     -- Decrypted salary as VARCHAR2
    V_CEDULA FIDE_COLABORADORES_TB.CEDULA%TYPE;
    V_NOMBRE FIDE_COLABORADORES_TB.NOMBRE_COLABORADOR%TYPE;
    V_CORREO FIDE_COLABORADORES_TB.CORREO_COLABORADOR%TYPE;
    V_TELEFONO FIDE_COLABORADORES_TB.TELEFONO_COLABORADOR%TYPE;
    V_ID_ROL NUMBER;
    V_ID_UBICACION NUMBER;
    V_ID_HORARIO NUMBER;
    V_SALARIO_ENCRIPTADO FIDE_COLABORADORES_TB.SALARIO_COLABORADOR%TYPE;
BEGIN
    -- Get collaborator data
    SELECT 
        CEDULA,
        NOMBRE_COLABORADOR,
        CORREO_COLABORADOR,
        TELEFONO_COLABORADOR,
        SALARIO_COLABORADOR,
        ID_ROL_FK,
        ID_UBICACION_FK,
        ID_HORARIO_FK
    INTO 
        V_CEDULA,
        V_NOMBRE,
        V_CORREO,
        V_TELEFONO,
        V_SALARIO_ENCRIPTADO,
        V_ID_ROL,
        V_ID_UBICACION,
        V_ID_HORARIO
    FROM FIDE_COLABORADORES_TB
    WHERE ID_COLABORADOR = p_Identificacion;

    -- Get the encryption key
    SELECT CLAVE INTO L_KEY
    FROM FIDE_CLAVES_TB
    WHERE ID_CLAVE = 22;

    -- Decrypt the salary
    L_DESENCRIPTAR_DATA := DBMS_CRYPTO.DECRYPT(
        SRC => V_SALARIO_ENCRIPTADO,
        TYP => DBMS_CRYPTO.ENCRYPT_AES256 + DBMS_CRYPTO.CHAIN_CBC + DBMS_CRYPTO.PAD_PKCS5,
        KEY => L_KEY
    );

    L_SALARIO := UTL_RAW.CAST_TO_VARCHAR2(L_DESENCRIPTAR_DATA);

    -- Return result via cursor
    OPEN p_Result FOR
        SELECT
            p_Identificacion AS ID_COLABORADOR,
            V_CEDULA AS CEDULA,
            V_NOMBRE AS NOMBRE_COLABORADOR,
            V_CORREO AS CORREO_COLABORADOR,
            V_TELEFONO AS TELEFONO_COLABORADOR,
            TO_NUMBER(L_SALARIO) AS SALARIO_COLABORADOR,
            V_ID_ROL AS ID_ROL_FK,
            V_ID_UBICACION AS ID_UBICACION_FK,
            V_ID_HORARIO AS ID_HORARIO_FK
        FROM DUAL;
END FIDE_ConsultarColaborador_SP;
PROCEDURE FIDE_CONSULTARHORARIOS_SP(p_Result OUT SYS_REFCURSOR) AS
BEGIN
    OPEN p_Result FOR
    SELECT
        ID_HORARIO,
        TO_CHAR(HORA_ENTRADA, 'HH24:MI') AS HORA_ENTRADA,
        TO_CHAR(HORA_SALIDA, 'HH24:MI') AS HORA_SALIDA
    FROM FIDE_HORARIOS_TB;
END FIDE_CONSULTARHORARIOS_SP;

PROCEDURE FIDE_ConsultarDetalleFactura_SP(p_IDFACTURA IN VARCHAR2, p_Result OUT SYS_REFCURSOR) AS
BEGIN
    OPEN p_Result FOR
    SELECT  D.ID_FACTURA_FK AS ID_FACTURA,
            D.ID_PRODUCTO_FK,
            P.NOMBRE_PRODUCTO,
            D.SUBTOTAL,
            D.CANTIDAD AS UNIDADES, 
            D.TOTAL
    FROM    FIDE_DETALLEFACTURA_TB D
    INNER JOIN FIDE_PRODUCTO_TB P ON D.ID_PRODUCTO_FK = P.ID_PRODUCTO
    WHERE   D.ID_FACTURA_FK = p_IDFACTURA;
END FIDE_ConsultarDetalleFactura_SP;

PROCEDURE FIDE_ConsultarFacturas_SP(p_Identificacion IN NUMBER,p_Result OUT SYS_REFCURSOR) AS
BEGIN
    OPEN p_Result FOR 
    SELECT F.ID_FACTURA,
           C.NOMBRE_CLIENTE,
           F.SUBTOTAL,
           F.FECHA_EMISION
    FROM FIDE_HEADERFACTURA_TB F
    INNER JOIN FIDE_CLIENTES_TB C 
        ON F.ID_CLIENTE_FK = C.ID_CLIENTE
    WHERE F.ID_CLIENTE_FK = p_Identificacion;
END FIDE_ConsultarFacturas_SP;

PROCEDURE FIDE_MOSTRARCOLABORADORES_SP(p_cursor OUT SYS_REFCURSOR) AS
BEGIN
    OPEN p_cursor FOR
    SELECT 
        ID_COLABORADOR,
        Cedula,
        NOMBRE_COLABORADOR,
        TELEFONO_COLABORADOR,
        FECHA_CONTRATACION,
        E.DESCRIPCION,
        R.NOMBRE_ROL,
        TO_CHAR(H.HORA_ENTRADA, 'HH24:MI') || '-' || TO_CHAR(H.HORA_SALIDA, 'HH24:MI') AS HORARIO,
        P.DESCRIPCION AS PROVINCIA,
        CORREO_COLABORADOR
    FROM FIDE_Colaboradores_TB C
     JOIN FIDE_ESTADO_TB E ON E.ID_ESTADO = C.ID_ESTADO_FK
     JOIN FIDE_ROLES_TB R ON R.ID_ROL = C.ID_ROL_FK
     JOIN FIDE_HORARIOS_TB H ON H.ID_HORARIO = C.ID_HORARIO_FK
     JOIN FIDE_UBICACION_TB U ON U.ID_UBICACION = C.ID_UBICACION_FK
     JOIN FIDE_PROVINCIA_TB P ON P.ID_PROVINCIA = U.ID_PROVINCIA_FK;
END FIDE_MOSTRARCOLABORADORES_SP;

PROCEDURE FIDE_ObtenerCategorias_SP( p_Cursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN p_Cursor FOR
    SELECT ID_CATEGORIA, 
           NOMBRE_CATEGORIA
    FROM FIDE_CATEGORIAS_TB
    WHERE ID_ESTADO_FK = 1;
    
END FIDE_ObtenerCategorias_SP;

PROCEDURE FIDE_ActualizarProducto_SP(
    p_IdProducto    IN NUMBER,
    p_Nombre        IN VARCHAR2,
    p_Precio        IN NUMBER,
    p_Inventario    IN NUMBER,
    p_Resultado     OUT NUMBER 
) AS
BEGIN
    -- Intentamos actualizar el producto
    UPDATE FIDE_PRODUCTO_TB
    SET NOMBRE_PRODUCTO = p_Nombre,
       PRECIO_UNITARIO = p_Precio
    WHERE ID_PRODUCTO = p_IdProducto;
    
    UPDATE FIDE_INVENTARIO_TB
    SET    Stock = p_Inventario
    WHERE ID_PRODUCTO_fK = p_IdProducto;


    -- Validamos si se actualiz� alg�n registro
    IF SQL%ROWCOUNT > 0 THEN
        p_Resultado := 0;  -- �xito
    ELSE
        p_Resultado := -2; -- No se encontr� el producto
    END IF;

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        p_Resultado := -1; -- Error general
        ROLLBACK;
END FIDE_ActualizarProducto_SP;

PROCEDURE FIDE_ConsultarProducto_SP(
    p_IdProducto IN NUMBER,
    p_Cursor OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN p_Cursor FOR
        SELECT P.ID_PRODUCTO,
               P.NOMBRE_PRODUCTO,
               P.PRECIO_UNITARIO,
               I.Stock,
               CASE WHEN P.ID_ESTADO_FK = 2 THEN 'Activo' ELSE 'Inactivo' END AS Estado
        FROM FIDE_PRODUCTO_TB P
        Join FIDE_INVENTARIO_TB I ON I.ID_PRODUCTO_FK = P.ID_PRODUCTO
        WHERE ID_PRODUCTO = p_IdProducto;
END FIDE_ConsultarProducto_SP;

PROCEDURE FIDE_ConsultarProductos_SP (p_cursor OUT SYS_REFCURSOR) AS
BEGIN
    OPEN p_cursor FOR
        SELECT P.ID_Producto,
               P.Nombre_Producto,
               P.Precio_Unitario,
               I.Stock,
               P.ID_CATEGORIA_FK,
               CASE 
                   WHEN p.ID_Estado_FK = 1 THEN 'Activo'
                   WHEN p.ID_Estado_FK = 2 THEN 'Inactivo'
                   ELSE 'Desconocido' -- Maneja otros valores posibles
               END AS Estado
        FROM FIDE_Producto_TB P
        Join FIDE_INVENTARIO_TB I ON I.ID_PRODUCTO_FK = P.ID_PRODUCTO;
END FIDE_ConsultarProductos_SP;

PROCEDURE FIDE_VALIDARUSUARIO_SP (p_CorreoElectronico IN VARCHAR2, p_Result OUT SYS_REFCURSOR) AS
BEGIN
    OPEN p_Result FOR
        SELECT USER_ID, NAME, EMAIL  -- Adjust columns as needed
        FROM FIDE_USUARIOS_UNIFICADOS_VW
        WHERE EMAIL = p_CorreoElectronico;
END FIDE_VALIDARUSUARIO_SP;

PROCEDURE FIDE_ActualizarContrasenna_SP (
    p_Identificacion IN NUMBER,
    p_Contrasenna IN VARCHAR2,
    p_UsaClaveTemp IN NUMBER,  -- 1 = True, 0 = False
    p_Vigencia IN DATE,  -- Expiration date for the password
    p_Result OUT NUMBER  -- Output parameter for success/failure
) AS
    L_KEY RAW(32);          -- Encryption key
    L_DATA VARCHAR2(100);   -- Data to encrypt (password)
    L_ENCRIPTAR_CONTRASENNA RAW(2000); -- Encrypted password
BEGIN
    -- Retrieve the encryption key from FIDE_CLAVES_TB
    SELECT CLAVE INTO L_KEY
    FROM FIDE_CLAVES_TB
    WHERE ID_CLAVE = 22;  -- Assuming key ID 1 is used for encryption

    -- Convert the password to raw data and encrypt it using AES-256 CBC with PKCS5 padding
    L_DATA := p_Contrasenna;
    L_ENCRIPTAR_CONTRASENNA := DBMS_CRYPTO.ENCRYPT(
                                SRC => UTL_RAW.CAST_TO_RAW(L_DATA),
                                TYP => DBMS_CRYPTO.ENCRYPT_AES256 + DBMS_CRYPTO.CHAIN_CBC + DBMS_CRYPTO.PAD_PKCS5,
                                KEY => L_KEY
                              );

    -- Update the user's password
    UPDATE FIDE_USUARIOS_UNIFICADOS_VW
    SET PASSWORD = L_ENCRIPTAR_CONTRASENNA, 
        UsaClaveTemp = p_UsaClaveTemp, 
        Vigencia = p_Vigencia
    WHERE USER_ID = p_Identificacion;

    -- Check if the update was successful
    IF SQL%ROWCOUNT > 0 THEN
        p_Result := 1;  -- Success
    ELSE
        p_Result := -1; -- Failure (no matching record)
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        p_Result := -2; -- Error occurred
        RAISE;
END FIDE_ActualizarContrasenna_SP;

PROCEDURE FIDE_ConsultarRoles_SP(
  p_Result OUT SYS_REFCURSOR	
)AS
BEGIN
	OPEN p_Result FOR
	SELECT	ID_ROL, NOMBRE_ROL
	FROM	FIDE_ROLES_TB;

END FIDE_ConsultarRoles_SP;

PROCEDURE FIDE_ConsultarCliente_SP (
	p_Identificacion NUMBER,
    p_Result OUT SYS_REFCURSOR
)AS
BEGIN
	
    OPEN p_Result FOR
	SELECT	ID_CLIENTE,
			CEDULA,
			NOMBRE_CLIENTE,
			CORREO_CLIENTE,
            TELEFONO_CLIENTE
	  FROM	FIDE_CLIENTES_TB
	  WHERE ID_CLIENTE = p_Identificacion;

END FIDE_ConsultarCliente_SP;

PROCEDURE FIDE_ActualizarPerfil_SP(
    p_Identificacion NUMBER,
    p_Cedula        VARCHAR2,
    p_Nombre        VARCHAR2,
    p_Correo        VARCHAR2,
    p_IdRol         NUMBER
) AS
    v_count NUMBER;
BEGIN
   
    SELECT COUNT(*) INTO v_count
    FROM FIDE_USUARIOS_UNIFICADOS_TB
    WHERE (CEDULA = p_Cedula OR EMAIL = p_Correo)
      AND USER_ID != p_Identificacion;

  
    IF v_count = 0 THEN
        UPDATE FIDE_USUARIOS_UNIFICADOS_TB
        SET CEDULA = p_Cedula,
            NAME = p_Nombre,
            EMAIL = p_Correo,
            ROL = CASE 
                    WHEN p_IdRol != 0 THEN p_IdRol  
                    ELSE ROL 
                  END
        WHERE USER_ID = p_Identificacion;
    END IF;
    
    
    COMMIT;
END FIDE_ActualizarPerfil_SP;

PROCEDURE FIDE_ConsultarUsuario_SP(
	p_Identificacion NUMBER,
    p_Result OUT SYS_REFCURSOR   
)AS
BEGIN
    OPEN p_Result FOR
	SELECT	U.USER_ID,
			CEDULA,
			NAME,
			EMAIL,
			ESTADO,
			ROL,
            CASE
                WHEN U.ROL IS NOT NULL THEN R.NOMBRE_ROL
                ELSE 'No Role'  -- or handle however you prefer for clients
        END AS NOMBRE_ROL
	  FROM	FIDE_USUARIOS_UNIFICADOS_TB U
	  LEFT JOIN FIDE_ROLES_TB R ON U.ROL = R.ID_ROL
	  WHERE U.USER_ID = p_Identificacion;

END FIDE_ConsultarUsuario_SP;

PROCEDURE FIDE_ConsultarClientes_SP(p_Result OUT SYS_REFCURSOR)AS
BEGIN
	
    OPEN p_Result FOR
	SELECT	ID_CLIENTE,
			CEDULA,
			NOMBRE_CLIENTE,
			CORREO_CLIENTE,
            TELEFONO_CLIENTE,
			ID_ESTADO_FK,
			CASE 
                WHEN ID_ESTADO_FK = 1 THEN 'Activo' 
                ELSE 'Inactivo' END 
            AS Estado
	  FROM	FIDE_CLIENTES_TB;

END FIDE_ConsultarClientes_SP;

PROCEDURE FIDE_ActualizarCliente_SP(
    p_Identificacion NUMBER,
    p_Cedula        VARCHAR2,
    p_Nombre        VARCHAR2,
    p_Correo        VARCHAR2,
    p_Resultado     OUT NUMBER  
) AS
    v_count NUMBER;
BEGIN
    -- Check for duplicate Cedula or Correo (excluding the current ID)
    SELECT COUNT(*) INTO v_count
    FROM FIDE_CLIENTES_TB
    WHERE (CORREO_CLIENTE = p_Correo)
      AND ID_CLIENTE != p_Identificacion;
      
    IF v_count = 0 THEN
        -- Update the record
        UPDATE FIDE_CLIENTES_TB
        SET CEDULA = p_Cedula,
            NOMBRE_CLIENTE = p_Nombre,
            CORREO_CLIENTE = p_Correo
        WHERE ID_CLIENTE = p_Identificacion;

        -- Check if the update was successful
        IF SQL%ROWCOUNT > 0 THEN
            p_Resultado := 0;  -- Success
        ELSE
            p_Resultado := -2; -- No records updated
        END IF;
    ELSE
        p_Resultado := -3; -- Duplicate Cedula or Correo found
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        p_Resultado := -1; -- General error
        ROLLBACK; -- Ensure rollback on error
END FIDE_ActualizarCliente_SP;

PROCEDURE FIDE_ConsultarCarrito_SP (
    p_Consecutivo IN NUMBER,
    p_Cursor OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN p_Cursor FOR 
        SELECT  C.ID_CARRITO,
                C.ID_PRODUCTO_FK,
                P.NOMBRE_PRODUCTO,
                C.Unidades,
                P.PRECIO_UNITARIO,
                C.Unidades * P.PRECIO_UNITARIO AS Total,
                C.Fecha
        FROM    FIDE_CARRITO_TB C
        INNER JOIN FIDE_PRODUCTO_TB P ON C.ID_PRODUCTO_FK = P.ID_PRODUCTO
        WHERE   C.ID_USUARIO_FK = p_Consecutivo;
END FIDE_ConsultarCarrito_SP;

PROCEDURE FIDE_RegistrarCarrito_SP(
    p_IdUsuario IN NUMBER,
    p_idProducto IN NUMBER,
    p_Unidades    IN NUMBER
)
IS
    v_count NUMBER;
BEGIN
    -- Check if the record exists
    SELECT COUNT(*) INTO v_count 
    FROM FIDE_CARRITO_TB
    WHERE ID_USUARIO_FK = p_IdUsuario
      AND ID_PRODUCTO_FK = p_idProducto;
    
    IF v_count = 0 THEN
        -- Insert new record
        INSERT INTO FIDE_CARRITO_TB (ID_USUARIO_FK, ID_PRODUCTO_FK, UNIDADES, FECHA)
        VALUES (p_IdUsuario, p_idProducto, p_Unidades, SYSDATE);
    ELSE
        -- Update existing record
        UPDATE FIDE_CARRITO_TB 
        SET Unidades = p_Unidades,
            Fecha = SYSDATE
        WHERE ID_USUARIO_FK = p_IdUsuario
          AND ID_PRODUCTO_FK = p_idProducto;
    END IF;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END FIDE_RegistrarCarrito_SP;

PROCEDURE FIDE_RemoverProductoCarrito_SP(
	p_IdUsuario NUMBER,
	p_IdProducto NUMBER
)AS
BEGIN
	
	DELETE FROM FIDE_CARRITO_TB
	WHERE	ID_USUARIO_FK = p_IdUsuario
		AND	ID_PRODUCTO_FK = p_IdProducto;

END FIDE_RemoverProductoCarrito_SP;

PROCEDURE FIDE_PagarCarrito_SP(
    p_Identificacion NUMBER
   
) AS
    v_ConsecutivoFactura VARCHAR2(100);
    v_Subtotal NUMBER;
    v_Impuesto NUMBER;
    v_Total NUMBER;
BEGIN
    -- Calcular subtotal del carrito (sin IVA)
    SELECT SUM(C.UNIDADES * P.PRECIO_UNITARIO)
    INTO v_Subtotal
    FROM FIDE_CARRITO_TB C
    INNER JOIN FIDE_PRODUCTO_TB P ON C.ID_PRODUCTO_FK = P.ID_PRODUCTO
    WHERE C.ID_USUARIO_FK = p_Identificacion;

    -- Calcular impuesto y total con impuesto
    v_Impuesto := ROUND(v_Subtotal * 0.13, 2);
    v_Total := ROUND(v_Subtotal + v_Impuesto, 2);

    -- Insertar en tabla de encabezado de factura
    INSERT INTO FIDE_HEADERFACTURA_TB (
        ID_CLIENTE_FK,
        SUBTOTAL,
        IMPUESTO,
        TOTAL_FACTURA,
        FECHA_EMISION
        
    )
    VALUES (
        p_Identificacion,
        v_Subtotal,
        v_Impuesto,
        v_Total,
        SYSDATE
        
    )
    RETURNING ID_FACTURA INTO v_ConsecutivoFactura;

    -- Insertar en la tabla de ventas
    INSERT INTO FIDE_VENTA_TB (
        ID_FACTURA_FK
    )
    VALUES (
        v_ConsecutivoFactura
    );
    
    INSERT INTO FIDE_HISTORIALCOMPRAS_TB (
        ID_CLIENTE_FK,
        TOTAL_COMPRA,
        FECHA_COMPRA
    )
    VALUES (
        p_Identificacion,
        v_Total,
        SYSTIMESTAMP
    );

    -- Insertar detalle de factura
    INSERT INTO FIDE_DETALLEFACTURA_TB (
        ID_FACTURA_FK,
        ID_PRODUCTO_FK,
        CANTIDAD,
        PRECIO_UNITARIO,
        SUBTOTAL,
        TOTAL
    )
    SELECT 
        v_ConsecutivoFactura,
        C.ID_PRODUCTO_FK,
        C.UNIDADES,
        P.PRECIO_UNITARIO,
        (C.UNIDADES * P.PRECIO_UNITARIO) AS SUBTOTAL,
        ROUND((C.UNIDADES * P.PRECIO_UNITARIO) * 1.13, 2) AS TOTAL
    FROM 
        FIDE_CARRITO_TB C
    INNER JOIN 
        FIDE_PRODUCTO_TB P ON C.ID_PRODUCTO_FK = P.ID_PRODUCTO
    WHERE 
        C.ID_USUARIO_FK = p_Identificacion;

    -- Actualizar inventario
    UPDATE FIDE_INVENTARIO_TB I
    SET I.Stock = I.Stock - (
        SELECT SUM(C.UNIDADES)
        FROM FIDE_CARRITO_TB C
        WHERE C.ID_PRODUCTO_FK = I.ID_PRODUCTO_FK
          AND C.ID_USUARIO_FK = p_Identificacion
    )
    WHERE EXISTS (
        SELECT 1
        FROM FIDE_CARRITO_TB C
        WHERE C.ID_PRODUCTO_FK = I.ID_PRODUCTO_FK
          AND C.ID_USUARIO_FK = p_Identificacion
    );

    -- Actualizar o insertar en FIDE_HISTORIALPRODUCTO_TB
    FOR r IN (
        SELECT C.ID_PRODUCTO_FK, SUM(C.UNIDADES) AS TOTAL_VENDIDO
        FROM FIDE_CARRITO_TB C
        WHERE C.ID_USUARIO_FK = p_Identificacion
        GROUP BY C.ID_PRODUCTO_FK
    ) LOOP
        BEGIN
            -- Intentar actualizar si ya existe un registro en el historial
            UPDATE FIDE_HISTORIALPRODUCTO_TB
            SET CANTIDAD = CANTIDAD + r.TOTAL_VENDIDO
            WHERE ID_PRODUCTO_FK = r.ID_PRODUCTO_FK;

            -- Si no se actualizó, insertar un nuevo registro
            IF SQL%ROWCOUNT = 0 THEN
                INSERT INTO FIDE_HISTORIALPRODUCTO_TB (
                    ID_PRODUCTO_FK,
                    CANTIDAD
                )
                VALUES (
                    r.ID_PRODUCTO_FK,
                    r.TOTAL_VENDIDO
                );
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                -- Manejar excepciones en caso de error
                NULL;
        END;
    END LOOP;

    -- Vaciar carrito
    DELETE FROM FIDE_CARRITO_TB
    WHERE ID_USUARIO_FK = p_Identificacion;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END FIDE_PagarCarrito_SP;

PROCEDURE FIDE_RegistrarProducto_SP(
    p_Nombre        VARCHAR2,
    p_Precio        NUMBER,
    p_Stock         NUMBER,
    p_IdCategoria   NUMBER,
    p_IdProducto    OUT NUMBER
)
AS
    v_ProductoExistente NUMBER;
BEGIN
    BEGIN
        
        SELECT ID_PRODUCTO
        INTO v_ProductoExistente
        FROM FIDE_PRODUCTO_TB
        WHERE NOMBRE_PRODUCTO = p_Nombre
          AND ID_CATEGORIA_FK = p_IdCategoria
        FETCH FIRST 1 ROWS ONLY;

        
        p_IdProducto := v_ProductoExistente;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            
            INSERT INTO FIDE_PRODUCTO_TB (
                NOMBRE_PRODUCTO,
                PRECIO_UNITARIO,
                ID_CATEGORIA_FK
            )
            VALUES (
                p_Nombre,
                p_Precio,
                p_IdCategoria
            )
            RETURNING ID_PRODUCTO INTO p_IdProducto;
    END;

    INSERT INTO FIDE_INVENTARIO_TB (
        ID_PRODUCTO_FK,
        Stock
    )
    VALUES (
        p_IdProducto,
        p_Stock
    );

    COMMIT;
END FIDE_RegistrarProducto_SP;


end FIDE_ProyectoLenguajes_PCK;