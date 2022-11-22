/*
 Backup para la demostración
 Fecha: 22/11/2022 10:36:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for App1_quienesfesus
-- ----------------------------
DROP TABLE IF EXISTS `App1_quienesfesus`;
CREATE TABLE `App1_quienesfesus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of App1_quienesfesus
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app1_cargo
-- ----------------------------
DROP TABLE IF EXISTS `app1_cargo`;
CREATE TABLE `app1_cargo` (
  `id` int(11) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cargo` (`cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_cargo
-- ----------------------------
BEGIN;
INSERT INTO `app1_cargo` (`id`, `cargo`, `estado`) VALUES (1, 'director', 1);
INSERT INTO `app1_cargo` (`id`, `cargo`, `estado`) VALUES (2, 'asesor', 1);
COMMIT;

-- ----------------------------
-- Table structure for app1_categoria
-- ----------------------------
DROP TABLE IF EXISTS `app1_categoria`;
CREATE TABLE `app1_categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(40) NOT NULL,
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_categoria
-- ----------------------------
BEGIN;
INSERT INTO `app1_categoria` (`id`, `categoria`, `estado`) VALUES (1, 'canto', 1);
INSERT INTO `app1_categoria` (`id`, `categoria`, `estado`) VALUES (2, 'baile', 1);
INSERT INTO `app1_categoria` (`id`, `categoria`, `estado`) VALUES (3, 'ilustración', 1);
COMMIT;

-- ----------------------------
-- Table structure for app1_ciudad
-- ----------------------------
DROP TABLE IF EXISTS `app1_ciudad`;
CREATE TABLE `app1_ciudad` (
  `id` int(11) NOT NULL,
  `ciudad` varchar(40) NOT NULL,
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_ciudad
-- ----------------------------
BEGIN;
INSERT INTO `app1_ciudad` (`id`, `ciudad`, `estado`) VALUES (1, 'Medellín', 1);
INSERT INTO `app1_ciudad` (`id`, `ciudad`, `estado`) VALUES (2, 'Bogotá', 1);
INSERT INTO `app1_ciudad` (`id`, `ciudad`, `estado`) VALUES (3, 'Cali', 1);
COMMIT;

-- ----------------------------
-- Table structure for app1_concurso
-- ----------------------------
DROP TABLE IF EXISTS `app1_concurso`;
CREATE TABLE `app1_concurso` (
  `id` int(11) NOT NULL,
  `concurso` varchar(255) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_max_registro` date DEFAULT NULL,
  `maxpersonas` int(3) NOT NULL DEFAULT '1',
  `estado` int(1) NOT NULL DEFAULT '1',
  `descripcion` text,
  `urlImagenLogo` varchar(255) DEFAULT NULL COMMENT 'url imagen logo oficial',
  `urlImagenOficial` varchar(255) DEFAULT NULL COMMENT 'url imagen oficial',
  PRIMARY KEY (`id`),
  UNIQUE KEY `concurso` (`concurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_concurso
-- ----------------------------
BEGIN;
INSERT INTO `app1_concurso` (`id`, `concurso`, `fecha_inicio`, `fecha_fin`, `fecha_max_registro`, `maxpersonas`, `estado`, `descripcion`, `urlImagenLogo`, `urlImagenOficial`) VALUES (1, 'Concurso talentos Medellin y Bogota', '2022-11-18', '2022-11-21', '2022-11-22', 2, 1, 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum i[r]ure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'https://www.shutterstock.com/image-vector/abstract-art-square-rhombus-logo-260nw-1911651898.jpg', 'https://www.shutterstock.com/image-vector/abstract-art-square-rhombus-logo-260nw-1911651898.jpg');
INSERT INTO `app1_concurso` (`id`, `concurso`, `fecha_inicio`, `fecha_fin`, `fecha_max_registro`, `maxpersonas`, `estado`, `descripcion`, `urlImagenLogo`, `urlImagenOficial`) VALUES (2, 'Concurso talentos Cali', '2022-11-17', '2022-11-25', '2022-11-28', 10, 1, 'Sed2 ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum i[r]ure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'https://www.shutterstock.com/image-vector/abstract-art-square-rhombus-logo-260nw-1911651898.jpg', 'https://www.shutterstock.com/image-vector/abstract-art-square-rhombus-logo-260nw-1911651898.jpg');
COMMIT;

-- ----------------------------
-- Table structure for app1_concurso_inscritos
-- ----------------------------
DROP TABLE IF EXISTS `app1_concurso_inscritos`;
CREATE TABLE `app1_concurso_inscritos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idconcurso` int(11) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de registro',
  `estado` int(1) DEFAULT '1',
  `intentos` int(11) DEFAULT '1',
  `actualizado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regl_conc_emple` (`idconcurso`,`idempleado`),
  KEY `regl_concpuntaje_categoria2` (`idcategoria`),
  KEY `regl_concpuntaje_empleado2` (`idempleado`),
  CONSTRAINT `regl_concpuntaje_categoria2` FOREIGN KEY (`idcategoria`) REFERENCES `app1_categoria` (`id`),
  CONSTRAINT `regl_concpuntaje_concurso2` FOREIGN KEY (`idconcurso`) REFERENCES `app1_concurso` (`id`),
  CONSTRAINT `regl_concpuntaje_empleado2` FOREIGN KEY (`idempleado`) REFERENCES `app1_empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_concurso_inscritos
-- ----------------------------
BEGIN;
INSERT INTO `app1_concurso_inscritos` (`id`, `idconcurso`, `idempleado`, `idcategoria`, `registro`, `estado`, `intentos`, `actualizado`) VALUES (1, 1, 2, 1, '2022-11-21 07:45:28', 1, 23, '2022-11-21 13:07:59');
INSERT INTO `app1_concurso_inscritos` (`id`, `idconcurso`, `idempleado`, `idcategoria`, `registro`, `estado`, `intentos`, `actualizado`) VALUES (4, 1, 3, 3, '2022-11-21 11:02:03', 1, 6, '2022-11-21 11:18:52');
INSERT INTO `app1_concurso_inscritos` (`id`, `idconcurso`, `idempleado`, `idcategoria`, `registro`, `estado`, `intentos`, `actualizado`) VALUES (5, 2, 4, 1, '2022-11-21 11:57:14', 1, 3, '2022-11-21 13:42:09');
INSERT INTO `app1_concurso_inscritos` (`id`, `idconcurso`, `idempleado`, `idcategoria`, `registro`, `estado`, `intentos`, `actualizado`) VALUES (6, 1, 5, 1, '2022-11-19 05:52:50', 1, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for app1_concurso_inscritos_log
-- ----------------------------
DROP TABLE IF EXISTS `app1_concurso_inscritos_log`;
CREATE TABLE `app1_concurso_inscritos_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idconcurso` int(11) NOT NULL,
  `idempleado` int(11) DEFAULT '0',
  `idcategoria` int(11) DEFAULT '0',
  `cedula` int(11) DEFAULT '0',
  `codigoempleado` int(11) DEFAULT '0',
  `registro` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de registro',
  `estado` int(1) DEFAULT '1',
  `intentos` int(11) DEFAULT '1',
  `actualizado` datetime DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_concurso_inscritos_log
-- ----------------------------
BEGIN;
INSERT INTO `app1_concurso_inscritos_log` (`id`, `idconcurso`, `idempleado`, `idcategoria`, `cedula`, `codigoempleado`, `registro`, `estado`, `intentos`, `actualizado`, `descripcion`) VALUES (1, 2, 0, 2, 775521, 5489, '2022-11-21 13:42:09', 1, 4, '2022-11-22 07:21:07', 'Usted ya cuenta con una inscripción, recuerde mirar todo lo relacionado del concurso en el sitio web.; Disculpa, no alcanzaste a registrarte, sigue pendiente de las próximas convocatorias, gracias!; Disculpa, no alcanzaste a registrarte, sigue pendiente de las próximas convocatorias, gracias!; Disculpa, no alcanzaste a registrarte, sigue pendiente de las próximas convocatorias, gracias!');
INSERT INTO `app1_concurso_inscritos_log` (`id`, `idconcurso`, `idempleado`, `idcategoria`, `cedula`, `codigoempleado`, `registro`, `estado`, `intentos`, `actualizado`, `descripcion`) VALUES (2, 2, 0, 1, 7654321, 123123, '2022-11-22 07:24:27', 1, 1, NULL, 'Consulte con su empleador, no tenemos acceso a su registro.');
INSERT INTO `app1_concurso_inscritos_log` (`id`, `idconcurso`, `idempleado`, `idcategoria`, `cedula`, `codigoempleado`, `registro`, `estado`, `intentos`, `actualizado`, `descripcion`) VALUES (3, 2, 0, 1, 99989, 12345678, '2022-11-22 14:52:25', 1, 1, NULL, 'Consulte con su empleador, no tenemos acceso a su registro.');
COMMIT;

-- ----------------------------
-- Table structure for app1_concurso_inscritos_puntaje
-- ----------------------------
DROP TABLE IF EXISTS `app1_concurso_inscritos_puntaje`;
CREATE TABLE `app1_concurso_inscritos_puntaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idinscrito` int(11) NOT NULL,
  `puntaje` int(3) NOT NULL DEFAULT '0',
  `idusuario` int(1) NOT NULL COMMENT 'quien graba',
  `registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de registro',
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rest_conc_insc_punt` (`idinscrito`) USING BTREE,
  CONSTRAINT `rest_conc_insc_punt` FOREIGN KEY (`idinscrito`) REFERENCES `app1_concurso_inscritos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_concurso_inscritos_puntaje
-- ----------------------------
BEGIN;
INSERT INTO `app1_concurso_inscritos_puntaje` (`id`, `idinscrito`, `puntaje`, `idusuario`, `registro`, `estado`) VALUES (1, 1, 55, 1, '2022-11-21 14:03:11', 1);
INSERT INTO `app1_concurso_inscritos_puntaje` (`id`, `idinscrito`, `puntaje`, `idusuario`, `registro`, `estado`) VALUES (3, 4, 72, 1, '2022-11-21 14:03:22', 1);
COMMIT;

-- ----------------------------
-- Table structure for app1_concurso_reglas
-- ----------------------------
DROP TABLE IF EXISTS `app1_concurso_reglas`;
CREATE TABLE `app1_concurso_reglas` (
  `id` int(11) NOT NULL,
  `idconcurso` int(11) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `idciudad` int(11) DEFAULT NULL,
  `idcargo` int(11) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regla1` (`idconcurso`,`idcategoria`,`idciudad`,`idcargo`),
  KEY `restr_concreg_categoria` (`idcategoria`),
  KEY `restr_concreg_ciudad` (`idciudad`),
  KEY `restr_concreg_cargo` (`idcargo`),
  CONSTRAINT `restr_concreg_cargo` FOREIGN KEY (`idcargo`) REFERENCES `app1_cargo` (`id`),
  CONSTRAINT `restr_concreg_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `app1_categoria` (`id`),
  CONSTRAINT `restr_concreg_ciudad` FOREIGN KEY (`idciudad`) REFERENCES `app1_ciudad` (`id`),
  CONSTRAINT `restr_concreg_concurso` FOREIGN KEY (`idconcurso`) REFERENCES `app1_concurso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_concurso_reglas
-- ----------------------------
BEGIN;
INSERT INTO `app1_concurso_reglas` (`id`, `idconcurso`, `idcategoria`, `idciudad`, `idcargo`, `estado`) VALUES (1, 1, 1, 2, 2, 1);
INSERT INTO `app1_concurso_reglas` (`id`, `idconcurso`, `idcategoria`, `idciudad`, `idcargo`, `estado`) VALUES (2, 1, 2, 2, 2, 1);
INSERT INTO `app1_concurso_reglas` (`id`, `idconcurso`, `idcategoria`, `idciudad`, `idcargo`, `estado`) VALUES (3, 1, 3, 2, 2, 1);
INSERT INTO `app1_concurso_reglas` (`id`, `idconcurso`, `idcategoria`, `idciudad`, `idcargo`, `estado`) VALUES (4, 1, 1, 1, 2, 1);
INSERT INTO `app1_concurso_reglas` (`id`, `idconcurso`, `idcategoria`, `idciudad`, `idcargo`, `estado`) VALUES (5, 1, 2, 1, 2, 1);
INSERT INTO `app1_concurso_reglas` (`id`, `idconcurso`, `idcategoria`, `idciudad`, `idcargo`, `estado`) VALUES (6, 1, 3, 1, 2, 1);
INSERT INTO `app1_concurso_reglas` (`id`, `idconcurso`, `idcategoria`, `idciudad`, `idcargo`, `estado`) VALUES (7, 2, 1, 3, 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for app1_diccionario
-- ----------------------------
DROP TABLE IF EXISTS `app1_diccionario`;
CREATE TABLE `app1_diccionario` (
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `value` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of app1_diccionario
-- ----------------------------
BEGIN;
INSERT INTO `app1_diccionario` (`name`, `value`) VALUES ('menuOpcion1', 'Inicio');
COMMIT;

-- ----------------------------
-- Table structure for app1_empleado
-- ----------------------------
DROP TABLE IF EXISTS `app1_empleado`;
CREATE TABLE `app1_empleado` (
  `id` int(11) NOT NULL,
  `codigoEmpleado` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `idcargo` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `idciudad` int(11) NOT NULL,
  `idsexo` int(11) NOT NULL,
  `edad` int(2) NOT NULL,
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `codigoempleado` (`codigoEmpleado`),
  KEY `restr_emp_sexo` (`idsexo`),
  KEY `restr_emp_ciudad` (`idciudad`),
  KEY `restr_emp_cargo` (`idcargo`),
  CONSTRAINT `restr_emp_cargo` FOREIGN KEY (`idcargo`) REFERENCES `app1_cargo` (`id`),
  CONSTRAINT `restr_emp_ciudad` FOREIGN KEY (`idciudad`) REFERENCES `app1_ciudad` (`id`),
  CONSTRAINT `restr_emp_sexo` FOREIGN KEY (`idsexo`) REFERENCES `app1_sexo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_empleado
-- ----------------------------
BEGIN;
INSERT INTO `app1_empleado` (`id`, `codigoEmpleado`, `nombre`, `idcargo`, `cedula`, `idciudad`, `idsexo`, `edad`, `estado`) VALUES (1, 555, 'Monica', 1, 109020, 1, 1, 25, 1);
INSERT INTO `app1_empleado` (`id`, `codigoEmpleado`, `nombre`, `idcargo`, `cedula`, `idciudad`, `idsexo`, `edad`, `estado`) VALUES (2, 321, 'Pepe', 2, 999, 2, 2, 20, 1);
INSERT INTO `app1_empleado` (`id`, `codigoEmpleado`, `nombre`, `idcargo`, `cedula`, `idciudad`, `idsexo`, `edad`, `estado`) VALUES (3, 453, 'Angela Garcia', 2, 43256, 2, 1, 33, 1);
INSERT INTO `app1_empleado` (`id`, `codigoEmpleado`, `nombre`, `idcargo`, `cedula`, `idciudad`, `idsexo`, `edad`, `estado`) VALUES (4, 5489, 'Alejandra Vasquez', 2, 775521, 3, 1, 23, 1);
INSERT INTO `app1_empleado` (`id`, `codigoEmpleado`, `nombre`, `idcargo`, `cedula`, `idciudad`, `idsexo`, `edad`, `estado`) VALUES (5, 5050, 'Diana', 2, 1001, 2, 1, 20, 1);
COMMIT;

-- ----------------------------
-- Table structure for app1_sexo
-- ----------------------------
DROP TABLE IF EXISTS `app1_sexo`;
CREATE TABLE `app1_sexo` (
  `id` int(11) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sexo` (`sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app1_sexo
-- ----------------------------
BEGIN;
INSERT INTO `app1_sexo` (`id`, `sexo`) VALUES (1, 'Femenino');
INSERT INTO `app1_sexo` (`id`, `sexo`) VALUES (2, 'Masculino');
COMMIT;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (25, 'Can add app1 cargo', 7, 'add_app1cargo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (26, 'Can change app1 cargo', 7, 'change_app1cargo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (27, 'Can delete app1 cargo', 7, 'delete_app1cargo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (28, 'Can view app1 cargo', 7, 'view_app1cargo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (29, 'Can add app1 categoria', 8, 'add_app1categoria');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (30, 'Can change app1 categoria', 8, 'change_app1categoria');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (31, 'Can delete app1 categoria', 8, 'delete_app1categoria');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (32, 'Can view app1 categoria', 8, 'view_app1categoria');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (33, 'Can add app1 ciudad', 9, 'add_app1ciudad');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (34, 'Can change app1 ciudad', 9, 'change_app1ciudad');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (35, 'Can delete app1 ciudad', 9, 'delete_app1ciudad');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (36, 'Can view app1 ciudad', 9, 'view_app1ciudad');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (37, 'Can add app1 concurso', 10, 'add_app1concurso');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (38, 'Can change app1 concurso', 10, 'change_app1concurso');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (39, 'Can delete app1 concurso', 10, 'delete_app1concurso');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (40, 'Can view app1 concurso', 10, 'view_app1concurso');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (41, 'Can add app1 concurso puntaje', 11, 'add_app1concursopuntaje');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (42, 'Can change app1 concurso puntaje', 11, 'change_app1concursopuntaje');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (43, 'Can delete app1 concurso puntaje', 11, 'delete_app1concursopuntaje');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (44, 'Can view app1 concurso puntaje', 11, 'view_app1concursopuntaje');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (45, 'Can add app1 concurso reglas', 12, 'add_app1concursoreglas');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (46, 'Can change app1 concurso reglas', 12, 'change_app1concursoreglas');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (47, 'Can delete app1 concurso reglas', 12, 'delete_app1concursoreglas');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (48, 'Can view app1 concurso reglas', 12, 'view_app1concursoreglas');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (49, 'Can add app1 empleado', 13, 'add_app1empleado');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (50, 'Can change app1 empleado', 13, 'change_app1empleado');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (51, 'Can delete app1 empleado', 13, 'delete_app1empleado');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (52, 'Can view app1 empleado', 13, 'view_app1empleado');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (53, 'Can add app1 sexo', 14, 'add_app1sexo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (54, 'Can change app1 sexo', 14, 'change_app1sexo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (55, 'Can delete app1 sexo', 14, 'delete_app1sexo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (56, 'Can view app1 sexo', 14, 'view_app1sexo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (57, 'Can add auth group', 15, 'add_authgroup');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (58, 'Can change auth group', 15, 'change_authgroup');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (59, 'Can delete auth group', 15, 'delete_authgroup');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (60, 'Can view auth group', 15, 'view_authgroup');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (61, 'Can add auth group permissions', 16, 'add_authgrouppermissions');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (62, 'Can change auth group permissions', 16, 'change_authgrouppermissions');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (63, 'Can delete auth group permissions', 16, 'delete_authgrouppermissions');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (64, 'Can view auth group permissions', 16, 'view_authgrouppermissions');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (65, 'Can add auth permission', 17, 'add_authpermission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (66, 'Can change auth permission', 17, 'change_authpermission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (67, 'Can delete auth permission', 17, 'delete_authpermission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (68, 'Can view auth permission', 17, 'view_authpermission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (69, 'Can add auth user', 18, 'add_authuser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (70, 'Can change auth user', 18, 'change_authuser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (71, 'Can delete auth user', 18, 'delete_authuser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (72, 'Can view auth user', 18, 'view_authuser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (73, 'Can add auth user groups', 19, 'add_authusergroups');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (74, 'Can change auth user groups', 19, 'change_authusergroups');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (75, 'Can delete auth user groups', 19, 'delete_authusergroups');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (76, 'Can view auth user groups', 19, 'view_authusergroups');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (77, 'Can add auth user user permissions', 20, 'add_authuseruserpermissions');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (78, 'Can change auth user user permissions', 20, 'change_authuseruserpermissions');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (79, 'Can delete auth user user permissions', 20, 'delete_authuseruserpermissions');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (80, 'Can view auth user user permissions', 20, 'view_authuseruserpermissions');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (81, 'Can add django admin log', 21, 'add_djangoadminlog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (82, 'Can change django admin log', 21, 'change_djangoadminlog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (83, 'Can delete django admin log', 21, 'delete_djangoadminlog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (84, 'Can view django admin log', 21, 'view_djangoadminlog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (85, 'Can add django content type', 22, 'add_djangocontenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (86, 'Can change django content type', 22, 'change_djangocontenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (87, 'Can delete django content type', 22, 'delete_djangocontenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (88, 'Can view django content type', 22, 'view_djangocontenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (89, 'Can add django migrations', 23, 'add_djangomigrations');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (90, 'Can change django migrations', 23, 'change_djangomigrations');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (91, 'Can delete django migrations', 23, 'delete_djangomigrations');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (92, 'Can view django migrations', 23, 'view_djangomigrations');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (93, 'Can add django session', 24, 'add_djangosession');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (94, 'Can change django session', 24, 'change_djangosession');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (95, 'Can delete django session', 24, 'delete_djangosession');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (96, 'Can view django session', 24, 'view_djangosession');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (97, 'Can add app1 diccionario', 25, 'add_app1diccionario');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (98, 'Can change app1 diccionario', 25, 'change_app1diccionario');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (99, 'Can delete app1 diccionario', 25, 'delete_app1diccionario');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (100, 'Can view app1 diccionario', 25, 'view_app1diccionario');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (101, 'Can add quien es fesus', 26, 'add_quienesfesus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (102, 'Can change quien es fesus', 26, 'change_quienesfesus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (103, 'Can delete quien es fesus', 26, 'delete_quienesfesus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (104, 'Can view quien es fesus', 26, 'view_quienesfesus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (105, 'Can add app1 concurso inscritos', 27, 'add_app1concursoinscritos');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (106, 'Can change app1 concurso inscritos', 27, 'change_app1concursoinscritos');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (107, 'Can delete app1 concurso inscritos', 27, 'delete_app1concursoinscritos');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (108, 'Can view app1 concurso inscritos', 27, 'view_app1concursoinscritos');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (109, 'Can add app1 concurso inscritos puntaje', 28, 'add_app1concursoinscritospuntaje');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (110, 'Can change app1 concurso inscritos puntaje', 28, 'change_app1concursoinscritospuntaje');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (111, 'Can delete app1 concurso inscritos puntaje', 28, 'delete_app1concursoinscritospuntaje');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (112, 'Can view app1 concurso inscritos puntaje', 28, 'view_app1concursoinscritospuntaje');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (113, 'Can add app1 concurso inscritos log', 29, 'add_app1concursoinscritoslog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (114, 'Can change app1 concurso inscritos log', 29, 'change_app1concursoinscritoslog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (115, 'Can delete app1 concurso inscritos log', 29, 'delete_app1concursoinscritoslog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (116, 'Can view app1 concurso inscritos log', 29, 'view_app1concursoinscritoslog');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (1, 'pbkdf2_sha256$320000$ymQJtNtvn3MSwt3CEAz0Ug$DhcrE3FZ8e0400d/p6RkThAobV0Qf69feopyCxhk0sI=', '2022-11-21 13:48:37.606763', 1, 'fesus', '', '', 'fesusrocuts@gmail.com', 1, 1, '2022-11-18 20:05:10.707530');
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (2, 'pbkdf2_sha256$320000$uNIpGtsuHFQhG2Xgz4CWId$7X3q2gFKAr/juHzeaTo12W7MStLLK8mJ/E5OzlEM5Tk=', '2022-11-22 05:50:48.544867', 0, 'director', 'Director', 'de Algo', 'director@algunacosaporponer.com', 1, 1, '2022-11-20 09:48:45.000000');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (1, 2, 25);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (2, 2, 26);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (3, 2, 27);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (4, 2, 28);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (5, 2, 29);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (6, 2, 30);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (7, 2, 31);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (8, 2, 32);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (9, 2, 33);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (10, 2, 34);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (11, 2, 35);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (12, 2, 36);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (13, 2, 37);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (14, 2, 38);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (15, 2, 39);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (16, 2, 40);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (25, 2, 45);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (26, 2, 46);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (27, 2, 47);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (28, 2, 48);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (21, 2, 49);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (22, 2, 50);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (23, 2, 51);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (24, 2, 52);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (29, 2, 53);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (30, 2, 54);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (31, 2, 55);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (32, 2, 56);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (33, 2, 105);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (34, 2, 106);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (35, 2, 107);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (36, 2, 108);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (37, 2, 109);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (38, 2, 110);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (39, 2, 111);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (40, 2, 112);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (41, 2, 113);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (42, 2, 114);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (43, 2, 115);
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (44, 2, 116);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (1, '2022-11-18 20:56:28.948497', '1', 'App1Cargo object (1)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (2, '2022-11-18 21:05:15.751763', '2', 'asesor (activo)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (3, '2022-11-18 21:10:40.214811', '1', 'App1Ciudad object (1)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (4, '2022-11-18 21:10:48.909865', '2', 'App1Ciudad object (2)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (5, '2022-11-18 21:11:59.100442', '1', 'App1Categoria object (1)', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (6, '2022-11-18 21:12:44.282813', '2', 'App1Categoria object (2)', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (7, '2022-11-18 21:12:58.463077', '3', 'App1Categoria object (3)', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (8, '2022-11-18 21:20:05.266238', '1', 'App1Concurso object (1)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (9, '2022-11-18 21:26:08.834955', '1', 'App1Sexo object (1)', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (10, '2022-11-18 21:26:16.973097', '2', 'App1Sexo object (2)', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (11, '2022-11-18 21:28:54.741873', '1', 'App1Empleado object (1)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (12, '2022-11-18 21:32:43.076181', '2', 'Pepe (activo) Más: 999, Asesor (activo), Bogotá (activo)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (13, '2022-11-18 21:37:22.189040', '1', 'App1ConcursoReglas object (1)', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (14, '2022-11-18 21:39:52.658974', '2', 'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Baile (activo), Bogotá (activo), Asesor (activo)', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (15, '2022-11-18 21:40:05.368397', '3', 'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Ilustración (activo), Bogotá (activo), Asesor (activo)', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (16, '2022-11-18 21:40:27.936121', '4', 'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Canto (activo), Medellín (activo), Asesor (activo)', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (17, '2022-11-18 21:40:46.023869', '5', 'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Baile (activo), Medellín (activo), Asesor (activo)', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (18, '2022-11-18 21:41:02.394611', '6', 'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) Más: Ilustración (activo), Medellín (activo), Asesor (activo)', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (19, '2022-11-18 21:58:28.271295', '1', 'App1ConcursoPuntaje object (1)', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (20, '2022-11-18 22:08:00.678259', '1', 'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) | Empleado: Pepe (activo) Más: 999, Asesor (activo), Bogotá (activo)(puntos 10 - cat ', 2, '[{\"changed\": {\"fields\": [\"Idempleado\"]}}]', 11, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (21, '2022-11-18 23:47:16.842349', '1', 'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-21 (activo) | Empleado: Pepe (activo) Más: 999, Asesor (activo), Bogotá (activo)(puntos 10 - cat ', 2, '[]', 11, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (22, '2022-11-20 02:16:50.096418', 'menuOpcion1', 'App1Diccionario object (menuOpcion1)', 1, '[{\"added\": {}}]', 25, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (23, '2022-11-20 06:14:33.478336', '1', 'Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-22 Incripción max: 2022-11-20', 2, '[{\"changed\": {\"fields\": [\"Urlimagenlogo\", \"Urlimagenoficial\"]}}]', 10, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (24, '2022-11-20 09:41:51.930027', '2', 'director', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (25, '2022-11-20 09:49:15.450077', '2', 'director', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"User permissions\", \"Date joined\"]}}]', 4, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (26, '2022-11-20 09:52:18.363537', '2', 'director', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (27, '2022-11-21 08:10:20.537251', '2', 'director', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (28, '2022-11-21 08:21:37.640316', '3', '(Id:43256) Angela garcia cargo: Asesor (activo)/Bogotá (activo) - activo', 1, '[{\"added\": {}}]', 13, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (29, '2022-11-21 08:22:31.455728', '4', '(Id:775521) Alejandra vasquez cargo: Asesor (activo)/Cali (activo) - activo', 1, '[{\"added\": {}}]', 13, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (30, '2022-11-21 11:56:34.854699', '7', 'Concurso talentos cali (activo) Desde 2022-11-17 hasta 2022-11-25 Incripción max: 2022-11-28 (activo) Más: Canto (activo), Cali (activo), Asesor (activo)', 1, '[{\"added\": {}}]', 12, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (31, '2022-11-21 13:48:32.484527', '2', 'director', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (32, '2022-11-21 13:57:15.291167', '1', 'App1ConcursoInscritosPuntaje object (1)', 1, '[{\"added\": {}}]', 28, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (33, '2022-11-21 13:59:43.823888', '2', 'puntaje:77 idinscrito:(Id:43256) Angela garcia cargo: Asesor (activo)/Bogotá (activo) - activo (Ilustración (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-23 I', 1, '[{\"added\": {}}]', 28, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (34, '2022-11-21 14:00:04.291243', '3', 'puntaje:100 idinscrito:(Id:999) Pepe cargo: Asesor (activo)/Bogotá (activo) - activo (Canto (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-23 Incripción max: 2', 1, '[{\"added\": {}}]', 28, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (35, '2022-11-21 14:03:14.355114', '1', 'puntaje:55 idinscrito:(Id:999) Pepe cargo: Asesor (activo)/Bogotá (activo) - activo (Canto (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-23 Incripción max: 20', 1, '[{\"added\": {}}]', 28, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (36, '2022-11-21 14:04:02.508630', '3', 'puntaje:72 idinscrito:(Id:43256) Angela garcia cargo: Asesor (activo)/Bogotá (activo) - activo (Ilustración (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-23 I', 1, '[{\"added\": {}}]', 28, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (37, '2022-11-22 05:52:05.535648', '5', '(Id:1001) Diana cargo: Asesor (activo)/Bogotá (activo) - activo', 1, '[{\"added\": {}}]', 13, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (38, '2022-11-22 05:53:17.334567', '6', '(Id:1001) Diana cargo: Asesor (activo)/Bogotá (activo) - activo (Canto (activo)) | Concurso talentos medellin y bogota (activo) Desde 2022-11-18 hasta 2022-11-21 Incripción max: 2022-11-22', 1, '[{\"added\": {}}]', 27, 2);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (7, 'App1', 'app1cargo');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (8, 'App1', 'app1categoria');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (9, 'App1', 'app1ciudad');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (10, 'App1', 'app1concurso');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (27, 'App1', 'app1concursoinscritos');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (29, 'App1', 'app1concursoinscritoslog');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (28, 'App1', 'app1concursoinscritospuntaje');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (11, 'App1', 'app1concursopuntaje');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (12, 'App1', 'app1concursoreglas');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (25, 'App1', 'app1diccionario');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (13, 'App1', 'app1empleado');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (14, 'App1', 'app1sexo');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (15, 'App1', 'authgroup');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (16, 'App1', 'authgrouppermissions');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (17, 'App1', 'authpermission');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (18, 'App1', 'authuser');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (19, 'App1', 'authusergroups');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (20, 'App1', 'authuseruserpermissions');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (21, 'App1', 'djangoadminlog');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (22, 'App1', 'djangocontenttype');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (23, 'App1', 'djangomigrations');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (24, 'App1', 'djangosession');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (26, 'App1', 'quienesfesus');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (1, 'contenttypes', '0001_initial', '2022-11-18 19:44:10.086467');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (2, 'auth', '0001_initial', '2022-11-18 19:44:11.275074');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (3, 'admin', '0001_initial', '2022-11-18 19:44:11.558606');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-11-18 19:44:11.590078');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-18 19:44:11.615405');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-11-18 19:44:11.815038');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-11-18 19:44:11.860751');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-11-18 19:44:11.903256');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-11-18 19:44:11.919104');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-11-18 19:44:12.013949');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-11-18 19:44:12.023564');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-18 19:44:12.058132');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-11-18 19:44:12.103659');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-18 19:44:12.139111');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-11-18 19:44:12.168872');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-11-18 19:44:12.206031');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-18 19:44:12.269178');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (18, 'sessions', '0001_initial', '2022-11-18 19:44:12.360093');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (19, 'App1', '0001_initial', '2022-11-18 20:09:01.121762');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (20, 'App1', '0002_app1categoria_app1ciudad_app1concurso_and_more', '2022-11-20 02:11:59.695063');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (21, 'App1', '0003_quienesfesus', '2022-11-20 03:51:03.955501');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (22, 'App1', '0004_app1concursoinscritos_alter_quienesfesus_options', '2022-11-21 06:36:00.303860');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (23, 'App1', '0005_app1concursoinscritospuntaje_and_more', '2022-11-21 08:06:33.740778');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (24, 'App1', '0006_app1concursoinscritoslog', '2022-11-21 13:46:06.378896');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('imxx7kmawh0x5aalpmd52fsedegx06s8', '.eJxVjEEOgjAQRe_StWnaKU6pS_ecgcwwU0ENTSisjHdXEha6_e-9_zI9bevYb1WXfhJzMd6cfjem4aHzDuRO863YoczrMrHdFXvQarsi-rwe7t_BSHX81oyp5bZJ1GBAVYjNOURGYtTUEmBG9jGDg5QxO3ARnQpkCc57kSTm_QHO6TeA:1ow7bw:UEb9KdJ_UU2QY_aB0-dC2jt03Uf_1kAulhS7Pa3wpfg', '2022-12-02 20:05:16.453150');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('jnz4r5u7dbx8e5lxc9c14hdoy117t1nb', '.eJxVjDsOwjAQBe_iGln-ZW1T0nOGaHdt4wCypXwqxN0hUgpo38y8lxhxW-u4LXkepyTOwojT70bIj9x2kO7Ybl1yb-s8kdwVedBFXnvKz8vh_h1UXOq3jjlpjtGRCwo9gEHnNBUCphg4phhAASlO3muLUDJbg8qFAawuQ7Di_QHiUTeC:1oxMBE:m7pLz-QSFdZWwBYEacC_dYUC0QMg6ZUFTK9LJs1Rg1U', '2022-12-06 05:50:48.552219');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
