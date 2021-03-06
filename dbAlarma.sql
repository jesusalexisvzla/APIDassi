PGDMP     0    '                 y            dbAlarma    13.1    13.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24577    dbAlarma    DATABASE     f   CREATE DATABASE "dbAlarma" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.932';
    DROP DATABASE "dbAlarma";
                postgres    false            �            1259    24700    advertenciaCabecera    TABLE     �   CREATE TABLE public."advertenciaCabecera" (
    "idAdvertencia" integer NOT NULL,
    titulo text,
    "pilaAgotada" character(1),
    "corrienteInterrumpida" character(1),
    estatus character(1)
);
 )   DROP TABLE public."advertenciaCabecera";
       public         heap    postgres    false            �            1259    24698 %   advertenciaCabecera_idAdvertencia_seq    SEQUENCE     �   CREATE SEQUENCE public."advertenciaCabecera_idAdvertencia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."advertenciaCabecera_idAdvertencia_seq";
       public          postgres    false    221            �           0    0 %   advertenciaCabecera_idAdvertencia_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."advertenciaCabecera_idAdvertencia_seq" OWNED BY public."advertenciaCabecera"."idAdvertencia";
          public          postgres    false    220            �            1259    24720    advertenciaCorreo    TABLE     �   CREATE TABLE public."advertenciaCorreo" (
    "idAdvertenciaCorreo" integer NOT NULL,
    "idAdvertencia" integer,
    nombre text,
    correo text
);
 '   DROP TABLE public."advertenciaCorreo";
       public         heap    postgres    false            �            1259    24813 )   advertenciaCorreo_idAdvertenciaCorreo_seq    SEQUENCE     �   CREATE SEQUENCE public."advertenciaCorreo_idAdvertenciaCorreo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."advertenciaCorreo_idAdvertenciaCorreo_seq";
       public          postgres    false    223            �           0    0 )   advertenciaCorreo_idAdvertenciaCorreo_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."advertenciaCorreo_idAdvertenciaCorreo_seq" OWNED BY public."advertenciaCorreo"."idAdvertenciaCorreo";
          public          postgres    false    233            �            1259    24713    advertenciaRegistrador    TABLE     �   CREATE TABLE public."advertenciaRegistrador" (
    "idAdvertenciaReg" integer NOT NULL,
    "idAdvertencia" integer,
    "idRegistrador" integer
);
 ,   DROP TABLE public."advertenciaRegistrador";
       public         heap    postgres    false            �            1259    24805 +   advertenciaRegistrador_idAdvertenciaReg_seq    SEQUENCE     �   CREATE SEQUENCE public."advertenciaRegistrador_idAdvertenciaReg_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."advertenciaRegistrador_idAdvertenciaReg_seq";
       public          postgres    false    222            �           0    0 +   advertenciaRegistrador_idAdvertenciaReg_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."advertenciaRegistrador_idAdvertenciaReg_seq" OWNED BY public."advertenciaRegistrador"."idAdvertenciaReg";
          public          postgres    false    232            �            1259    24664    alarmaCabecera    TABLE     �   CREATE TABLE public."alarmaCabecera" (
    "idAlarma" integer NOT NULL,
    titulo text,
    sensibilidad integer,
    estatus character(1)
);
 $   DROP TABLE public."alarmaCabecera";
       public         heap    postgres    false            �            1259    24662    alarmaCabecera_idAlarma_seq    SEQUENCE     �   CREATE SEQUENCE public."alarmaCabecera_idAlarma_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."alarmaCabecera_idAlarma_seq";
       public          postgres    false    217            �           0    0    alarmaCabecera_idAlarma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."alarmaCabecera_idAlarma_seq" OWNED BY public."alarmaCabecera"."idAlarma";
          public          postgres    false    216            �            1259    24938    alarmaControlTiempo    TABLE     B  CREATE TABLE public."alarmaControlTiempo" (
    "idAlarmaControl" integer NOT NULL,
    "idAlarma" integer,
    "limiteInf" double precision,
    "limiteSup" double precision,
    "retrasoLimiteInf" integer,
    "retrasoLimiteSup" integer,
    canal character(1),
    "lunesInf" time without time zone,
    "lunesSup" time without time zone,
    "martesInf" time without time zone,
    "martesSup" time without time zone,
    "miercolesInf" time without time zone,
    "miercolesSup" time without time zone,
    "juevesInf" time without time zone,
    "juevesSup" time without time zone,
    "viernesInf" time without time zone,
    "viernesSup" time without time zone,
    "sabadoInf" time without time zone,
    "sabadoSup" time without time zone,
    "domingoInf" time without time zone,
    "domingoSup" time without time zone
);
 )   DROP TABLE public."alarmaControlTiempo";
       public         heap    postgres    false            �            1259    24936 '   alarmaControlTiempo_idAlarmaControl_seq    SEQUENCE     �   CREATE SEQUENCE public."alarmaControlTiempo_idAlarmaControl_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."alarmaControlTiempo_idAlarmaControl_seq";
       public          postgres    false    239            �           0    0 '   alarmaControlTiempo_idAlarmaControl_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."alarmaControlTiempo_idAlarmaControl_seq" OWNED BY public."alarmaControlTiempo"."idAlarmaControl";
          public          postgres    false    238            �            1259    24691    alarmaCorreo    TABLE     �   CREATE TABLE public."alarmaCorreo" (
    "idAlarmaCorreo" integer NOT NULL,
    "idAlarma" integer,
    nombre text,
    correo text
);
 "   DROP TABLE public."alarmaCorreo";
       public         heap    postgres    false            �            1259    24824    alarmaCorreo_idAlarmaCorreo_seq    SEQUENCE     �   CREATE SEQUENCE public."alarmaCorreo_idAlarmaCorreo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."alarmaCorreo_idAlarmaCorreo_seq";
       public          postgres    false    219            �           0    0    alarmaCorreo_idAlarmaCorreo_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."alarmaCorreo_idAlarmaCorreo_seq" OWNED BY public."alarmaCorreo"."idAlarmaCorreo";
          public          postgres    false    234            �            1259    24677    alarmaPuntos    TABLE     |   CREATE TABLE public."alarmaPuntos" (
    "idAlarmaPunto" integer NOT NULL,
    "idAlarma" integer,
    "idPunto" integer
);
 "   DROP TABLE public."alarmaPuntos";
       public         heap    postgres    false            �            1259    24901    alarmaPuntos_idAlarmaPunto_seq    SEQUENCE     �   CREATE SEQUENCE public."alarmaPuntos_idAlarmaPunto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."alarmaPuntos_idAlarmaPunto_seq";
       public          postgres    false    218            �           0    0    alarmaPuntos_idAlarmaPunto_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."alarmaPuntos_idAlarmaPunto_seq" OWNED BY public."alarmaPuntos"."idAlarmaPunto";
          public          postgres    false    235            �            1259    24615    grupoPuntosMedicion    TABLE     �   CREATE TABLE public."grupoPuntosMedicion" (
    "idGrupo" integer NOT NULL,
    titulo text,
    descripcion text,
    "idRango" integer NOT NULL
);
 )   DROP TABLE public."grupoPuntosMedicion";
       public         heap    postgres    false            �            1259    24629    grupoPuntosMedicionCuerpo    TABLE     �   CREATE TABLE public."grupoPuntosMedicionCuerpo" (
    "idCuerpo" integer NOT NULL,
    "idGrupo" integer,
    "idPunto" integer
);
 /   DROP TABLE public."grupoPuntosMedicionCuerpo";
       public         heap    postgres    false            �            1259    24797 &   grupoPuntosMedicionCuerpo_idCuerpo_seq    SEQUENCE     �   CREATE SEQUENCE public."grupoPuntosMedicionCuerpo_idCuerpo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."grupoPuntosMedicionCuerpo_idCuerpo_seq";
       public          postgres    false    209            �           0    0 &   grupoPuntosMedicionCuerpo_idCuerpo_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."grupoPuntosMedicionCuerpo_idCuerpo_seq" OWNED BY public."grupoPuntosMedicionCuerpo"."idCuerpo";
          public          postgres    false    231            �            1259    24611    grupoPuntosMedicion_idGrupo_seq    SEQUENCE     �   CREATE SEQUENCE public."grupoPuntosMedicion_idGrupo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."grupoPuntosMedicion_idGrupo_seq";
       public          postgres    false    208            �           0    0    grupoPuntosMedicion_idGrupo_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."grupoPuntosMedicion_idGrupo_seq" OWNED BY public."grupoPuntosMedicion"."idGrupo";
          public          postgres    false    206            �            1259    24613    grupoPuntosMedicion_rango_seq    SEQUENCE     �   CREATE SEQUENCE public."grupoPuntosMedicion_rango_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."grupoPuntosMedicion_rango_seq";
       public          postgres    false    208            �           0    0    grupoPuntosMedicion_rango_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."grupoPuntosMedicion_rango_seq" OWNED BY public."grupoPuntosMedicion"."idRango";
          public          postgres    false    207            �            1259    24729    informeAutomaticoCabecera    TABLE     �   CREATE TABLE public."informeAutomaticoCabecera" (
    "idInforme" integer NOT NULL,
    nombre text,
    frecuencia text,
    formato text,
    tablas character(1),
    alarmas character(1),
    grafico character(1),
    "enviarCorreo" character(1)
);
 /   DROP TABLE public."informeAutomaticoCabecera";
       public         heap    postgres    false            �            1259    24727 '   informeAutomaticoCabecera_idInforme_seq    SEQUENCE     �   CREATE SEQUENCE public."informeAutomaticoCabecera_idInforme_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."informeAutomaticoCabecera_idInforme_seq";
       public          postgres    false    225            �           0    0 '   informeAutomaticoCabecera_idInforme_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."informeAutomaticoCabecera_idInforme_seq" OWNED BY public."informeAutomaticoCabecera"."idInforme";
          public          postgres    false    224            �            1259    24747    informeAutomaticoCorreos    TABLE     �   CREATE TABLE public."informeAutomaticoCorreos" (
    "idInformeCorreo" integer NOT NULL,
    "idInforme" integer,
    nombre text,
    correo text
);
 .   DROP TABLE public."informeAutomaticoCorreos";
       public         heap    postgres    false            �            1259    24917 ,   informeAutomaticoCorreos_idInformeCorreo_seq    SEQUENCE     �   CREATE SEQUENCE public."informeAutomaticoCorreos_idInformeCorreo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."informeAutomaticoCorreos_idInformeCorreo_seq";
       public          postgres    false    227            �           0    0 ,   informeAutomaticoCorreos_idInformeCorreo_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."informeAutomaticoCorreos_idInformeCorreo_seq" OWNED BY public."informeAutomaticoCorreos"."idInformeCorreo";
          public          postgres    false    236            �            1259    24740    informeAutomaticoPuntos    TABLE     �   CREATE TABLE public."informeAutomaticoPuntos" (
    "idInformePunto" integer NOT NULL,
    "idInforme" integer,
    "idPunto" integer,
    canal character(1)
);
 -   DROP TABLE public."informeAutomaticoPuntos";
       public         heap    postgres    false            �            1259    24928 *   informeAutomaticoPuntos_idInformePunto_seq    SEQUENCE     �   CREATE SEQUENCE public."informeAutomaticoPuntos_idInformePunto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."informeAutomaticoPuntos_idInformePunto_seq";
       public          postgres    false    226            �           0    0 *   informeAutomaticoPuntos_idInformePunto_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."informeAutomaticoPuntos_idInformePunto_seq" OWNED BY public."informeAutomaticoPuntos"."idInformePunto";
          public          postgres    false    237            �            1259    24652    noficiacionAlarma    TABLE     �   CREATE TABLE public."noficiacionAlarma" (
    "idNotificacion" integer NOT NULL,
    fecha timestamp without time zone,
    tipo text,
    "idPunto" integer,
    evento text,
    estatus character(1)
);
 '   DROP TABLE public."noficiacionAlarma";
       public         heap    postgres    false            �            1259    24648 $   noficiacionAlarma_idNotificacion_seq    SEQUENCE     �   CREATE SEQUENCE public."noficiacionAlarma_idNotificacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."noficiacionAlarma_idNotificacion_seq";
       public          postgres    false    215            �           0    0 $   noficiacionAlarma_idNotificacion_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."noficiacionAlarma_idNotificacion_seq" OWNED BY public."noficiacionAlarma"."idNotificacion";
          public          postgres    false    213            �            1259    24650    noficiacionAlarma_idPunto_seq    SEQUENCE     �   CREATE SEQUENCE public."noficiacionAlarma_idPunto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."noficiacionAlarma_idPunto_seq";
       public          postgres    false    215            �           0    0    noficiacionAlarma_idPunto_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."noficiacionAlarma_idPunto_seq" OWNED BY public."noficiacionAlarma"."idPunto";
          public          postgres    false    214            �            1259    24756    pruebaMediciones    TABLE     �   CREATE TABLE public."pruebaMediciones" (
    "idPrueba" integer NOT NULL,
    "idPunto" integer,
    fecha timestamp without time zone,
    temperatura double precision,
    humedad double precision
);
 &   DROP TABLE public."pruebaMediciones";
       public         heap    postgres    false            �            1259    24783    pruebaMediciones_idPrueba_seq    SEQUENCE     �   CREATE SEQUENCE public."pruebaMediciones_idPrueba_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."pruebaMediciones_idPrueba_seq";
       public          postgres    false    228            �           0    0    pruebaMediciones_idPrueba_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."pruebaMediciones_idPrueba_seq" OWNED BY public."pruebaMediciones"."idPrueba";
          public          postgres    false    229            �            1259    24789    pruebaMediciones_idPunto_seq    SEQUENCE     �   CREATE SEQUENCE public."pruebaMediciones_idPunto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."pruebaMediciones_idPunto_seq";
       public          postgres    false    228            �           0    0    pruebaMediciones_idPunto_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."pruebaMediciones_idPunto_seq" OWNED BY public."pruebaMediciones"."idPunto";
          public          postgres    false    230            �            1259    24591    puntoDeMedicion    TABLE     q   CREATE TABLE public."puntoDeMedicion" (
    "idPunto" integer NOT NULL,
    nombre text,
    descripcion text
);
 %   DROP TABLE public."puntoDeMedicion";
       public         heap    postgres    false            �            1259    24589    puntoDeMedicion_idPunto_seq    SEQUENCE     �   CREATE SEQUENCE public."puntoDeMedicion_idPunto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."puntoDeMedicion_idPunto_seq";
       public          postgres    false    203            �           0    0    puntoDeMedicion_idPunto_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."puntoDeMedicion_idPunto_seq" OWNED BY public."puntoDeMedicion"."idPunto";
          public          postgres    false    202            �            1259    24602    rango    TABLE     l   CREATE TABLE public.rango (
    "idRango" integer NOT NULL,
    "displayName" text,
    descripcion text
);
    DROP TABLE public.rango;
       public         heap    postgres    false            �            1259    24600    rango_idRango_seq    SEQUENCE     �   CREATE SEQUENCE public."rango_idRango_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."rango_idRango_seq";
       public          postgres    false    205            �           0    0    rango_idRango_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."rango_idRango_seq" OWNED BY public.rango."idRango";
          public          postgres    false    204            �            1259    24638    registradorDeDatos    TABLE     {   CREATE TABLE public."registradorDeDatos" (
    "idRegistrador" integer NOT NULL,
    nombre text,
    "idPunto" integer
);
 (   DROP TABLE public."registradorDeDatos";
       public         heap    postgres    false            �            1259    24636    registradorDeDatos_idPunto_seq    SEQUENCE     �   CREATE SEQUENCE public."registradorDeDatos_idPunto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."registradorDeDatos_idPunto_seq";
       public          postgres    false    212            �           0    0    registradorDeDatos_idPunto_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."registradorDeDatos_idPunto_seq" OWNED BY public."registradorDeDatos"."idPunto";
          public          postgres    false    211            �            1259    24634 $   registradorDeDatos_idRegistrador_seq    SEQUENCE     �   CREATE SEQUENCE public."registradorDeDatos_idRegistrador_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."registradorDeDatos_idRegistrador_seq";
       public          postgres    false    212            �           0    0 $   registradorDeDatos_idRegistrador_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."registradorDeDatos_idRegistrador_seq" OWNED BY public."registradorDeDatos"."idRegistrador";
          public          postgres    false    210            �            1259    24580    usuario    TABLE       CREATE TABLE public.usuario (
    "idUsuario" integer NOT NULL,
    titulo text,
    nombre text,
    apellidos text,
    contrasenia text,
    correo text,
    telefono text,
    rol text,
    "activoDesde" date,
    "activoHasta" text,
    detalles text
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    24578    usuario_idUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."usuario_idUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."usuario_idUsuario_seq";
       public          postgres    false    201            �           0    0    usuario_idUsuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."usuario_idUsuario_seq" OWNED BY public.usuario."idUsuario";
          public          postgres    false    200            �           2604    24703 !   advertenciaCabecera idAdvertencia    DEFAULT     �   ALTER TABLE ONLY public."advertenciaCabecera" ALTER COLUMN "idAdvertencia" SET DEFAULT nextval('public."advertenciaCabecera_idAdvertencia_seq"'::regclass);
 T   ALTER TABLE public."advertenciaCabecera" ALTER COLUMN "idAdvertencia" DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    24815 %   advertenciaCorreo idAdvertenciaCorreo    DEFAULT     �   ALTER TABLE ONLY public."advertenciaCorreo" ALTER COLUMN "idAdvertenciaCorreo" SET DEFAULT nextval('public."advertenciaCorreo_idAdvertenciaCorreo_seq"'::regclass);
 X   ALTER TABLE public."advertenciaCorreo" ALTER COLUMN "idAdvertenciaCorreo" DROP DEFAULT;
       public          postgres    false    233    223            �           2604    24807 '   advertenciaRegistrador idAdvertenciaReg    DEFAULT     �   ALTER TABLE ONLY public."advertenciaRegistrador" ALTER COLUMN "idAdvertenciaReg" SET DEFAULT nextval('public."advertenciaRegistrador_idAdvertenciaReg_seq"'::regclass);
 Z   ALTER TABLE public."advertenciaRegistrador" ALTER COLUMN "idAdvertenciaReg" DROP DEFAULT;
       public          postgres    false    232    222            �           2604    24667    alarmaCabecera idAlarma    DEFAULT     �   ALTER TABLE ONLY public."alarmaCabecera" ALTER COLUMN "idAlarma" SET DEFAULT nextval('public."alarmaCabecera_idAlarma_seq"'::regclass);
 J   ALTER TABLE public."alarmaCabecera" ALTER COLUMN "idAlarma" DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    24941 #   alarmaControlTiempo idAlarmaControl    DEFAULT     �   ALTER TABLE ONLY public."alarmaControlTiempo" ALTER COLUMN "idAlarmaControl" SET DEFAULT nextval('public."alarmaControlTiempo_idAlarmaControl_seq"'::regclass);
 V   ALTER TABLE public."alarmaControlTiempo" ALTER COLUMN "idAlarmaControl" DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    24826    alarmaCorreo idAlarmaCorreo    DEFAULT     �   ALTER TABLE ONLY public."alarmaCorreo" ALTER COLUMN "idAlarmaCorreo" SET DEFAULT nextval('public."alarmaCorreo_idAlarmaCorreo_seq"'::regclass);
 N   ALTER TABLE public."alarmaCorreo" ALTER COLUMN "idAlarmaCorreo" DROP DEFAULT;
       public          postgres    false    234    219            �           2604    24903    alarmaPuntos idAlarmaPunto    DEFAULT     �   ALTER TABLE ONLY public."alarmaPuntos" ALTER COLUMN "idAlarmaPunto" SET DEFAULT nextval('public."alarmaPuntos_idAlarmaPunto_seq"'::regclass);
 M   ALTER TABLE public."alarmaPuntos" ALTER COLUMN "idAlarmaPunto" DROP DEFAULT;
       public          postgres    false    235    218            �           2604    24618    grupoPuntosMedicion idGrupo    DEFAULT     �   ALTER TABLE ONLY public."grupoPuntosMedicion" ALTER COLUMN "idGrupo" SET DEFAULT nextval('public."grupoPuntosMedicion_idGrupo_seq"'::regclass);
 N   ALTER TABLE public."grupoPuntosMedicion" ALTER COLUMN "idGrupo" DROP DEFAULT;
       public          postgres    false    208    206    208            �           2604    24619    grupoPuntosMedicion idRango    DEFAULT     �   ALTER TABLE ONLY public."grupoPuntosMedicion" ALTER COLUMN "idRango" SET DEFAULT nextval('public."grupoPuntosMedicion_rango_seq"'::regclass);
 N   ALTER TABLE public."grupoPuntosMedicion" ALTER COLUMN "idRango" DROP DEFAULT;
       public          postgres    false    207    208    208            �           2604    24799 "   grupoPuntosMedicionCuerpo idCuerpo    DEFAULT     �   ALTER TABLE ONLY public."grupoPuntosMedicionCuerpo" ALTER COLUMN "idCuerpo" SET DEFAULT nextval('public."grupoPuntosMedicionCuerpo_idCuerpo_seq"'::regclass);
 U   ALTER TABLE public."grupoPuntosMedicionCuerpo" ALTER COLUMN "idCuerpo" DROP DEFAULT;
       public          postgres    false    231    209            �           2604    24732 #   informeAutomaticoCabecera idInforme    DEFAULT     �   ALTER TABLE ONLY public."informeAutomaticoCabecera" ALTER COLUMN "idInforme" SET DEFAULT nextval('public."informeAutomaticoCabecera_idInforme_seq"'::regclass);
 V   ALTER TABLE public."informeAutomaticoCabecera" ALTER COLUMN "idInforme" DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    24919 (   informeAutomaticoCorreos idInformeCorreo    DEFAULT     �   ALTER TABLE ONLY public."informeAutomaticoCorreos" ALTER COLUMN "idInformeCorreo" SET DEFAULT nextval('public."informeAutomaticoCorreos_idInformeCorreo_seq"'::regclass);
 [   ALTER TABLE public."informeAutomaticoCorreos" ALTER COLUMN "idInformeCorreo" DROP DEFAULT;
       public          postgres    false    236    227            �           2604    24930 &   informeAutomaticoPuntos idInformePunto    DEFAULT     �   ALTER TABLE ONLY public."informeAutomaticoPuntos" ALTER COLUMN "idInformePunto" SET DEFAULT nextval('public."informeAutomaticoPuntos_idInformePunto_seq"'::regclass);
 Y   ALTER TABLE public."informeAutomaticoPuntos" ALTER COLUMN "idInformePunto" DROP DEFAULT;
       public          postgres    false    237    226            �           2604    24655     noficiacionAlarma idNotificacion    DEFAULT     �   ALTER TABLE ONLY public."noficiacionAlarma" ALTER COLUMN "idNotificacion" SET DEFAULT nextval('public."noficiacionAlarma_idNotificacion_seq"'::regclass);
 S   ALTER TABLE public."noficiacionAlarma" ALTER COLUMN "idNotificacion" DROP DEFAULT;
       public          postgres    false    213    215    215            �           2604    24656    noficiacionAlarma idPunto    DEFAULT     �   ALTER TABLE ONLY public."noficiacionAlarma" ALTER COLUMN "idPunto" SET DEFAULT nextval('public."noficiacionAlarma_idPunto_seq"'::regclass);
 L   ALTER TABLE public."noficiacionAlarma" ALTER COLUMN "idPunto" DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    24785    pruebaMediciones idPrueba    DEFAULT     �   ALTER TABLE ONLY public."pruebaMediciones" ALTER COLUMN "idPrueba" SET DEFAULT nextval('public."pruebaMediciones_idPrueba_seq"'::regclass);
 L   ALTER TABLE public."pruebaMediciones" ALTER COLUMN "idPrueba" DROP DEFAULT;
       public          postgres    false    229    228            �           2604    24791    pruebaMediciones idPunto    DEFAULT     �   ALTER TABLE ONLY public."pruebaMediciones" ALTER COLUMN "idPunto" SET DEFAULT nextval('public."pruebaMediciones_idPunto_seq"'::regclass);
 K   ALTER TABLE public."pruebaMediciones" ALTER COLUMN "idPunto" DROP DEFAULT;
       public          postgres    false    230    228            �           2604    24594    puntoDeMedicion idPunto    DEFAULT     �   ALTER TABLE ONLY public."puntoDeMedicion" ALTER COLUMN "idPunto" SET DEFAULT nextval('public."puntoDeMedicion_idPunto_seq"'::regclass);
 J   ALTER TABLE public."puntoDeMedicion" ALTER COLUMN "idPunto" DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    24605    rango idRango    DEFAULT     r   ALTER TABLE ONLY public.rango ALTER COLUMN "idRango" SET DEFAULT nextval('public."rango_idRango_seq"'::regclass);
 >   ALTER TABLE public.rango ALTER COLUMN "idRango" DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    24641     registradorDeDatos idRegistrador    DEFAULT     �   ALTER TABLE ONLY public."registradorDeDatos" ALTER COLUMN "idRegistrador" SET DEFAULT nextval('public."registradorDeDatos_idRegistrador_seq"'::regclass);
 S   ALTER TABLE public."registradorDeDatos" ALTER COLUMN "idRegistrador" DROP DEFAULT;
       public          postgres    false    210    212    212            �           2604    24642    registradorDeDatos idPunto    DEFAULT     �   ALTER TABLE ONLY public."registradorDeDatos" ALTER COLUMN "idPunto" SET DEFAULT nextval('public."registradorDeDatos_idPunto_seq"'::regclass);
 M   ALTER TABLE public."registradorDeDatos" ALTER COLUMN "idPunto" DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    24583    usuario idUsuario    DEFAULT     z   ALTER TABLE ONLY public.usuario ALTER COLUMN "idUsuario" SET DEFAULT nextval('public."usuario_idUsuario_seq"'::regclass);
 B   ALTER TABLE public.usuario ALTER COLUMN "idUsuario" DROP DEFAULT;
       public          postgres    false    201    200    201            m          0    24700    advertenciaCabecera 
   TABLE DATA           y   COPY public."advertenciaCabecera" ("idAdvertencia", titulo, "pilaAgotada", "corrienteInterrumpida", estatus) FROM stdin;
    public          postgres    false    221   ��       o          0    24720    advertenciaCorreo 
   TABLE DATA           e   COPY public."advertenciaCorreo" ("idAdvertenciaCorreo", "idAdvertencia", nombre, correo) FROM stdin;
    public          postgres    false    223   �       n          0    24713    advertenciaRegistrador 
   TABLE DATA           h   COPY public."advertenciaRegistrador" ("idAdvertenciaReg", "idAdvertencia", "idRegistrador") FROM stdin;
    public          postgres    false    222   u�       i          0    24664    alarmaCabecera 
   TABLE DATA           U   COPY public."alarmaCabecera" ("idAlarma", titulo, sensibilidad, estatus) FROM stdin;
    public          postgres    false    217   ��                 0    24938    alarmaControlTiempo 
   TABLE DATA           U  COPY public."alarmaControlTiempo" ("idAlarmaControl", "idAlarma", "limiteInf", "limiteSup", "retrasoLimiteInf", "retrasoLimiteSup", canal, "lunesInf", "lunesSup", "martesInf", "martesSup", "miercolesInf", "miercolesSup", "juevesInf", "juevesSup", "viernesInf", "viernesSup", "sabadoInf", "sabadoSup", "domingoInf", "domingoSup") FROM stdin;
    public          postgres    false    239   �       k          0    24691    alarmaCorreo 
   TABLE DATA           V   COPY public."alarmaCorreo" ("idAlarmaCorreo", "idAlarma", nombre, correo) FROM stdin;
    public          postgres    false    219   0�       j          0    24677    alarmaPuntos 
   TABLE DATA           P   COPY public."alarmaPuntos" ("idAlarmaPunto", "idAlarma", "idPunto") FROM stdin;
    public          postgres    false    218   ��       `          0    24615    grupoPuntosMedicion 
   TABLE DATA           Z   COPY public."grupoPuntosMedicion" ("idGrupo", titulo, descripcion, "idRango") FROM stdin;
    public          postgres    false    208   ż       a          0    24629    grupoPuntosMedicionCuerpo 
   TABLE DATA           W   COPY public."grupoPuntosMedicionCuerpo" ("idCuerpo", "idGrupo", "idPunto") FROM stdin;
    public          postgres    false    209   "�       q          0    24729    informeAutomaticoCabecera 
   TABLE DATA           �   COPY public."informeAutomaticoCabecera" ("idInforme", nombre, frecuencia, formato, tablas, alarmas, grafico, "enviarCorreo") FROM stdin;
    public          postgres    false    225   M�       s          0    24747    informeAutomaticoCorreos 
   TABLE DATA           d   COPY public."informeAutomaticoCorreos" ("idInformeCorreo", "idInforme", nombre, correo) FROM stdin;
    public          postgres    false    227   ��       r          0    24740    informeAutomaticoPuntos 
   TABLE DATA           d   COPY public."informeAutomaticoPuntos" ("idInformePunto", "idInforme", "idPunto", canal) FROM stdin;
    public          postgres    false    226   �       g          0    24652    noficiacionAlarma 
   TABLE DATA           h   COPY public."noficiacionAlarma" ("idNotificacion", fecha, tipo, "idPunto", evento, estatus) FROM stdin;
    public          postgres    false    215   L�       t          0    24756    pruebaMediciones 
   TABLE DATA           `   COPY public."pruebaMediciones" ("idPrueba", "idPunto", fecha, temperatura, humedad) FROM stdin;
    public          postgres    false    228   ��       [          0    24591    puntoDeMedicion 
   TABLE DATA           K   COPY public."puntoDeMedicion" ("idPunto", nombre, descripcion) FROM stdin;
    public          postgres    false    203   ��       ]          0    24602    rango 
   TABLE DATA           F   COPY public.rango ("idRango", "displayName", descripcion) FROM stdin;
    public          postgres    false    205   a�       d          0    24638    registradorDeDatos 
   TABLE DATA           R   COPY public."registradorDeDatos" ("idRegistrador", nombre, "idPunto") FROM stdin;
    public          postgres    false    212   ��       Y          0    24580    usuario 
   TABLE DATA           �   COPY public.usuario ("idUsuario", titulo, nombre, apellidos, contrasenia, correo, telefono, rol, "activoDesde", "activoHasta", detalles) FROM stdin;
    public          postgres    false    201   �       �           0    0 %   advertenciaCabecera_idAdvertencia_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."advertenciaCabecera_idAdvertencia_seq"', 3, true);
          public          postgres    false    220            �           0    0 )   advertenciaCorreo_idAdvertenciaCorreo_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."advertenciaCorreo_idAdvertenciaCorreo_seq"', 3, true);
          public          postgres    false    233            �           0    0 +   advertenciaRegistrador_idAdvertenciaReg_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."advertenciaRegistrador_idAdvertenciaReg_seq"', 3, true);
          public          postgres    false    232            �           0    0    alarmaCabecera_idAlarma_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."alarmaCabecera_idAlarma_seq"', 2, true);
          public          postgres    false    216            �           0    0 '   alarmaControlTiempo_idAlarmaControl_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."alarmaControlTiempo_idAlarmaControl_seq"', 3, true);
          public          postgres    false    238            �           0    0    alarmaCorreo_idAlarmaCorreo_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."alarmaCorreo_idAlarmaCorreo_seq"', 3, true);
          public          postgres    false    234            �           0    0    alarmaPuntos_idAlarmaPunto_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."alarmaPuntos_idAlarmaPunto_seq"', 2, true);
          public          postgres    false    235            �           0    0 &   grupoPuntosMedicionCuerpo_idCuerpo_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."grupoPuntosMedicionCuerpo_idCuerpo_seq"', 3, true);
          public          postgres    false    231            �           0    0    grupoPuntosMedicion_idGrupo_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."grupoPuntosMedicion_idGrupo_seq"', 2, true);
          public          postgres    false    206            �           0    0    grupoPuntosMedicion_rango_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."grupoPuntosMedicion_rango_seq"', 1, false);
          public          postgres    false    207            �           0    0 '   informeAutomaticoCabecera_idInforme_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."informeAutomaticoCabecera_idInforme_seq"', 2, true);
          public          postgres    false    224            �           0    0 ,   informeAutomaticoCorreos_idInformeCorreo_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."informeAutomaticoCorreos_idInformeCorreo_seq"', 3, true);
          public          postgres    false    236            �           0    0 *   informeAutomaticoPuntos_idInformePunto_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."informeAutomaticoPuntos_idInformePunto_seq"', 4, true);
          public          postgres    false    237            �           0    0 $   noficiacionAlarma_idNotificacion_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."noficiacionAlarma_idNotificacion_seq"', 3, true);
          public          postgres    false    213            �           0    0    noficiacionAlarma_idPunto_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."noficiacionAlarma_idPunto_seq"', 1, false);
          public          postgres    false    214            �           0    0    pruebaMediciones_idPrueba_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."pruebaMediciones_idPrueba_seq"', 3, true);
          public          postgres    false    229            �           0    0    pruebaMediciones_idPunto_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."pruebaMediciones_idPunto_seq"', 1, false);
          public          postgres    false    230            �           0    0    puntoDeMedicion_idPunto_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."puntoDeMedicion_idPunto_seq"', 2, true);
          public          postgres    false    202            �           0    0    rango_idRango_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."rango_idRango_seq"', 2, true);
          public          postgres    false    204            �           0    0    registradorDeDatos_idPunto_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."registradorDeDatos_idPunto_seq"', 1, false);
          public          postgres    false    211            �           0    0 $   registradorDeDatos_idRegistrador_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."registradorDeDatos_idRegistrador_seq"', 2, true);
          public          postgres    false    210            �           0    0    usuario_idUsuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."usuario_idUsuario_seq"', 2, true);
          public          postgres    false    200            �           2606    24708 ,   advertenciaCabecera advertenciaCabecera_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."advertenciaCabecera"
    ADD CONSTRAINT "advertenciaCabecera_pkey" PRIMARY KEY ("idAdvertencia");
 Z   ALTER TABLE ONLY public."advertenciaCabecera" DROP CONSTRAINT "advertenciaCabecera_pkey";
       public            postgres    false    221            �           2606    24823 (   advertenciaCorreo advertenciaCorreo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."advertenciaCorreo"
    ADD CONSTRAINT "advertenciaCorreo_pkey" PRIMARY KEY ("idAdvertenciaCorreo");
 V   ALTER TABLE ONLY public."advertenciaCorreo" DROP CONSTRAINT "advertenciaCorreo_pkey";
       public            postgres    false    223            �           2606    24812 2   advertenciaRegistrador advertenciaRegistrador_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."advertenciaRegistrador"
    ADD CONSTRAINT "advertenciaRegistrador_pkey" PRIMARY KEY ("idAdvertenciaReg");
 `   ALTER TABLE ONLY public."advertenciaRegistrador" DROP CONSTRAINT "advertenciaRegistrador_pkey";
       public            postgres    false    222            �           2606    24672 "   alarmaCabecera alarmaCabecera_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."alarmaCabecera"
    ADD CONSTRAINT "alarmaCabecera_pkey" PRIMARY KEY ("idAlarma");
 P   ALTER TABLE ONLY public."alarmaCabecera" DROP CONSTRAINT "alarmaCabecera_pkey";
       public            postgres    false    217            �           2606    24943 ,   alarmaControlTiempo alarmaControlTiempo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."alarmaControlTiempo"
    ADD CONSTRAINT "alarmaControlTiempo_pkey" PRIMARY KEY ("idAlarmaControl");
 Z   ALTER TABLE ONLY public."alarmaControlTiempo" DROP CONSTRAINT "alarmaControlTiempo_pkey";
       public            postgres    false    239            �           2606    24834    alarmaCorreo alarmaCorreo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."alarmaCorreo"
    ADD CONSTRAINT "alarmaCorreo_pkey" PRIMARY KEY ("idAlarmaCorreo");
 L   ALTER TABLE ONLY public."alarmaCorreo" DROP CONSTRAINT "alarmaCorreo_pkey";
       public            postgres    false    219            �           2606    24908    alarmaPuntos alarmaPuntos_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."alarmaPuntos"
    ADD CONSTRAINT "alarmaPuntos_pkey" PRIMARY KEY ("idAlarmaPunto");
 L   ALTER TABLE ONLY public."alarmaPuntos" DROP CONSTRAINT "alarmaPuntos_pkey";
       public            postgres    false    218            �           2606    24804 8   grupoPuntosMedicionCuerpo grupoPuntosMedicionCuerpo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."grupoPuntosMedicionCuerpo"
    ADD CONSTRAINT "grupoPuntosMedicionCuerpo_pkey" PRIMARY KEY ("idCuerpo");
 f   ALTER TABLE ONLY public."grupoPuntosMedicionCuerpo" DROP CONSTRAINT "grupoPuntosMedicionCuerpo_pkey";
       public            postgres    false    209            �           2606    24624 ,   grupoPuntosMedicion grupoPuntosMedicion_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."grupoPuntosMedicion"
    ADD CONSTRAINT "grupoPuntosMedicion_pkey" PRIMARY KEY ("idGrupo");
 Z   ALTER TABLE ONLY public."grupoPuntosMedicion" DROP CONSTRAINT "grupoPuntosMedicion_pkey";
       public            postgres    false    208            �           2606    24916 8   informeAutomaticoCabecera informeAutomaticoCabecera_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."informeAutomaticoCabecera"
    ADD CONSTRAINT "informeAutomaticoCabecera_pkey" PRIMARY KEY ("idInforme");
 f   ALTER TABLE ONLY public."informeAutomaticoCabecera" DROP CONSTRAINT "informeAutomaticoCabecera_pkey";
       public            postgres    false    225            �           2606    24927 6   informeAutomaticoCorreos informeAutomaticoCorreos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."informeAutomaticoCorreos"
    ADD CONSTRAINT "informeAutomaticoCorreos_pkey" PRIMARY KEY ("idInformeCorreo");
 d   ALTER TABLE ONLY public."informeAutomaticoCorreos" DROP CONSTRAINT "informeAutomaticoCorreos_pkey";
       public            postgres    false    227            �           2606    24935 4   informeAutomaticoPuntos informeAutomaticoPuntos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."informeAutomaticoPuntos"
    ADD CONSTRAINT "informeAutomaticoPuntos_pkey" PRIMARY KEY ("idInformePunto");
 b   ALTER TABLE ONLY public."informeAutomaticoPuntos" DROP CONSTRAINT "informeAutomaticoPuntos_pkey";
       public            postgres    false    226            �           2606    24661 (   noficiacionAlarma noficiacionAlarma_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."noficiacionAlarma"
    ADD CONSTRAINT "noficiacionAlarma_pkey" PRIMARY KEY ("idNotificacion");
 V   ALTER TABLE ONLY public."noficiacionAlarma" DROP CONSTRAINT "noficiacionAlarma_pkey";
       public            postgres    false    215            �           2606    24796 &   pruebaMediciones pruebaMediciones_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."pruebaMediciones"
    ADD CONSTRAINT "pruebaMediciones_pkey" PRIMARY KEY ("idPrueba");
 T   ALTER TABLE ONLY public."pruebaMediciones" DROP CONSTRAINT "pruebaMediciones_pkey";
       public            postgres    false    228            �           2606    24599 $   puntoDeMedicion puntoDeMedicion_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."puntoDeMedicion"
    ADD CONSTRAINT "puntoDeMedicion_pkey" PRIMARY KEY ("idPunto");
 R   ALTER TABLE ONLY public."puntoDeMedicion" DROP CONSTRAINT "puntoDeMedicion_pkey";
       public            postgres    false    203            �           2606    24610    rango rango_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.rango
    ADD CONSTRAINT rango_pkey PRIMARY KEY ("idRango");
 :   ALTER TABLE ONLY public.rango DROP CONSTRAINT rango_pkey;
       public            postgres    false    205            �           2606    24647 *   registradorDeDatos registradorDeDatos_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."registradorDeDatos"
    ADD CONSTRAINT "registradorDeDatos_pkey" PRIMARY KEY ("idRegistrador");
 X   ALTER TABLE ONLY public."registradorDeDatos" DROP CONSTRAINT "registradorDeDatos_pkey";
       public            postgres    false    212            �           2606    24588    usuario usuario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY ("idUsuario");
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    201            m   7   x�3�tK���WHIU(��I����t�2���(���%����%<�b���� W�      o   d   x�M�1�  ����� ��qr����  �7s�-w,���x���!q���[eۥ�#c��ʝ�@����4W^Ʉq���Ԟ���_"��k#Q      n      x�3�4�4�2�4�4�2��\1z\\\ !��      i   3   x�3�.M.-*N�Q�I,VH��/J-�4�t�2B�)M�+J �b���� ;/�         ;   x�3�4�44�42�4�N+0��5F�F`�x�k�9��1 �`pM� ��J�      k   ^   x�3�4����UILͨ,�K����K�+IuH�L��,��.�2��J��S�*�����twvC�7�4�ᗘ���������_쓙�lH� ��#      j      x�3�4�4�2��\1z\\\ 	      `   M   x�3�t/*-�W.M*-J��/�t�I,�M,VH�S�R�i��E@:%�UH�,MIL��4�2�j-JJ��'VW� �	%�      a      x�3�4�4�2�4�4�2�1z\\\ !��      q   K   x�3���K�/�MUN�M�K�Qp:��839���pq�C?.#�j�Լ�R��T���Ԕ�N���=... h3!      s   e   x�3�4����UN�������pH�L��,��.�2��f�)D���gr�f���'")0�4�H-HUHMN,�,�LN, �b����Ԥ�b���\�=... ��!E      r      x�3�4�.#0��e�i�M�t� [1�      g   S   x�3�4202�54�54V00�20 "NǜĢ�DN#��҂Ԣ���Û�8����M�(��+.M�L�L�K�L*7&E�W� 0�$�      t   8   x�3�4�4202�54"+0�44�42�2�%k
�2F�5F���4������� �y�      [   Z   x�3�.M.-*N�Q���ŜN9e)z
�y%�y��0QS P((I��2B�	N�KI-��t,�S�/N�L���Q077W��/������ �O�      ]   O   x�3�<�X�����������P��������`j���ZR�_��eU�^����
R���T)$�&� 5����qqq Y;      d   !   x�3��04�54vvq�4�2���� �=... m�      Y   �   x�3�tL����,.)JL�/�H-Hɉ�
�ɉ
��Ŝ��)�婆FƜ@y����Ԥ�b���\�?N��T�f##]C	CT)s!� ��,�� ��@1�����������F ;b���� V?�     