/*
 Backup para la demostración
 Fecha: 22/11/2022 03:02:06
*/


-- ----------------------------
-- Table structure for app1_cargo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_cargo]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_cargo]
GO

CREATE TABLE [dbo].[app1_cargo] (
  [id] int  NOT NULL,
  [cargo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[app1_cargo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of app1_cargo
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_cargo] ([id], [cargo], [estado]) VALUES (N'1', N'director', N'1')
GO

INSERT INTO [dbo].[app1_cargo] ([id], [cargo], [estado]) VALUES (N'2', N'asesor', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_categoria
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_categoria]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_categoria]
GO

CREATE TABLE [dbo].[app1_categoria] (
  [id] int  NOT NULL,
  [categoria] varchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[app1_categoria] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of app1_categoria
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_categoria] ([id], [categoria], [estado]) VALUES (N'1', N'canto', N'1')
GO

INSERT INTO [dbo].[app1_categoria] ([id], [categoria], [estado]) VALUES (N'2', N'baile', N'1')
GO

INSERT INTO [dbo].[app1_categoria] ([id], [categoria], [estado]) VALUES (N'3', N'ilustración', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_ciudad
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_ciudad]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_ciudad]
GO

CREATE TABLE [dbo].[app1_ciudad] (
  [id] int  NOT NULL,
  [ciudad] varchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[app1_ciudad] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of app1_ciudad
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_ciudad] ([id], [ciudad], [estado]) VALUES (N'1', N'Medellín', N'1')
GO

INSERT INTO [dbo].[app1_ciudad] ([id], [ciudad], [estado]) VALUES (N'2', N'Bogotá', N'1')
GO

INSERT INTO [dbo].[app1_ciudad] ([id], [ciudad], [estado]) VALUES (N'3', N'Cali', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_concurso
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_concurso]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_concurso]
GO

CREATE TABLE [dbo].[app1_concurso] (
  [id] int  NOT NULL,
  [concurso] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fecha_inicio] date  NULL,
  [fecha_fin] date  NULL,
  [fecha_max_registro] date  NULL,
  [maxpersonas] int  NOT NULL,
  [estado] int  NOT NULL,
  [descripcion] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [urlImagenLogo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [urlImagenOficial] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[app1_concurso] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'url imagen logo oficial',
'SCHEMA', N'dbo',
'TABLE', N'app1_concurso',
'COLUMN', N'urlImagenLogo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'url imagen oficial',
'SCHEMA', N'dbo',
'TABLE', N'app1_concurso',
'COLUMN', N'urlImagenOficial'
GO


-- ----------------------------
-- Records of app1_concurso
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_concurso] ([id], [concurso], [fecha_inicio], [fecha_fin], [fecha_max_registro], [maxpersonas], [estado], [descripcion], [urlImagenLogo], [urlImagenOficial]) VALUES (N'1', N'Concurso talentos Medellin y Bogota', N'2022-11-18', N'2022-11-21', N'2022-11-22', N'2', N'1', N'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum i[r]ure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', N'https://www.shutterstock.com/image-vector/abstract-art-square-rhombus-logo-260nw-1911651898.jpg', N'https://www.shutterstock.com/image-vector/abstract-art-square-rhombus-logo-260nw-1911651898.jpg')
GO

INSERT INTO [dbo].[app1_concurso] ([id], [concurso], [fecha_inicio], [fecha_fin], [fecha_max_registro], [maxpersonas], [estado], [descripcion], [urlImagenLogo], [urlImagenOficial]) VALUES (N'2', N'Concurso talentos Cali', N'2022-11-17', N'2022-11-25', N'2022-11-28', N'10', N'1', N'Sed2 ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum i[r]ure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', N'https://www.shutterstock.com/image-vector/abstract-art-square-rhombus-logo-260nw-1911651898.jpg', N'https://www.shutterstock.com/image-vector/abstract-art-square-rhombus-logo-260nw-1911651898.jpg')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_concurso_inscritos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_concurso_inscritos]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_concurso_inscritos]
GO

CREATE TABLE [dbo].[app1_concurso_inscritos] (
  [id] int  NOT NULL,
  [idconcurso] int  NOT NULL,
  [idempleado] int  NOT NULL,
  [idcategoria] int  NULL,
  [registro] datetime2(7)  NOT NULL,
  [estado] int  NULL,
  [intentos] int  NULL,
  [actualizado] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[app1_concurso_inscritos] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'fecha de registro',
'SCHEMA', N'dbo',
'TABLE', N'app1_concurso_inscritos',
'COLUMN', N'registro'
GO


-- ----------------------------
-- Records of app1_concurso_inscritos
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_concurso_inscritos] ([id], [idconcurso], [idempleado], [idcategoria], [registro], [estado], [intentos], [actualizado]) VALUES (N'1', N'1', N'2', N'1', N'2022-11-21 07:45:28.0000000', N'1', N'23', N'2022-11-21 13:07:59.0000000')
GO

INSERT INTO [dbo].[app1_concurso_inscritos] ([id], [idconcurso], [idempleado], [idcategoria], [registro], [estado], [intentos], [actualizado]) VALUES (N'4', N'1', N'3', N'3', N'2022-11-21 11:02:03.0000000', N'1', N'6', N'2022-11-21 11:18:52.0000000')
GO

INSERT INTO [dbo].[app1_concurso_inscritos] ([id], [idconcurso], [idempleado], [idcategoria], [registro], [estado], [intentos], [actualizado]) VALUES (N'5', N'2', N'4', N'1', N'2022-11-21 11:57:14.0000000', N'1', N'3', N'2022-11-21 13:42:09.0000000')
GO

INSERT INTO [dbo].[app1_concurso_inscritos] ([id], [idconcurso], [idempleado], [idcategoria], [registro], [estado], [intentos], [actualizado]) VALUES (N'6', N'1', N'5', N'1', N'2022-11-19 05:52:50.0000000', N'1', N'1', NULL)
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_concurso_inscritos_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_concurso_inscritos_log]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_concurso_inscritos_log]
GO

CREATE TABLE [dbo].[app1_concurso_inscritos_log] (
  [id] int  NOT NULL,
  [idconcurso] int  NOT NULL,
  [idempleado] int  NULL,
  [idcategoria] int  NULL,
  [cedula] int  NULL,
  [codigoempleado] int  NULL,
  [registro] datetime2(7)  NULL,
  [estado] int  NULL,
  [intentos] int  NULL,
  [actualizado] datetime2(7)  NULL,
  [descripcion] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[app1_concurso_inscritos_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'fecha de registro',
'SCHEMA', N'dbo',
'TABLE', N'app1_concurso_inscritos_log',
'COLUMN', N'registro'
GO


-- ----------------------------
-- Records of app1_concurso_inscritos_log
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_concurso_inscritos_log] ([id], [idconcurso], [idempleado], [idcategoria], [cedula], [codigoempleado], [registro], [estado], [intentos], [actualizado], [descripcion]) VALUES (N'1', N'2', N'0', N'2', N'775521', N'5489', N'2022-11-21 13:42:09.0000000', N'1', N'2', N'2022-11-21 13:42:44.0000000', N'Usted ya cuenta con una inscripción, recuerde mirar todo lo relacionado del concurso en el sitio web.; Disculpa, no alcanzaste a registrarte, sigue pendiente de las próximas convocatorias, gracias!')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_concurso_inscritos_puntaje
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_concurso_inscritos_puntaje]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_concurso_inscritos_puntaje]
GO

CREATE TABLE [dbo].[app1_concurso_inscritos_puntaje] (
  [id] int  NOT NULL,
  [idinscrito] int  NOT NULL,
  [puntaje] int  NOT NULL,
  [idusuario] int  NOT NULL,
  [registro] datetime2(7)  NOT NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[app1_concurso_inscritos_puntaje] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'quien graba',
'SCHEMA', N'dbo',
'TABLE', N'app1_concurso_inscritos_puntaje',
'COLUMN', N'idusuario'
GO

EXEC sp_addextendedproperty
'MS_Description', N'fecha de registro',
'SCHEMA', N'dbo',
'TABLE', N'app1_concurso_inscritos_puntaje',
'COLUMN', N'registro'
GO


-- ----------------------------
-- Records of app1_concurso_inscritos_puntaje
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_concurso_inscritos_puntaje] ([id], [idinscrito], [puntaje], [idusuario], [registro], [estado]) VALUES (N'1', N'1', N'55', N'1', N'2022-11-21 14:03:11.0000000', N'1')
GO

INSERT INTO [dbo].[app1_concurso_inscritos_puntaje] ([id], [idinscrito], [puntaje], [idusuario], [registro], [estado]) VALUES (N'3', N'4', N'72', N'1', N'2022-11-21 14:03:22.0000000', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_concurso_reglas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_concurso_reglas]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_concurso_reglas]
GO

CREATE TABLE [dbo].[app1_concurso_reglas] (
  [id] int  NOT NULL,
  [idconcurso] int  NULL,
  [idcategoria] int  NULL,
  [idciudad] int  NULL,
  [idcargo] int  NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[app1_concurso_reglas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of app1_concurso_reglas
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_concurso_reglas] ([id], [idconcurso], [idcategoria], [idciudad], [idcargo], [estado]) VALUES (N'1', N'1', N'1', N'2', N'2', N'1')
GO

INSERT INTO [dbo].[app1_concurso_reglas] ([id], [idconcurso], [idcategoria], [idciudad], [idcargo], [estado]) VALUES (N'2', N'1', N'2', N'2', N'2', N'1')
GO

INSERT INTO [dbo].[app1_concurso_reglas] ([id], [idconcurso], [idcategoria], [idciudad], [idcargo], [estado]) VALUES (N'3', N'1', N'3', N'2', N'2', N'1')
GO

INSERT INTO [dbo].[app1_concurso_reglas] ([id], [idconcurso], [idcategoria], [idciudad], [idcargo], [estado]) VALUES (N'4', N'1', N'1', N'1', N'2', N'1')
GO

INSERT INTO [dbo].[app1_concurso_reglas] ([id], [idconcurso], [idcategoria], [idciudad], [idcargo], [estado]) VALUES (N'5', N'1', N'2', N'1', N'2', N'1')
GO

INSERT INTO [dbo].[app1_concurso_reglas] ([id], [idconcurso], [idcategoria], [idciudad], [idcargo], [estado]) VALUES (N'6', N'1', N'3', N'1', N'2', N'1')
GO

INSERT INTO [dbo].[app1_concurso_reglas] ([id], [idconcurso], [idcategoria], [idciudad], [idcargo], [estado]) VALUES (N'7', N'2', N'1', N'3', N'2', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_diccionario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_diccionario]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_diccionario]
GO

CREATE TABLE [dbo].[app1_diccionario] (
  [name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [value] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[app1_diccionario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of app1_diccionario
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_diccionario] ([name], [value]) VALUES (N'menuOpcion1', N'Inicio')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_empleado
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_empleado]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_empleado]
GO

CREATE TABLE [dbo].[app1_empleado] (
  [id] int  NOT NULL,
  [codigoEmpleado] int  NOT NULL,
  [nombre] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [idcargo] int  NOT NULL,
  [cedula] int  NOT NULL,
  [idciudad] int  NOT NULL,
  [idsexo] int  NOT NULL,
  [edad] int  NOT NULL,
  [estado] int  NULL
)
GO

ALTER TABLE [dbo].[app1_empleado] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of app1_empleado
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_empleado] ([id], [codigoEmpleado], [nombre], [idcargo], [cedula], [idciudad], [idsexo], [edad], [estado]) VALUES (N'1', N'555', N'Monica', N'1', N'109020', N'1', N'1', N'25', N'1')
GO

INSERT INTO [dbo].[app1_empleado] ([id], [codigoEmpleado], [nombre], [idcargo], [cedula], [idciudad], [idsexo], [edad], [estado]) VALUES (N'2', N'321', N'Pepe', N'2', N'999', N'2', N'2', N'20', N'1')
GO

INSERT INTO [dbo].[app1_empleado] ([id], [codigoEmpleado], [nombre], [idcargo], [cedula], [idciudad], [idsexo], [edad], [estado]) VALUES (N'3', N'453', N'Angela Garcia', N'2', N'43256', N'2', N'1', N'33', N'1')
GO

INSERT INTO [dbo].[app1_empleado] ([id], [codigoEmpleado], [nombre], [idcargo], [cedula], [idciudad], [idsexo], [edad], [estado]) VALUES (N'4', N'5489', N'Alejandra Vasquez', N'2', N'775521', N'3', N'1', N'23', N'1')
GO

INSERT INTO [dbo].[app1_empleado] ([id], [codigoEmpleado], [nombre], [idcargo], [cedula], [idciudad], [idsexo], [edad], [estado]) VALUES (N'5', N'5050', N'Diana', N'2', N'1001', N'2', N'1', N'20', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for App1_quienesfesus
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[App1_quienesfesus]') AND type IN ('U'))
	DROP TABLE [dbo].[App1_quienesfesus]
GO

CREATE TABLE [dbo].[App1_quienesfesus] (
  [id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[App1_quienesfesus] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of App1_quienesfesus
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for app1_sexo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[app1_sexo]') AND type IN ('U'))
	DROP TABLE [dbo].[app1_sexo]
GO

CREATE TABLE [dbo].[app1_sexo] (
  [id] int  NOT NULL,
  [sexo] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[app1_sexo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of app1_sexo
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[app1_sexo] ([id], [sexo]) VALUES (N'1', N'Femenino')
GO

INSERT INTO [dbo].[app1_sexo] ([id], [sexo]) VALUES (N'2', N'Masculino')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_group]') AND type IN ('U'))
	DROP TABLE [dbo].[auth_group]
GO

CREATE TABLE [dbo].[auth_group] (
  [id] int  NOT NULL,
  [name] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[auth_group] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_group_permissions]') AND type IN ('U'))
	DROP TABLE [dbo].[auth_group_permissions]
GO

CREATE TABLE [dbo].[auth_group_permissions] (
  [id] bigint  NOT NULL,
  [group_id] int  NOT NULL,
  [permission_id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[auth_group_permissions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[auth_permission]
GO

CREATE TABLE [dbo].[auth_permission] (
  [id] int  NOT NULL,
  [name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [content_type_id] int  NOT NULL,
  [codename] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[auth_permission] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'1', N'Can add log entry', N'1', N'add_logentry')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'2', N'Can change log entry', N'1', N'change_logentry')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'3', N'Can delete log entry', N'1', N'delete_logentry')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'4', N'Can view log entry', N'1', N'view_logentry')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'5', N'Can add permission', N'2', N'add_permission')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'6', N'Can change permission', N'2', N'change_permission')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'7', N'Can delete permission', N'2', N'delete_permission')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'8', N'Can view permission', N'2', N'view_permission')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'9', N'Can add group', N'3', N'add_group')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'10', N'Can change group', N'3', N'change_group')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'11', N'Can delete group', N'3', N'delete_group')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'12', N'Can view group', N'3', N'view_group')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'13', N'Can add user', N'4', N'add_user')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'14', N'Can change user', N'4', N'change_user')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'15', N'Can delete user', N'4', N'delete_user')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'16', N'Can view user', N'4', N'view_user')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'17', N'Can add content type', N'5', N'add_contenttype')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'18', N'Can change content type', N'5', N'change_contenttype')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'19', N'Can delete content type', N'5', N'delete_contenttype')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'20', N'Can view content type', N'5', N'view_contenttype')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'21', N'Can add session', N'6', N'add_session')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'22', N'Can change session', N'6', N'change_session')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'23', N'Can delete session', N'6', N'delete_session')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'24', N'Can view session', N'6', N'view_session')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'25', N'Can add app1 cargo', N'7', N'add_app1cargo')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'26', N'Can change app1 cargo', N'7', N'change_app1cargo')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'27', N'Can delete app1 cargo', N'7', N'delete_app1cargo')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'28', N'Can view app1 cargo', N'7', N'view_app1cargo')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'29', N'Can add app1 categoria', N'8', N'add_app1categoria')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'30', N'Can change app1 categoria', N'8', N'change_app1categoria')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'31', N'Can delete app1 categoria', N'8', N'delete_app1categoria')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'32', N'Can view app1 categoria', N'8', N'view_app1categoria')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'33', N'Can add app1 ciudad', N'9', N'add_app1ciudad')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'34', N'Can change app1 ciudad', N'9', N'change_app1ciudad')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'35', N'Can delete app1 ciudad', N'9', N'delete_app1ciudad')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'36', N'Can view app1 ciudad', N'9', N'view_app1ciudad')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'37', N'Can add app1 concurso', N'10', N'add_app1concurso')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'38', N'Can change app1 concurso', N'10', N'change_app1concurso')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'39', N'Can delete app1 concurso', N'10', N'delete_app1concurso')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'40', N'Can view app1 concurso', N'10', N'view_app1concurso')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'41', N'Can add app1 concurso puntaje', N'11', N'add_app1concursopuntaje')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'42', N'Can change app1 concurso puntaje', N'11', N'change_app1concursopuntaje')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'43', N'Can delete app1 concurso puntaje', N'11', N'delete_app1concursopuntaje')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'44', N'Can view app1 concurso puntaje', N'11', N'view_app1concursopuntaje')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'45', N'Can add app1 concurso reglas', N'12', N'add_app1concursoreglas')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'46', N'Can change app1 concurso reglas', N'12', N'change_app1concursoreglas')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'47', N'Can delete app1 concurso reglas', N'12', N'delete_app1concursoreglas')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'48', N'Can view app1 concurso reglas', N'12', N'view_app1concursoreglas')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'49', N'Can add app1 empleado', N'13', N'add_app1empleado')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'50', N'Can change app1 empleado', N'13', N'change_app1empleado')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'51', N'Can delete app1 empleado', N'13', N'delete_app1empleado')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'52', N'Can view app1 empleado', N'13', N'view_app1empleado')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'53', N'Can add app1 sexo', N'14', N'add_app1sexo')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'54', N'Can change app1 sexo', N'14', N'change_app1sexo')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'55', N'Can delete app1 sexo', N'14', N'delete_app1sexo')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'56', N'Can view app1 sexo', N'14', N'view_app1sexo')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'57', N'Can add auth group', N'15', N'add_authgroup')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'58', N'Can change auth group', N'15', N'change_authgroup')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'59', N'Can delete auth group', N'15', N'delete_authgroup')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'60', N'Can view auth group', N'15', N'view_authgroup')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'61', N'Can add auth group permissions', N'16', N'add_authgrouppermissions')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'62', N'Can change auth group permissions', N'16', N'change_authgrouppermissions')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'63', N'Can delete auth group permissions', N'16', N'delete_authgrouppermissions')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'64', N'Can view auth group permissions', N'16', N'view_authgrouppermissions')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'65', N'Can add auth permission', N'17', N'add_authpermission')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'66', N'Can change auth permission', N'17', N'change_authpermission')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'67', N'Can delete auth permission', N'17', N'delete_authpermission')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'68', N'Can view auth permission', N'17', N'view_authpermission')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'69', N'Can add auth user', N'18', N'add_authuser')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'70', N'Can change auth user', N'18', N'change_authuser')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'71', N'Can delete auth user', N'18', N'delete_authuser')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'72', N'Can view auth user', N'18', N'view_authuser')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'73', N'Can add auth user groups', N'19', N'add_authusergroups')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'74', N'Can change auth user groups', N'19', N'change_authusergroups')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'75', N'Can delete auth user groups', N'19', N'delete_authusergroups')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'76', N'Can view auth user groups', N'19', N'view_authusergroups')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'77', N'Can add auth user user permissions', N'20', N'add_authuseruserpermissions')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'78', N'Can change auth user user permissions', N'20', N'change_authuseruserpermissions')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'79', N'Can delete auth user user permissions', N'20', N'delete_authuseruserpermissions')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'80', N'Can view auth user user permissions', N'20', N'view_authuseruserpermissions')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'81', N'Can add django admin log', N'21', N'add_djangoadminlog')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'82', N'Can change django admin log', N'21', N'change_djangoadminlog')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'83', N'Can delete django admin log', N'21', N'delete_djangoadminlog')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'84', N'Can view django admin log', N'21', N'view_djangoadminlog')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'85', N'Can add django content type', N'22', N'add_djangocontenttype')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'86', N'Can change django content type', N'22', N'change_djangocontenttype')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'87', N'Can delete django content type', N'22', N'delete_djangocontenttype')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'88', N'Can view django content type', N'22', N'view_djangocontenttype')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'89', N'Can add django migrations', N'23', N'add_djangomigrations')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'90', N'Can change django migrations', N'23', N'change_djangomigrations')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'91', N'Can delete django migrations', N'23', N'delete_djangomigrations')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'92', N'Can view django migrations', N'23', N'view_djangomigrations')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'93', N'Can add django session', N'24', N'add_djangosession')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'94', N'Can change django session', N'24', N'change_djangosession')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'95', N'Can delete django session', N'24', N'delete_djangosession')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'96', N'Can view django session', N'24', N'view_djangosession')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'97', N'Can add app1 diccionario', N'25', N'add_app1diccionario')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'98', N'Can change app1 diccionario', N'25', N'change_app1diccionario')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'99', N'Can delete app1 diccionario', N'25', N'delete_app1diccionario')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'100', N'Can view app1 diccionario', N'25', N'view_app1diccionario')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'101', N'Can add quien es fesus', N'26', N'add_quienesfesus')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'102', N'Can change quien es fesus', N'26', N'change_quienesfesus')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'103', N'Can delete quien es fesus', N'26', N'delete_quienesfesus')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'104', N'Can view quien es fesus', N'26', N'view_quienesfesus')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'105', N'Can add app1 concurso inscritos', N'27', N'add_app1concursoinscritos')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'106', N'Can change app1 concurso inscritos', N'27', N'change_app1concursoinscritos')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'107', N'Can delete app1 concurso inscritos', N'27', N'delete_app1concursoinscritos')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'108', N'Can view app1 concurso inscritos', N'27', N'view_app1concursoinscritos')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'109', N'Can add app1 concurso inscritos puntaje', N'28', N'add_app1concursoinscritospuntaje')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'110', N'Can change app1 concurso inscritos puntaje', N'28', N'change_app1concursoinscritospuntaje')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'111', N'Can delete app1 concurso inscritos puntaje', N'28', N'delete_app1concursoinscritospuntaje')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'112', N'Can view app1 concurso inscritos puntaje', N'28', N'view_app1concursoinscritospuntaje')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'113', N'Can add app1 concurso inscritos log', N'29', N'add_app1concursoinscritoslog')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'114', N'Can change app1 concurso inscritos log', N'29', N'change_app1concursoinscritoslog')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'115', N'Can delete app1 concurso inscritos log', N'29', N'delete_app1concursoinscritoslog')
GO

INSERT INTO [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (N'116', N'Can view app1 concurso inscritos log', N'29', N'view_app1concursoinscritoslog')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_user]') AND type IN ('U'))
	DROP TABLE [dbo].[auth_user]
GO

CREATE TABLE [dbo].[auth_user] (
  [id] int  NOT NULL,
  [password] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [last_login] datetime2(7)  NULL,
  [is_superuser] tinyint  NOT NULL,
  [username] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [first_name] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [last_name] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [email] varchar(254) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [is_staff] tinyint  NOT NULL,
  [is_active] tinyint  NOT NULL,
  [date_joined] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[auth_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (N'1', N'pbkdf2_sha256$390000$4MYYSTC8D6wUbwA4Sg5ndM$6MPVtp4/4Ej4QAARTwStFssHJP/7l+o9uTYWiLq5RmI=', N'2022-11-21 13:48:37.6067630', N'1', N'fesus', N'', N'', N'fesusrocuts@gmail.com', N'1', N'1', N'2022-11-18 20:05:10.7075300')
GO

INSERT INTO [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (N'2', N'pbkdf2_sha256$390000$aXLxTyoojj5Qhw87G7CgLL$2Wd0vXFSQ16tk4B54dHdEpNPRySPz3PISSAQPiN64xM=', N'2022-11-22 05:50:48.5448670', N'0', N'director', N'Director', N'de Algo', N'director@algunacosaporponer.com', N'1', N'1', N'2022-11-20 09:48:45.0000000')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_user_groups]') AND type IN ('U'))
	DROP TABLE [dbo].[auth_user_groups]
GO

CREATE TABLE [dbo].[auth_user_groups] (
  [id] bigint  NOT NULL,
  [user_id] int  NOT NULL,
  [group_id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[auth_user_groups] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_user_user_permissions]') AND type IN ('U'))
	DROP TABLE [dbo].[auth_user_user_permissions]
GO

CREATE TABLE [dbo].[auth_user_user_permissions] (
  [id] bigint  NOT NULL,
  [user_id] int  NOT NULL,
  [permission_id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[auth_user_user_permissions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'1', N'2', N'25')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'2', N'2', N'26')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'3', N'2', N'27')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'4', N'2', N'28')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'5', N'2', N'29')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'6', N'2', N'30')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'7', N'2', N'31')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'8', N'2', N'32')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'9', N'2', N'33')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'10', N'2', N'34')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'11', N'2', N'35')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'12', N'2', N'36')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'13', N'2', N'37')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'14', N'2', N'38')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'15', N'2', N'39')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'16', N'2', N'40')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'25', N'2', N'45')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'26', N'2', N'46')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'27', N'2', N'47')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'28', N'2', N'48')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'21', N'2', N'49')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'22', N'2', N'50')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'23', N'2', N'51')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'24', N'2', N'52')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'29', N'2', N'53')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'30', N'2', N'54')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'31', N'2', N'55')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'32', N'2', N'56')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'33', N'2', N'105')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'34', N'2', N'106')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'35', N'2', N'107')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'36', N'2', N'108')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'37', N'2', N'109')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'38', N'2', N'110')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'39', N'2', N'111')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'40', N'2', N'112')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'41', N'2', N'113')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'42', N'2', N'114')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'43', N'2', N'115')
GO

INSERT INTO [dbo].[auth_user_user_permissions] ([id], [user_id], [permission_id]) VALUES (N'44', N'2', N'116')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[django_admin_log]') AND type IN ('U'))
	DROP TABLE [dbo].[django_admin_log]
GO

CREATE TABLE [dbo].[django_admin_log] (
  [id] int  NOT NULL,
  [action_time] datetime2(7)  NOT NULL,
  [object_id] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [object_repr] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [action_flag] smallint  NOT NULL,
  [change_message] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [content_type_id] int  NULL,
  [user_id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[django_admin_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'1', N'2022-11-18 20:56:28.9484970', N'1', N'App1Cargo object (1)', N'1', N'[{"added": {}}]', N'7', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'2', N'2022-11-18 21:05:15.7517630', N'2', N'asesor (activo)', N'1', N'[{"added": {}}]', N'7', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'3', N'2022-11-18 21:10:40.2148110', N'1', N'App1Ciudad object (1)', N'1', N'[{"added": {}}]', N'9', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'4', N'2022-11-18 21:10:48.9098650', N'2', N'App1Ciudad object (2)', N'1', N'[{"added": {}}]', N'9', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'5', N'2022-11-18 21:11:59.1004420', N'1', N'App1Categoria object (1)', N'1', N'[{"added": {}}]', N'8', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'6', N'2022-11-18 21:12:44.2828130', N'2', N'App1Categoria object (2)', N'1', N'[{"added": {}}]', N'8', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'7', N'2022-11-18 21:12:58.4630770', N'3', N'App1Categoria object (3)', N'1', N'[{"added": {}}]', N'8', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'8', N'2022-11-18 21:20:05.2662380', N'1', N'App1Concurso object (1)', N'1', N'[{"added": {}}]', N'10', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'9', N'2022-11-18 21:26:08.8349550', N'1', N'App1Sexo object (1)', N'1', N'[{"added": {}}]', N'14', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'10', N'2022-11-18 21:26:16.9730970', N'2', N'App1Sexo object (2)', N'1', N'[{"added": {}}]', N'14', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'11', N'2022-11-18 21:28:54.7418730', N'1', N'App1Empleado object (1)', N'1', N'[{"added": {}}]', N'13', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'12', N'2022-11-18 21:32:43.0761810', N'2', N'Pepe (activo) Más: 999, Asesor (activo), Bogotá (activo)', N'1', N'[{"added": {}}]', N'13', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'13', N'2022-11-18 21:37:22.1890400', N'1', N'App1ConcursoReglas object (1)', N'1', N'[{"added": {}}]', N'12', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'14', N'2022-11-18 21:39:52.6589740', N'2', N'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Baile (activo), Bogotá (activo), Asesor (activo)', N'1', N'[{"added": {}}]', N'12', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'15', N'2022-11-18 21:40:05.3683970', N'3', N'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Ilustración (activo), Bogotá (activo), Asesor (activo)', N'1', N'[{"added": {}}]', N'12', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'16', N'2022-11-18 21:40:27.9361210', N'4', N'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Canto (activo), Medellín (activo), Asesor (activo)', N'1', N'[{"added": {}}]', N'12', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'17', N'2022-11-18 21:40:46.0238690', N'5', N'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Baile (activo), Medellín (activo), Asesor (activo)', N'1', N'[{"added": {}}]', N'12', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'18', N'2022-11-18 21:41:02.3946110', N'6', N'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Ilustración (activo), Medellín (activo), Asesor (activo)', N'1', N'[{"added": {}}]', N'12', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'19', N'2022-11-18 21:58:28.2712950', N'1', N'App1ConcursoPuntaje object (1)', N'1', N'[{"added": {}}]', N'11', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'20', N'2022-11-18 22:08:00.6782590', N'1', N'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) | Empleado: Pepe (activo) Más: 999, Asesor (activo), Bogotá (activo)(puntos 10 - cat ', N'2', N'[{"changed": {"fields": ["Idempleado"]}}]', N'11', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'21', N'2022-11-18 23:47:16.8423490', N'1', N'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) | Empleado: Pepe (activo) Más: 999, Asesor (activo), Bogotá (activo)(puntos 10 - cat ', N'2', N'[]', N'11', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'22', N'2022-11-20 02:16:50.0964180', N'menuOpcion1', N'App1Diccionario object (menuOpcion1)', N'1', N'[{"added": {}}]', N'25', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'23', N'2022-11-20 06:14:33.4783360', N'1', N'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-20', N'2', N'[{"changed": {"fields": ["Urlimagenlogo", "Urlimagenoficial"]}}]', N'10', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'24', N'2022-11-20 09:41:51.9300270', N'2', N'director', N'1', N'[{"added": {}}]', N'4', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'25', N'2022-11-20 09:49:15.4500770', N'2', N'director', N'2', N'[{"changed": {"fields": ["First name", "Last name", "Email address", "Staff status", "User permissions", "Date joined"]}}]', N'4', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'26', N'2022-11-20 09:52:18.3635370', N'2', N'director', N'2', N'[{"changed": {"fields": ["User permissions"]}}]', N'4', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'27', N'2022-11-21 08:10:20.5372510', N'2', N'director', N'2', N'[{"changed": {"fields": ["User permissions"]}}]', N'4', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'28', N'2022-11-21 08:21:37.6403160', N'3', N'(Id:43256) Angela garcia cargo: Asesor (activo)/Bogotá (activo) - activo', N'1', N'[{"added": {}}]', N'13', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'29', N'2022-11-21 08:22:31.4557280', N'4', N'(Id:775521) Alejandra vasquez cargo: Asesor (activo)/Cali (activo) - activo', N'1', N'[{"added": {}}]', N'13', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'30', N'2022-11-21 11:56:34.8546990', N'7', N'Concurso talentos cali (activo) Desde 2022-11-17 hasta 2022-11-25 Incripción max: 2022-11-28 (activo) Más: Canto (activo), Cali (activo), Asesor (activo)', N'1', N'[{"added": {}}]', N'12', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'31', N'2022-11-21 13:48:32.4845270', N'2', N'director', N'2', N'[{"changed": {"fields": ["User permissions"]}}]', N'4', N'1')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'32', N'2022-11-21 13:57:15.2911670', N'1', N'App1ConcursoInscritosPuntaje object (1)', N'1', N'[{"added": {}}]', N'28', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'33', N'2022-11-21 13:59:43.8238880', N'2', N'puntaje:77 idinscrito:(Id:43256) Angela garcia cargo: Asesor (activo)/Bogotá (activo) - activo (Ilustración (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-23 I', N'1', N'[{"added": {}}]', N'28', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'34', N'2022-11-21 14:00:04.2912430', N'3', N'puntaje:100 idinscrito:(Id:999) Pepe cargo: Asesor (activo)/Bogotá (activo) - activo (Canto (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-23 Incripción max: 2', N'1', N'[{"added": {}}]', N'28', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'35', N'2022-11-21 14:03:14.3551140', N'1', N'puntaje:55 idinscrito:(Id:999) Pepe cargo: Asesor (activo)/Bogotá (activo) - activo (Canto (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-23 Incripción max: 20', N'1', N'[{"added": {}}]', N'28', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'36', N'2022-11-21 14:04:02.5086300', N'3', N'puntaje:72 idinscrito:(Id:43256) Angela garcia cargo: Asesor (activo)/Bogotá (activo) - activo (Ilustración (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-23 I', N'1', N'[{"added": {}}]', N'28', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'37', N'2022-11-22 05:52:05.5356480', N'5', N'(Id:1001) Diana cargo: Asesor (activo)/Bogotá (activo) - activo', N'1', N'[{"added": {}}]', N'13', N'2')
GO

INSERT INTO [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (N'38', N'2022-11-22 05:53:17.3345670', N'6', N'(Id:1001) Diana cargo: Asesor (activo)/Bogotá (activo) - activo (Canto (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-21 Incripción max: 2022-11-22', N'1', N'[{"added": {}}]', N'27', N'2')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[django_content_type]') AND type IN ('U'))
	DROP TABLE [dbo].[django_content_type]
GO

CREATE TABLE [dbo].[django_content_type] (
  [id] int  NOT NULL,
  [app_label] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [model] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[django_content_type] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'1', N'admin', N'logentry')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'7', N'App1', N'app1cargo')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'8', N'App1', N'app1categoria')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'9', N'App1', N'app1ciudad')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'10', N'App1', N'app1concurso')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'27', N'App1', N'app1concursoinscritos')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'29', N'App1', N'app1concursoinscritoslog')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'28', N'App1', N'app1concursoinscritospuntaje')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'11', N'App1', N'app1concursopuntaje')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'12', N'App1', N'app1concursoreglas')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'25', N'App1', N'app1diccionario')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'13', N'App1', N'app1empleado')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'14', N'App1', N'app1sexo')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'15', N'App1', N'authgroup')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'16', N'App1', N'authgrouppermissions')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'17', N'App1', N'authpermission')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'18', N'App1', N'authuser')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'19', N'App1', N'authusergroups')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'20', N'App1', N'authuseruserpermissions')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'21', N'App1', N'djangoadminlog')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'22', N'App1', N'djangocontenttype')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'23', N'App1', N'djangomigrations')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'24', N'App1', N'djangosession')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'26', N'App1', N'quienesfesus')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'3', N'auth', N'group')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'2', N'auth', N'permission')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'4', N'auth', N'user')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'5', N'contenttypes', N'contenttype')
GO

INSERT INTO [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (N'6', N'sessions', N'session')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[django_migrations]') AND type IN ('U'))
	DROP TABLE [dbo].[django_migrations]
GO

CREATE TABLE [dbo].[django_migrations] (
  [id] bigint  NOT NULL,
  [app] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [applied] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[django_migrations] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'1', N'contenttypes', N'0001_initial', N'2022-11-18 19:44:10.0864670')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'2', N'auth', N'0001_initial', N'2022-11-18 19:44:11.2750740')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'3', N'admin', N'0001_initial', N'2022-11-18 19:44:11.5586060')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'4', N'admin', N'0002_logentry_remove_auto_add', N'2022-11-18 19:44:11.5900780')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'5', N'admin', N'0003_logentry_add_action_flag_choices', N'2022-11-18 19:44:11.6154050')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'6', N'contenttypes', N'0002_remove_content_type_name', N'2022-11-18 19:44:11.8150380')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'7', N'auth', N'0002_alter_permission_name_max_length', N'2022-11-18 19:44:11.8607510')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'8', N'auth', N'0003_alter_user_email_max_length', N'2022-11-18 19:44:11.9032560')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'9', N'auth', N'0004_alter_user_username_opts', N'2022-11-18 19:44:11.9191040')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'10', N'auth', N'0005_alter_user_last_login_null', N'2022-11-18 19:44:12.0139490')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'11', N'auth', N'0006_require_contenttypes_0002', N'2022-11-18 19:44:12.0235640')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'12', N'auth', N'0007_alter_validators_add_error_messages', N'2022-11-18 19:44:12.0581320')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'13', N'auth', N'0008_alter_user_username_max_length', N'2022-11-18 19:44:12.1036590')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'14', N'auth', N'0009_alter_user_last_name_max_length', N'2022-11-18 19:44:12.1391110')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'15', N'auth', N'0010_alter_group_name_max_length', N'2022-11-18 19:44:12.1688720')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'16', N'auth', N'0011_update_proxy_permissions', N'2022-11-18 19:44:12.2060310')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'17', N'auth', N'0012_alter_user_first_name_max_length', N'2022-11-18 19:44:12.2691780')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'18', N'sessions', N'0001_initial', N'2022-11-18 19:44:12.3600930')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'19', N'App1', N'0001_initial', N'2022-11-18 20:09:01.1217620')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'20', N'App1', N'0002_app1categoria_app1ciudad_app1concurso_and_more', N'2022-11-20 02:11:59.6950630')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'21', N'App1', N'0003_quienesfesus', N'2022-11-20 03:51:03.9555010')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'22', N'App1', N'0004_app1concursoinscritos_alter_quienesfesus_options', N'2022-11-21 06:36:00.3038600')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'23', N'App1', N'0005_app1concursoinscritospuntaje_and_more', N'2022-11-21 08:06:33.7407780')
GO

INSERT INTO [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (N'24', N'App1', N'0006_app1concursoinscritoslog', N'2022-11-21 13:46:06.3788960')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for django_session
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[django_session]') AND type IN ('U'))
	DROP TABLE [dbo].[django_session]
GO

CREATE TABLE [dbo].[django_session] (
  [session_key] varchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [session_data] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [expire_date] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[django_session] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'imxx7kmawh0x5aalpmd52fsedegx06s8', N'.eJxVjEEOgjAQRe_StWnaKU6pS_ecgcwwU0ENTSisjHdXEha6_e-9_zI9bevYb1WXfhJzMd6cfjem4aHzDuRO863YoczrMrHdFXvQarsi-rwe7t_BSHX81oyp5bZJ1GBAVYjNOURGYtTUEmBG9jGDg5QxO3ARnQpkCc57kSTm_QHO6TeA:1ow7bw:UEb9KdJ_UU2QY_aB0-dC2jt03Uf_1kAulhS7Pa3wpfg', N'2022-12-02 20:05:16.4531500')
GO

INSERT INTO [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'jnz4r5u7dbx8e5lxc9c14hdoy117t1nb', N'.eJxVjDsOwjAQBe_iGln-ZW1T0nOGaHdt4wCypXwqxN0hUgpo38y8lxhxW-u4LXkepyTOwojT70bIj9x2kO7Ybl1yb-s8kdwVedBFXnvKz8vh_h1UXOq3jjlpjtGRCwo9gEHnNBUCphg4phhAASlO3muLUDJbg8qFAawuQ7Di_QHiUTeC:1oxMBE:m7pLz-QSFdZWwBYEacC_dYUC0QMg6ZUFTK9LJs1Rg1U', N'2022-12-06 05:50:48.5522190')
GO

COMMIT
GO


-- ----------------------------
-- Indexes structure for table app1_cargo
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [cargo]
ON [dbo].[app1_cargo] (
  [cargo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_cargo
-- ----------------------------
ALTER TABLE [dbo].[app1_cargo] ADD CONSTRAINT [PK__app1_car__3213E83F8C0AE343] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table app1_categoria
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [categoria]
ON [dbo].[app1_categoria] (
  [categoria] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_categoria
-- ----------------------------
ALTER TABLE [dbo].[app1_categoria] ADD CONSTRAINT [PK__app1_cat__3213E83F7D841D64] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table app1_ciudad
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [ciudad]
ON [dbo].[app1_ciudad] (
  [ciudad] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_ciudad
-- ----------------------------
ALTER TABLE [dbo].[app1_ciudad] ADD CONSTRAINT [PK__app1_ciu__3213E83F6FEA6C99] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table app1_concurso
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [concurso]
ON [dbo].[app1_concurso] (
  [concurso] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_concurso
-- ----------------------------
ALTER TABLE [dbo].[app1_concurso] ADD CONSTRAINT [PK__app1_con__3213E83FA14D831F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table app1_concurso_inscritos
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [regl_conc_emple]
ON [dbo].[app1_concurso_inscritos] (
  [idconcurso] ASC,
  [idempleado] ASC
)
GO

CREATE NONCLUSTERED INDEX [regl_concpuntaje_categoria2]
ON [dbo].[app1_concurso_inscritos] (
  [idcategoria] ASC
)
GO

CREATE NONCLUSTERED INDEX [regl_concpuntaje_empleado2]
ON [dbo].[app1_concurso_inscritos] (
  [idempleado] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_concurso_inscritos
-- ----------------------------
ALTER TABLE [dbo].[app1_concurso_inscritos] ADD CONSTRAINT [PK__app1_con__3213E83F932DD1CA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table app1_concurso_inscritos_log
-- ----------------------------
ALTER TABLE [dbo].[app1_concurso_inscritos_log] ADD CONSTRAINT [PK__app1_con__3213E83FB1ABD126] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table app1_concurso_inscritos_puntaje
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [rest_conc_insc_punt]
ON [dbo].[app1_concurso_inscritos_puntaje] (
  [idinscrito] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_concurso_inscritos_puntaje
-- ----------------------------
ALTER TABLE [dbo].[app1_concurso_inscritos_puntaje] ADD CONSTRAINT [PK__app1_con__3213E83FE83D6D43] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table app1_concurso_reglas
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [regla1]
ON [dbo].[app1_concurso_reglas] (
  [idconcurso] ASC,
  [idcategoria] ASC,
  [idciudad] ASC,
  [idcargo] ASC
)
GO

CREATE NONCLUSTERED INDEX [restr_concreg_categoria]
ON [dbo].[app1_concurso_reglas] (
  [idcategoria] ASC
)
GO

CREATE NONCLUSTERED INDEX [restr_concreg_ciudad]
ON [dbo].[app1_concurso_reglas] (
  [idciudad] ASC
)
GO

CREATE NONCLUSTERED INDEX [restr_concreg_cargo]
ON [dbo].[app1_concurso_reglas] (
  [idcargo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_concurso_reglas
-- ----------------------------
ALTER TABLE [dbo].[app1_concurso_reglas] ADD CONSTRAINT [PK__app1_con__3213E83FA6EF3944] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table app1_diccionario
-- ----------------------------
ALTER TABLE [dbo].[app1_diccionario] ADD CONSTRAINT [PK__app1_dic__72E12F1A5DFC2351] PRIMARY KEY CLUSTERED ([name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table app1_empleado
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [cedula]
ON [dbo].[app1_empleado] (
  [cedula] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [codigoempleado]
ON [dbo].[app1_empleado] (
  [codigoEmpleado] ASC
)
GO

CREATE NONCLUSTERED INDEX [restr_emp_sexo]
ON [dbo].[app1_empleado] (
  [idsexo] ASC
)
GO

CREATE NONCLUSTERED INDEX [restr_emp_ciudad]
ON [dbo].[app1_empleado] (
  [idciudad] ASC
)
GO

CREATE NONCLUSTERED INDEX [restr_emp_cargo]
ON [dbo].[app1_empleado] (
  [idcargo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_empleado
-- ----------------------------
ALTER TABLE [dbo].[app1_empleado] ADD CONSTRAINT [PK__app1_emp__3213E83F681B2B71] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table App1_quienesfesus
-- ----------------------------
ALTER TABLE [dbo].[App1_quienesfesus] ADD CONSTRAINT [PK__App1_qui__3213E83F213BECD0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table app1_sexo
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [sexo]
ON [dbo].[app1_sexo] (
  [sexo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table app1_sexo
-- ----------------------------
ALTER TABLE [dbo].[app1_sexo] ADD CONSTRAINT [PK__app1_sex__3213E83FC58AB59A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [name]
ON [dbo].[auth_group] (
  [name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE [dbo].[auth_group] ADD CONSTRAINT [PK__auth_gro__3213E83F16E5FEF1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [auth_group_permissions_group_id_permission_id_0cd325b0_uniq]
ON [dbo].[auth_group_permissions] (
  [group_id] ASC,
  [permission_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [auth_group_permissio_permission_id_84c5c92e_fk_auth_perm]
ON [dbo].[auth_group_permissions] (
  [permission_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE [dbo].[auth_group_permissions] ADD CONSTRAINT [PK__auth_gro__3213E83FA0EAAE3B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [auth_permission_content_type_id_codename_01ab375a_uniq]
ON [dbo].[auth_permission] (
  [content_type_id] ASC,
  [codename] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE [dbo].[auth_permission] ADD CONSTRAINT [PK__auth_per__3213E83FAA1E26E0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [username]
ON [dbo].[auth_user] (
  [username] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table auth_user
-- ----------------------------
ALTER TABLE [dbo].[auth_user] ADD CONSTRAINT [PK__auth_use__3213E83F2FFBAE7E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_groups_user_id_group_id_94350c0c_uniq]
ON [dbo].[auth_user_groups] (
  [user_id] ASC,
  [group_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [auth_user_groups_group_id_97559544_fk_auth_group_id]
ON [dbo].[auth_user_groups] (
  [group_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table auth_user_groups
-- ----------------------------
ALTER TABLE [dbo].[auth_user_groups] ADD CONSTRAINT [PK__auth_use__3213E83F19B07F7C] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq]
ON [dbo].[auth_user_user_permissions] (
  [user_id] ASC,
  [permission_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm]
ON [dbo].[auth_user_user_permissions] (
  [permission_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE [dbo].[auth_user_user_permissions] ADD CONSTRAINT [PK__auth_use__3213E83FB1393C3D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb_fk_django_co]
ON [dbo].[django_admin_log] (
  [content_type_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6_fk_auth_user_id]
ON [dbo].[django_admin_log] (
  [user_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE [dbo].[django_admin_log] ADD CONSTRAINT [PK__django_a__3213E83F39EC52DA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table django_content_type
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [django_content_type_app_label_model_76bd3d3b_uniq]
ON [dbo].[django_content_type] (
  [app_label] ASC,
  [model] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE [dbo].[django_content_type] ADD CONSTRAINT [PK__django_c__3213E83F7901A02B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE [dbo].[django_migrations] ADD CONSTRAINT [PK__django_m__3213E83FD8EE1E91] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663]
ON [dbo].[django_session] (
  [expire_date] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE [dbo].[django_session] ADD CONSTRAINT [PK__django_s__B3BA0F1FEAD792E9] PRIMARY KEY CLUSTERED ([session_key])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table app1_concurso_inscritos
-- ----------------------------
ALTER TABLE [dbo].[app1_concurso_inscritos] ADD CONSTRAINT [regl_concpuntaje_categoria2] FOREIGN KEY ([idcategoria]) REFERENCES [dbo].[app1_categoria] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[app1_concurso_inscritos] ADD CONSTRAINT [regl_concpuntaje_concurso2] FOREIGN KEY ([idconcurso]) REFERENCES [dbo].[app1_concurso] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[app1_concurso_inscritos] ADD CONSTRAINT [regl_concpuntaje_empleado2] FOREIGN KEY ([idempleado]) REFERENCES [dbo].[app1_empleado] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table app1_concurso_inscritos_puntaje
-- ----------------------------
ALTER TABLE [dbo].[app1_concurso_inscritos_puntaje] ADD CONSTRAINT [rest_conc_insc_punt] FOREIGN KEY ([idinscrito]) REFERENCES [dbo].[app1_concurso_inscritos] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table app1_concurso_reglas
-- ----------------------------
ALTER TABLE [dbo].[app1_concurso_reglas] ADD CONSTRAINT [restr_concreg_cargo] FOREIGN KEY ([idcargo]) REFERENCES [dbo].[app1_cargo] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[app1_concurso_reglas] ADD CONSTRAINT [restr_concreg_categoria] FOREIGN KEY ([idcategoria]) REFERENCES [dbo].[app1_categoria] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[app1_concurso_reglas] ADD CONSTRAINT [restr_concreg_ciudad] FOREIGN KEY ([idciudad]) REFERENCES [dbo].[app1_ciudad] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[app1_concurso_reglas] ADD CONSTRAINT [restr_concreg_concurso] FOREIGN KEY ([idconcurso]) REFERENCES [dbo].[app1_concurso] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table app1_empleado
-- ----------------------------
ALTER TABLE [dbo].[app1_empleado] ADD CONSTRAINT [restr_emp_cargo] FOREIGN KEY ([idcargo]) REFERENCES [dbo].[app1_cargo] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[app1_empleado] ADD CONSTRAINT [restr_emp_ciudad] FOREIGN KEY ([idciudad]) REFERENCES [dbo].[app1_ciudad] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[app1_empleado] ADD CONSTRAINT [restr_emp_sexo] FOREIGN KEY ([idsexo]) REFERENCES [dbo].[app1_sexo] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE [dbo].[auth_group_permissions] ADD CONSTRAINT [auth_group_permissio_permission_id_84c5c92e_fk_auth_perm] FOREIGN KEY ([permission_id]) REFERENCES [dbo].[auth_permission] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[auth_group_permissions] ADD CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY ([group_id]) REFERENCES [dbo].[auth_group] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE [dbo].[auth_permission] ADD CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_co] FOREIGN KEY ([content_type_id]) REFERENCES [dbo].[django_content_type] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table auth_user_groups
-- ----------------------------
ALTER TABLE [dbo].[auth_user_groups] ADD CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id] FOREIGN KEY ([group_id]) REFERENCES [dbo].[auth_group] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[auth_user_groups] ADD CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[auth_user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE [dbo].[auth_user_user_permissions] ADD CONSTRAINT [auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm] FOREIGN KEY ([permission_id]) REFERENCES [dbo].[auth_permission] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[auth_user_user_permissions] ADD CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[auth_user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table django_admin_log
-- ----------------------------
ALTER TABLE [dbo].[django_admin_log] ADD CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_co] FOREIGN KEY ([content_type_id]) REFERENCES [dbo].[django_content_type] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[django_admin_log] ADD CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[auth_user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

