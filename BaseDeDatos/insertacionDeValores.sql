use sde;
-- CENTRO APOYO
SELECT * FROM centro_apoyo;
INSERT INTO `sde`.`centro_apoyo` (`nombre_centro`, `direccion`, `fecha_fundacion`) VALUES ('PsicoBO', 'Av. America y Beijing', '1992-10-02');
INSERT INTO `sde`.`centro_apoyo` (`idcentro_apoyo`, `nombre_centro`, `direccion`, `fecha_fundacion`) VALUES ('2', 'Refugio', 'Av. Simon Lopez y Segunda', '2005-06-09');
-- AFECTADO
SELECT * FROM afectado;
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('1', 'Fernando ', 'Fernandez', 'Rodridez', '23', '1999-03-12', '1');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('2', 'Guillermo', 'Cabello', 'Escobar', '30', '1992-05-08', '1');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('3', 'Carlos ', 'Medrano', 'Villalta', '37', '1985-09-26', '2');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('4', 'Luis', 'Quispe ', 'Vega', '40', '1982-12-08', '2');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('5', 'Jose', 'Cespedez', 'Arias', '50', '1972-12-12', '1');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('6', 'Victor', 'Condori', 'Mamani', '25', '1997-10-15', '2');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('7', 'Leonardo', 'Vargas', 'Quispe', '34', '1988-04-21', '1');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('8', 'Bryan', 'Mamani', 'Condori', '32', '1990-07-23', '1');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('9', 'Valentina', 'Cabello', 'Medrano', '27', '1995-09-28', '2');
INSERT INTO `sde`.`afectado` (`idafectado`, `nombrea`, `appa`, `apma`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`) VALUES ('10', 'Camila', 'Alvarado', 'Pozo', '21', '2001-08-27', '1');
-- VOLUNTARIO
select * from voluntario;
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('1', 'Marcos', 'Ayala', 'Viera', '33', 'Profesor_de_psicologia', '1');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('2', 'Valeria', 'Valenzuela', 'Dos_Santos', '45', 'Fisioterapeuta', '1');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('3', 'Jhon', 'Fernandez', 'Jordan', '23', 'Veterinario', '2');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('4', 'Alexa', 'Lazarte', 'Lula', '25', 'Abogada', '1');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('5', 'Felix', 'Granado', 'Lima', '30', 'Nutricionista', '2');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('6', 'Gustavo', 'Haller', 'Vargas', '41', 'Coach_de_vida', '1');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('7', 'Frank', 'Uriola', 'Venabides', '34', 'Economista', '1');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('8', 'Eduardo', 'Franco', 'Espejo', '25', 'Psicologo', '1');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('9', 'Josefina', 'Balboa', 'Cruz', '29', 'Veterinaria', '2');
INSERT INTO `sde`.`voluntario` (`idvoluntario`, `nombrev`, `appv`, `apmv`, `edad`, `ocupacion`, `centro_apoyo_idcentro_apoyo`) VALUES ('10', 'Margarita', 'Rocha', 'Perez', '31', 'Veterinaria', '2');
-- ESPECIALISTA
select * from especialista;
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('1', 'Gabriel ', 'Coca', 'Fievez', '35', '1987-09-22', '1', '3');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('2', 'Carlos ', 'Gutierrez', 'Lazcano', '40', '1982-03-25', '2', '5');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('3', 'Álvaro', 'Domingo', 'Fernandez', '50', '1972-06-17', '1', '2');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('4', 'Jael', 'Flores', 'Mamani', '29', '1993-10-11', '1', '1');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('5', 'Luis', 'Cardenas', 'Jordan', '35', '1987-11-03', '2', '6');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('6', 'Marcos', 'Rubiera', 'Benedeto', '49', '1973-05-30', '1', '7');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('7', 'Andrés', 'Murillo', 'Gonzales', '32', '1990-04-23', '1', '8');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('8', 'Gonzalo', 'Fievez', 'Loyola', '46', '1976-06-30', '2', '6');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('9', 'Sandro', 'Barella', 'Sambarino', '48', '1974-12-28', '1', '2');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('10', 'Miguel', 'Franco', 'Rivera', '32', '1990-08-27', '1', '3');
INSERT INTO `sde`.`especialista` (`idespecialista`, `nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('11', 'Lucas', 'Segovia', 'Alba', '27', '1995-09-04', '1', '1');
INSERT INTO `sde`.`especialista` (`nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('Vicente', 'Toscana', 'Villca', '38', '1984-07-23', '1', '7');
INSERT INTO `sde`.`especialista` (`nombree`, `appe`, `apme`, `edad`, `fecha_nac`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`) VALUES ('Teodoro', 'Salas', 'Banz', '42', '1980-06-15', '2', '5');
-- Especialidad
select * from especialidad;
INSERT INTO `sde`.`especialidad` (`idespecialidad`, `nombre_especialidad`, `descripcion`) VALUES ('1', 'Paramedico', 'Una persona responsable que tiene consciencia y conocimiento sobre los primeros auxilios y provee de los mismo para enserñar a los afectados ante cualquier emergencia.');
INSERT INTO `sde`.`especialidad` (`idespecialidad`, `nombre_especialidad`, `descripcion`) VALUES ('2', 'Psicologo_Clinico', 'Especializado dentro de la rama de la psicología en la práctica y diagnóstico, ademá de tratamiento, de las enfermedades mentales como fobias, depresión, entre otras.');
INSERT INTO `sde`.`especialidad` (`idespecialidad`, `nombre_especialidad`, `descripcion`) VALUES ('3', 'Abogado_Civil', 'Experto en el área de derecho civil, encargado de resolver dudas y preguntas respecto al aporte económico, divorcio, entre otras cosas con trasfondo legas. Puede intervenir entre disputas entre organizaciones e individuos o temás de propiedad y legalidad de contratos.');
INSERT INTO `sde`.`especialidad` (`idespecialidad`, `nombre_especialidad`, `descripcion`) VALUES ('4', 'Fisioterapeuta', 'Encargado de la supervisión de lesiones corporales tanto leves como graves. Capaz de recomendar un tratamiento eficas para las mismas, ya sean lesiones óseas o musculares.');
INSERT INTO `sde`.`especialidad` (`idespecialidad`, `nombre_especialidad`, `descripcion`) VALUES ('5', 'Veterinario', 'Un especialista dentro del área médica, exclusivamente de animales, desde mascotas como perros y gatos a seres un tanto más complejos como loros, tortugas, entre otros. Capaz de recomendar cuidados y detectar problemas en la salud de estos mismo compañeros que se tienen en casa.');
INSERT INTO `sde`.`especialidad` (`idespecialidad`, `nombre_especialidad`, `descripcion`) VALUES ('6', 'Nutricionista', 'Especializado en el control de la alimentación y un experto en el área de nutrición con respecto a que ingerir y que no. Permite ayudar a los afectados que tengas problemas en esa área en particular y también a quienes necesitan consejos de alimentación tanto para ellos como para sus mascotas.');
INSERT INTO `sde`.`especialidad` (`idespecialidad`, `nombre_especialidad`, `descripcion`) VALUES ('7', 'Terapeuta_Infantil', 'Una labor particular, ya que tinee a un especialista en particular, graduado en psicología, especializado en el tratamiento cognitivo de niños y niñas afectados por la violencia y otros problemas que los atormentan.');
INSERT INTO `sde`.`especialidad` (`idespecialidad`, `nombre_especialidad`, `descripcion`) VALUES ('8', 'Abogado_Penal', 'Especialista graduado de derech, encargado de los códigos de ética del derecho, aportando ayuda en casos de estado y sociedad, involucrado en temas de sentencias, cárcel, multas y acciones fiscales.');
-- USUARIO
select * from usuario;
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('1', 'Fernando', 'F3RN1ND0', '1', '2', '1');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('2', 'Guillermo', 'Guillchill345', '2', '4', '2');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('3', 'Carolina', 'Car0IN169', '3', '8', '3');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('4', 'Luis', 'Quisp3V3g1', '4', '1', '4');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('5', 'Ruby', 'Cespe345dez', '5', '2', '5');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('6', 'Victor', 'Condorito8910', '6', '6', '6');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('7', 'Alejandra', 'DeVagaQ90', '7', '7', '7');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('8', 'Bryan', 'V1LLC1000', '8', '9', '8');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('9', 'Valentina', 'CABEL00M3DR1N0', '9', '11', '9');
INSERT INTO `sde`.`usuario` (`idusuario`, `nombreu`, `password`, `voluntario_idvoluntario`, `especialista_idespecialista`, `afectado_idafectado`) VALUES ('10', 'Camila', 'P0Z0270801', '10', '8', '10');