CREATE TABLE categorias ( 
    id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descripcion varchar(100)
    ); 
    INSERT INTO categorias VALUES (1, 'Novela');
    INSERT INTO categorias VALUES (2, 'Drama');
    INSERT INTO categorias VALUES (3, 'Cuento');
    
    CREATE TABLE libros ( 
        id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
        titulo varchar(128),
        autor varchar(128),
        disponible int(11), 
        categoria_id int(11),
        FOREIGN KEY (categoria_id) REFERENCES categorias (id) 
        );
        
        INSERT INTO libros VALUES (1, 'El principito', 'Antoine de Saint', 1, 3); 
        INSERT INTO libros VALUES (2, 'La conspiración', 'Dan Brown', 1, 1);