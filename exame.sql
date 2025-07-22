create databese medisistema;

use medisistema;

create table if not exists Medicos (
	id_medik int not null primary key,
	nombre_medik varchar(100) int not null,
	hora_laboral date not null,
	tipo_cargo varchar(50) not null,
	periodo_sustitucion datetime not null,
	id_paciente_asig int not null,
	vaca_medik datetime not null,
	tiempo_consulta_medik date not null,
	id_sustituto int not null,
	num_medik int not null);

insert into Medicos (id_medik, nombre_medik, hora_laboral, tipo_cargo, periodo_sustitucion, id_paciente_asig, vaca_medik, tiempo_consulta_medik, id_sustituto_fk) values
		(1, 'John', 45, 'na', '2025-07-01', 1, '2025-09-01', 8, 9),
		(2, 'Doe', 37, 'na', '2025-06-21', 5, '2025-08-06', 6, 7),
		(3, 'Jane', 42, 'ne', '2025-03-15', 8, '2025-07-16', 11, 6),
		(4, 'Smith', 48, 'ni' '2025-03-17', 4, '2025-07-18', 8, 1),
		(5, 'Bob', 45, 'ne', '2025-04-20', 9, '2025-08-21', 9, 4),
		(6, 'Jhonson', 37, 'na', '2025-07-21', 3, ' 2025-10-03', 3, 2),
		(7, 'Javier', 39, 'na', '2025-07-30', 7, ' 2025-10-01', 7, 8),
		(8, 'Tomas', 41, 'ne', '2025-07-15', 6, ' 2025-09-21', 6, 5),
		(9, 'Eduardo', 45, 'ni', '2025-07-017', 2, ' 2025-09-30', 7, 3);
	
create table if not exists Interino (
	id_inter int not null primary key,
	nombre_inter varchar(100) not null,
	hora_inter_trabajo date not null,
	inter_cargo varchar(100) not null,
	inter_periodo_sust datetime not null,
	id_inter_paciente int not null,
	vaca_inter datetime not null,
	tiempo_consulta_inter date not null,
	id_sustituto int not null,
	num_inter varchar(100) not null,
	id_medik int not null,
	foreign key (id_medik) references Medicos(id_medik)
	foreign key (id_sustituto) references Sustituto(id_sustituto));
	
insert into Interino (id_inter, nombre_inter, hora_inter_trabajo, inter_cargo, inter_perido_sust, id_inter_paciente, vaca_inter, num_inter) values
		(11, 'Jose', 42, 'na', '2025-06-01', 6, '2025-09-30', 101),
		(12, 'Jean', 48, 'ne', '2025-05-29', 1, '2025-10-01', 102),
		(13, 'Carlos', 40, 'na', '2025-06-20', 9, '2025-10-15', 103),
		(14, 'Luis', 46, 'ne', '2025-05-25', 2, '2025-10-11', 104),
		(15, 'Santiago', 39, 'ni', '2025-06-08', 3, '2025-11-04', 105),
		(16, 'Diego', 37, 'ni', '2025-06-05', 8, '2025-10-30', 106),
		(17, 'Esteban', 46, 'ne', '2025-04-30', 4, '2025-07-30', 107),
		(18, 'Felipe', 49, 'ne', '2025-07-02', 7, '2025-10-01', 108),
		(19, 'Miguel', 42, 'na', '2025-06-01', 5, '2025-09-30', 109);

create table if not exists Sustituto (
	id_sustituto int not null primary key,
	nombre_sustituto varchar(100) not null,
	sus_cargo varchar(100) not null,
	hora_sust_laboral varchar(100) not null,
	vaca_sust varchar(100) not null,
	tiempo_consulta_sust datetime not null,
	num_sust int not null,
	id_medik int not null,
	id_inter int not null,
	foreign key (id_medik) references Medicos(id_medik),
	foreign key (id_inter) references Interino(id_inter));

insert into Sustituto (id_sustituto, nombre_sustituto, sus_cargo, hora_sust_laboral, vaca_sust_ tiempo_consulta_sust) values
		(29, 'Sebastian', 'ni', 49, '2026-01-05', 5),
		(28, 'Ana', 'ni', 45, '2026-01-15', 6),
		(27, 'Angel', 'ni', 45, '2026-01-11', 6),
		(26, 'Sara', 'ne', 41, '2026-01-12', 3),
		(25, 'Karen', 'na', 38, '2026-01-21', 8),
		(24, 'Neo', 'na', 37, '2026-01-30', 1),
		(23, 'Nova', 'ne', 42, '2026-01-12', 5),
		(22, 'Yuri', 'na', 39, '2026-01-12', 2),
		(21, 'Makarov', 'ni', 48, '2026-01-27', 7);
	
create table if not exists PersonalM (
	id_personal int not null primary key,
	nombre_personal varchar(100) not null,
	num_personal int not null,
	hora_per_trabajo date not null,
	personal_cargo varchar(100) not null,
	vaca_personal varchar(100) not null,
	id_medik int not null,
	foreign key (id_medik) references Medicos(id_medik)
	foreign key (id_administrador) references Administrativos(id_administrador));

insert into PersonalM (id_personal, nombre_personal, hora_per_trabajo, personal_cargo, vaca_personal) values
		(51, 'Maveri', 48, 'cn', '2025-08-27'),
		(52, 'Hansel', 47, 'cn', '2025-09-24'),
		(53, 'Sakarev', 45, 'ci', '2025-07-28'),
		(54, 'Moshvak', 48, 'cn', '2025-09-25'),
		(55, 'Olga', 48, 'ck', '2025-09-26'),
		(56, 'Tatiana', 44, 'ci', '2025-07-12'),
		(57, 'Ramiel', 45, 'ck', '2025-10-30'),
		(58, 'Vanesa', 47, 'cn', '2025-07-13'),
		(59, 'Emilio', 48, 'cn', '2025-11-17');
		
create table if not exists Auxiliar (
	id_auxiliar int not null primary key,
	nombre_auxiliar varchar(100) not null,
	num_auxiliares int not null,
	hora_auxiliar_trabajo date not null,
	vaca_auxiliar datetime not null,
	id_medik int not null,
	foreign key (id_medik) references Medicos(id_medik));

insert into Auxiliar(id_auxiliar, nombre_auxiliar, hora_auxiliar_trabajo, vaca_auxiliar) values
		(39, 'Ada', 45, '2025-09-01'),
		(38, 'Karl', 41, '2025-10-15'),
		(37, 'Sara', 40, '2025-09-25'),
		(36, 'Valentina', 40, '2025-11-21'),
		(35, 'Camila', 45, '2025-12-20'),
		(34, 'Estrada', 42, '2025-12-12'),
		(33, 'Camilo', 41, '2025-10-22'),
		(32, 'Arnold', 41, '2025-11-02'),
		(31, 'Bill', 44, '2025-09-30');
	
create table if not exists Celadores (
	id_celador int not null primary key,
	nombre_cel varchar(100) not null,
	num_celadores int not null,
	hora_celador_trabajo date not null,
	vaca_celador datetime not null,
	id_administrador int not null
	foreign key (id_administrador) references Administrativos(id_administrador));

insert into Celadores (id_celador, nombre_cel, hora_celador_trabajo, vaca_celador) values
		(81, 'Arnold', 42, '2026-04-11'),
		(82, 'Arnold', 40, '2025-12-11'),
		(83, 'Arnold', 42, '2026-02-23'),
		(84, 'Arnold', 41, '2026-07-30'),
		(85, 'Arnold', 41, '2026-01-02'),
		(86, 'Arnold', 39, '2026-01-15');
	
create table if not exists Administrativos (
	id_administrador int not null primary key,
	nombre_admin
	num_admin int not null,
	hora_admin_trabajo date not null,
	vaca_admin datetime not null,
	id_medik int not null,
	id_inter int not null,
	id_sustituto int not null,
	id_personal int not null,
	id_auxiliar int not null,
	id_celador int not null,
	foreign key (id_medik) references Medicos(id_medik),
	foreign key (id_inter) references Interino(id_inter),
	foreign key (id_sustituto) references Sustituto(id_sustituto),
	foreign key (id_personal) references PersonalM(id_personal),
	foreign key (id_celador) references Celadores(id_celador),
	foreign key (id_auxiliar) references Auxiliares(id_auxiliar),);

insert into Administrativos (id_administrador, nombre_admin, hora_admin_trabajo, vaca_admin) values
		(204, 'Adam')