-- Inserindo pessoas --
INSERT INTO person (firstname, middlename, lasttname, street, addressnumber, neighborhood, city, state, telefone) VALUES
('Leandro', 'Venancio', 'Silva', 'Rua das Flores', 123, 'Centro', 'Curitiba', 'PR', '41999999999'),
('Carlos', NULL, 'Oliveira', 'Av. Brasil', 456, 'Batel', 'Curitiba', 'PR', '41988888888'),
('Fernanda', 'Maria', 'Santos', 'Rua A', 789, 'Bigorrilho', 'Curitiba', 'PR', '41977777777');

-- Inserindo veículos --
INSERT INTO vehicle (plate, model, vehicleyear, idPerson) VALUES
('ABC-1234', 'Toyota Corolla', 2018, 1),
('XYZ-5678', 'Honda Civic', 2020, 2);

-- Inserindo clientes --
INSERT INTO client (clientstatus, idperson) VALUES
('gold', 1),
('silver', 2);

-- Inserindo mecânicos --
INSERT INTO mechanic (especialidade, idperson) VALUES
('Mecânica Geral', 3);

-- Inserindo serviços --
INSERT INTO service (idservice, category, description, price) VALUES
(1, 'Troca de Óleo e Filtros', 'Troca de óleo 5W30 e filtro de óleo', 150.00),
(2, 'Manutenção de Freios', 'Substituição de pastilhas e discos', 300.00),
(3, 'Alinhamento e Balanceamento', 'Alinhamento 3D e balanceamento', 120.00);

-- Inserindo peças --
INSERT INTO carpart (idcarpart, partname, price) VALUES
(1, 'Pastilha de Freio', 80.00),
(2, 'Filtro de Óleo', 25.00),
(3, 'Disco de Freio', 150.00);

-- Inserindo ordens de serviço --
INSERT INTO serviceorder (idserviceorder, deliverydate, orderstatus, totalserviceorder, idvehicle, idmechanic) VALUES
(1, '2025-10-05', 'on work', 0, 1, 1),
(2, '2025-10-06', 'waiting', 0, 2, 1);

-- Inserindo itens de serviço --
INSERT INTO serviceitens (idserviceitens, quantity, totalservice, idserviceorder, idservice) VALUES
(1, 1, 150.00, 1, 1),
(2, 1, 300.00, 1, 2),
(3, 1, 120.00, 2, 3);

-- Inserindo itens de peças --
INSERT INTO partitens (idpartitens, quantity, parttotal, idserviceorder, idcarpart) VALUES
(1, 1, 25.00, 1, 2),
(2, 2, 160.00, 1, 1),
(3, 1, 150.00, 1, 3);
