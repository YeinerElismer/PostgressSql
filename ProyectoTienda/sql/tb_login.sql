create table tb_login
(
	tb_login_id serial not null,
	tb_login_usuario character(50) not null,
	tb_login_contraseña character(50) not null,
	tb_login_tipo character(20) not null,
	constraint pk_tb_login_id primary key(tb_login_id),
	constraint unq_login_id unique (tb_login_id),
	constraint unq_login_usuario unique (tb_login_usuario),
	constraint unq_login_contraseña unique (tb_login_contraseña),
	constraint chk_login_id check(tb_login_id>0),
	constraint chk_login_tipo checK (tb_login_tipo in ('ADMINISTRADOR','CLIENTE')) 
)
