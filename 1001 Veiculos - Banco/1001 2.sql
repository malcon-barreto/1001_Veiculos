USE 1001_veiculos;

-- Usuarios --

INSERT INTO usuario(nome, senha) 
VALUES ('admin', 'admin');

-- Marcas -- 

INSERT INTO marca(nome_marca) VALUES ('Audi');
INSERT INTO marca(nome_marca) VALUES ('Cherry');
INSERT INTO marca(nome_marca) VALUES ('Chevrolet');
INSERT INTO marca(nome_marca) VALUES ('Fiat');
INSERT INTO marca(nome_marca) VALUES ('Ferrari');
INSERT INTO marca(nome_marca) VALUES ('Ford');
INSERT INTO marca(nome_marca) VALUES ('Hyundai');
INSERT INTO marca(nome_marca) VALUES ('Land Rover');
INSERT INTO marca(nome_marca) VALUES ('Mercedes Benz');
INSERT INTO marca(nome_marca) VALUES ('Renault');
INSERT INTO marca(nome_marca) VALUES ('Toyota');
INSERT INTO marca(nome_marca) VALUES ('Volkswagen');

SELECT * from marca;


-- Carros -- 

-- Audi --

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Audi A4', '294.990', '1');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Audi A3', '243.990', '1');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Audi A5', '334.990', '1');

-- Cherry -- 

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Tiggo 8', '199.990', '2');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Tiggo 7', '125.990', '2');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Tiggo 5X', '112.990', '2');

-- Chevrolet -- 

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Onix', '75.240', '3');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Cruze', '136.140', '3');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Spin', '96.060', '3');

-- Fiat -- 

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Argo', '76.917', '4');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Mobi', '65.411', '4');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Grand Siena', '71.989', '4');

-- Ferrari

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('F8', '4.192.574,00', '5');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Portofino', '2.950.000', '5');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('812', '3.950.000', '5');

-- Ford

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Mustang', '532.785', '6');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Ranger', '218.290', '6');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Territory', '214.700', '6');

-- Hyundai

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('HB20', '74.090', '7');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('ix35', '154.990', '7');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Creta', '2106.190', '7');

-- Land Rover
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Range Rover', '792.950', '8');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Discovery', '641.950', '8');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Defender 90', '708.9500', '8');

-- Mercedes Benz 

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Classe A Hatch', '708.9500', '9');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('GLB SUV', '280.900', '9');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('CLA Coupé', '310.900', '9');

-- Renault

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Kwid', '64.690', '10');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Duster', '102.290', '10');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Logan', '85.590', '10');

-- Toyota

INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Corolla', '146.390', '11');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Hilux C/C', '208.090', '11');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Yaris Sedã XL', '97.390', '11');


-- Volkswagen
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Gol', '60.260', '12');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('T-Cross', '111.800', '12');
INSERT INTO veiculo(nome_veiculo, preco, id_marca) VALUES ('Amarok', '261.520', '12');

-- Consultas 

select id_veiculo, nome_veiculo, preco, nome_marca from veiculo as v
inner join marca as m on
v.id_marca = m.id_marca;


select * from veiculo;

SELECT * FROM veiculo;

