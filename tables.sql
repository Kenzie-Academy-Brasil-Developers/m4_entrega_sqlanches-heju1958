-- Aqui você deve colocar os códigos SQL referentes à

-- Criação das tabelas

-- Tabela clientes

-- Tabela endereços

-- Tabela pedidos

-- Tabela produtos

-- Tabela produtos_pedidos

CREATE TABLE IF NOT EXISTS clientes (
     id BIGSERIAL PRIMARY KEY,
     nome VARCHAR(50) NOT NULL,
     lealdade INTEGER NOT NULL
); 

CREATE TABLE IF NOT EXISTS endereços (
     id BIGSERIAL PRIMARY KEY,
     cep VARCHAR NOT NULL,
     rua VARCHAR NOT NULL,
     numero INTEGER NOT NULL,
     bairro VARCHAR(50) NOT NULL,
     complemento VARCHAR(100),
     cliente_id INTEGER UNIQUE NOT NULL,
     FOREIGN KEY (cliente_id) REFERENCES clientes (id)
);

CREATE TABLE IF NOT EXISTS pedidos (
     id BIGSERIAL PRIMARY KEY,
     status VARCHAR(50) NOT NULL,
     cliente_id INTEGER NOT NULL,
     FOREIGN KEY (cliente_id) REFERENCES clientes (id)
);

CREATE TABLE IF NOT EXISTS produtos (
     id BIGSERIAL PRIMARY KEY,
     nome VARCHAR(100) UNIQUE NOT NULL,
     tipo VARCHAR(30) NOT NULL,
     preço FLOAT (8) NOT NULL,
     pts_de_lealdade INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS produtos_pedidos (
     id BIGSERIAL PRIMARY KEY,
     pedidos_id INTEGER NOT NULL,
     produtos_id INTEGER NOT NULL,
     FOREIGN KEY (pedidos_id) REFERENCES pedidos (id) ON DELETE CASCADE,
     FOREIGN KEY (produtos_id) REFERENCES produtos (id) ON DELETE CASCADE
);



