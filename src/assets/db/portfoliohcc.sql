-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2022 a las 15:14:57
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfoliohcc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio`
--

CREATE TABLE `estudio` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `inicio` date NOT NULL,
  `fin` date DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `imagenEstudio` longtext DEFAULT NULL,
  `urlEstudio` longtext DEFAULT NULL,
  `institucion` varchar(45) NOT NULL,
  `Persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudio`
--

INSERT INTO `estudio` (`id`, `titulo`, `inicio`, `fin`, `descripcion`, `imagenEstudio`, `urlEstudio`, `institucion`, `Persona_id`) VALUES
(1, 'Técnico Mecánico Electricista Universitario (', '2009-03-03', '2010-02-05', 'Facultad de Ciencias Exactas, Físicas y Naturales de la Universidad Nacional de Córdoba, la Carrera de Técnico Mecánico Electricista Universitario, cursado 1er año.', '../assets/img/LogoFCEFyN.png', 'https://fcefyn.unc.edu.ar/', 'Facultad de Ciencias Exactas, Fisicas y Natur', 1),
(2, 'Desarrollador Web FullStack Junior', '2022-06-28', '2023-01-13', 'Desarrollador Web Full Stack Junior (HTML · CSS · Boopstrap · Fontawesome · JSON · Angular · Java · JavaScript · Bases de datos · DevOps)', '../assets/img/LogoArgPro.jpg', 'https://www.argentina.gob.ar/economia/conocimiento/argentina-programa', 'Ministerio del Conocimiento', 1),
(3, 'Curso de Inglés Para Desarrolladores de Softw', '2022-04-02', '2022-06-06', 'Curso de Inglés orientado para desarrolladores de software, disertado por Naila Zach como complemento de la 2da etapa del curso Argentina Programa', '../assets/img/LogoInglesDesa.jpg', 'https://www.argentina.gob.ar/economia/conocimiento/argentina-programa', 'Naila Zach', 1),
(4, 'Operador Informático de Aplicaciones Office', '2008-06-10', '2008-09-15', 'Operador Informático de Aplicaciones Office Word Excel Powerpoint n° Orden 11058', '../assets/img/LogoOffice.jpg', 'https://www.cpcipc.org.ar/', 'Consejo Profesional de Ciencias Informáticas ', 1),
(5, 'Ciclo Artístico Vocacional en Guitarra', '2017-04-01', '2017-11-30', '1er año de Ciclo Artístico Vocacional en Guitarra en Conservatorio “Alberto E. Ginastera”', '../assets/img/LogoGinastera.jpg', 'https://www.facebook.com/pages/category/Local-business/Conservatorio-Alberto-Ginastera-445100282536202/', 'Conservatorio “Alberto E. Ginastera”', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int(10) UNSIGNED NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `inicio` date NOT NULL,
  `fin` date DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `imagenEmpresa` longtext DEFAULT NULL,
  `urlEmpresa` longtext DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `esTrabajoActual` tinyint(4) DEFAULT NULL,
  `Persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id`, `puesto`, `inicio`, `fin`, `descripcion`, `imagenEmpresa`, `urlEmpresa`, `empresa`, `esTrabajoActual`, `Persona_id`) VALUES
(1, 'Administración', '2013-02-02', '2022-01-02', 'Auxiliar Administrativo en Tejamax SA orientado al sector mantenimiento, trabajos con normas ISO 9000 y 9001 en SGC, experiencia en cotizaciones de compra, atención a clientes y proveedores, controles de producción y stock, programación de mantenimientos preventivos, manejo de indicadores de mantenimiento y consumos, manejo de Office, manejo de dinero y rendiciones de caja, conducción de vehículos livianos.', '../assets/img/LogoTejamax.png', 'https://www.grupotejamax.com/', 'Tejamax', 0, 1),
(2, 'Administración', '2011-10-05', '2013-01-15', 'Administrativo en premoldeados Raful, con experiencia en cotizaciones de venta, atención a clientes, controles de producción y stock, manejo de Office.', '../assets/img/LogoRaful.png', 'http://www.organizacionesraful.com/', 'Raful SRL', 0, 1),
(3, 'Vendedor de playa', '2010-03-01', '2011-10-20', 'Vendedor de playa en estación de servicio Shell Río Primero, con experiencia en manejo de dinero, rendición de caja, manejo de PC, atención a clientes.', '../assets/img/LogoShell.png', 'https://find.shell.com/ar/fuel/AR_10038541-santa-rosa-combustibles-srl', 'Santa Rosa Combustibles SRL', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `porcentaje` int(10) UNSIGNED NOT NULL,
  `Persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habilidad`
--

INSERT INTO `habilidad` (`id`, `nombre`, `porcentaje`, `Persona_id`) VALUES
(1, 'HTML', 75, 1),
(2, 'CSS', 65, 1),
(3, 'JAVA', 50, 1),
(4, 'JavaScript', 35, 1),
(5, 'Bootstrap', 90, 1),
(6, 'adaptabilidad', 80, 1),
(7, 'Trabajo en equipo', 90, 1),
(8, 'Aprendizaje Rápido', 80, 1),
(9, 'Resolución de Problemas', 85, 1),
(10, 'Manejo del tiempo', 95, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `banner` longtext DEFAULT NULL,
  `imagen` longtext DEFAULT NULL,
  `sobreMi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `titulo`, `banner`, `imagen`, `sobreMi`) VALUES
(1, 'Heber Caleb', 'Cuevas', 'Desarrolador Web Fullstack jr', '../assets/img/FondoPC.jpg', '../assets/img/profile.jpg', 'Buenas! Soy Heber Cuevas y vivo en Río Primero, provincia de Córdoba. Tengo experiencia en trabajos de administración en varias empresas, pero actualmente busco adentrarme en la rama del desarrollo web para crecer y progresar en mi carrera profesional. Aparte de esto soy músico, toco la guitarra y me gustan las motos.'),
(2, 'Juan', 'Pereyra', 'Youtuber', '../assets/img/fondoPaisaje.jpg', '../assets/img/LogoArgPro.jpg', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `inicio` date NOT NULL,
  `fin` date DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `imagenProyecto` longtext DEFAULT NULL,
  `urlProyecto` longtext DEFAULT NULL,
  `Persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `titulo`, `inicio`, `fin`, `descripcion`, `imagenProyecto`, `urlProyecto`, `Persona_id`) VALUES
(1, 'Porfolio Argentina Programa', '2022-06-28', '2023-01-13', 'Armado de Proyecto integrador de porfolio web, utilizando tecnologias Angular, Apache Netbeans, MySQL Workbench, Boopstrap. Lenguajes HTML, CSS, TypeScript, Java.', '../assets/img/LogoArgPro.jpg', 'https://github.com/BelacdowN/PorfolioAngular_HCC', 1),
(2, 'Task List', '2022-09-10', '2022-09-20', 'Armado de lista de tareas como actividad de práctica de Angular utilizando base de datos local JSON', '../assets/img/LogoArgPro.jpg', 'https://github.com/BelacdowN/ListaTareas', 1),
(3, 'Capacitación FrontEnd', '2022-10-03', '2022-11-20', 'Capacitación dada a estudiantes, viendo lenguajes HTML y CSS,usando Bootstrap, Fontawesome  para su maquetado y pasado a Angular por componentes, vista de Directivas, Data Binding, Formularios Reactivos.', '../assets/img/profile.jpg', 'https://github.com/BelacdowN/proyecto-de-ejemplo-chicas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` longtext NOT NULL,
  `logo` varchar(50) NOT NULL,
  `url` varchar(45) NOT NULL,
  `Persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `nombre`, `logo`, `url`, `Persona_id`) VALUES
(1, 'LinkedIn', 'fa-brands fa-linkedin fa-xl', 'https://www.linkedin.com/in/heber-caleb-cueva', 1),
(2, 'Github', 'fa-brands fa-github fa-xl', 'https://github.com/BelacdowN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` longtext NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` longtext NOT NULL,
  `Persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD PRIMARY KEY (`id`,`Persona_id`),
  ADD KEY `fk_Estudio_Persona_idx` (`Persona_id`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`,`Persona_id`),
  ADD KEY `fk_Experiencia_Persona1_idx` (`Persona_id`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`id`,`Persona_id`),
  ADD KEY `fk_Habilidad_Persona1_idx` (`Persona_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`,`Persona_id`),
  ADD KEY `fk_Proyecto_Persona1_idx` (`Persona_id`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`,`Persona_id`),
  ADD KEY `fk_Redes_Persona1_idx` (`Persona_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`,`Persona_id`),
  ADD KEY `fk_Usuario_Persona1_idx` (`Persona_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD CONSTRAINT `fk_Estudio_Persona` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `fk_Experiencia_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD CONSTRAINT `fk_Habilidad_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `fk_Proyecto_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `redes`
--
ALTER TABLE `redes`
  ADD CONSTRAINT `fk_Redes_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
