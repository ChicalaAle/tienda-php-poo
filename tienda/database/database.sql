CREATE DATABASE tienda_master;
USE tienda_master;

CREATE TABLE usuarios(

    id          int(255) AUTO_INCREMENT not null,
    nombre      varchar(100) not null,
    apellidos   varchar(255),
    email       varchar(255) not null,
    password    varchar(255) not null,
    rol         varchar(20),
    imagen      varchar(255),

    CONSTRAINT pk_usuarios PRIMARY KEY(id),
    CONSTRAINT uq_email UNIQUE(email)

)ENGINE=InnoDb;

INSERT INTO usuarios VALUES(null, 'Admin', 'Admin', 'admin@admin.com', 'passadmin', 'admin', null);

/*SEGUNDA TABLA*/

CREATE TABLE categorias(

    id      int(255) AUTO_INCREMENT not null,
    nombre  varchar(100) not null,
    CONSTRAINT pk_categorias PRIMARY KEY(id)

)ENGINE=InnoDb;

INSERT INTO categorias VALUES(null, 'Manga corta');
INSERT INTO categorias VALUES(null, 'Manga larga');
INSERT INTO categorias VALUES(null, 'Manga Tirantes');
INSERT INTO categorias VALUES(null, 'Sudadera');

/*TERCERA TABLA*/

CREATE TABLE productos(

    id              int(255) AUTO_INCREMENT not null,
    categoria_id    int(255) not null,
    nombre          varchar(100) not null,
    descripcion     text,
    precio          float(100,2) not null,
    stock           int(255) not null,
    oferta          varchar(2),
    fecha           date not null,
    imagen          varchar(255),

    CONSTRAINT pk_categorias PRIMARY KEY(id),
    CONSTRAINT fk_producto_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)

)ENGINE=InnoDb;

/*CUARTA TABLA*/

CREATE TABLE pedidos(

    id              int(255) AUTO_INCREMENT not null,
    usuario_id      int(255) not null,
    provincia       varchar(100) not null,
    localidad       varchar(100) not null,
    direccion       varchar(100) not null,
    coste           varchar(100) not null,
    estado          varchar(20) not null,
    fecha           date,
    hora            time,

    CONSTRAINT pk_pedidos PRIMARY KEY(id),
    CONSTRAINT fk_pedidos_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id) on delete cascade

)ENGINE=InnoDb;

/*QUINTA TABLA*/

CREATE TABLE lineas_pedido(

    id              int(255) AUTO_INCREMENT not null,
    pedido_id       int(255) not null,
    producto_id     int(255) not null,
    unidades        int(255),

    CONSTRAINT pk_lineas_pedidos PRIMARY KEY(id),
    CONSTRAINT fk_linea_pedido FOREIGN KEY(pedido_id) REFERENCES pedidos(id),
    CONSTRAINT fk_linea_producto FOREIGN KEY(producto_id) REFERENCES productos(id)


)ENGINE=InnoDb;