CREATE TABLE `itens_pedido` (
	`idItem` INT NOT NULL AUTO_INCREMENT,
	`idPedido` INT NOT NULL,
	`idProduto` INT NOT NULL,
	`qtd` INT NOT NULL DEFAULT '1',
	`valorTotal` DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (`idItem`) USING BTREE,
	INDEX `idPedido` (`idPedido`) USING BTREE,
	INDEX `idProduto` (`idProduto`) USING BTREE,
	CONSTRAINT `itens_pedido_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`idPedido`) ON UPDATE NO ACTION ON DELETE CASCADE,
	CONSTRAINT `itens_pedido_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produtos` (`idProduto`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=28
;

CREATE TABLE `pedidos` (
	`idPedido` INT NOT NULL AUTO_INCREMENT,
	`nomePessoa` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_general_ci',
	`adicionais` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`formaPgto` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`dataPedido` TIMESTAMP NULL DEFAULT (CURRENT_TIMESTAMP),
	PRIMARY KEY (`idPedido`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
;

CREATE TABLE `produtos` (
	`idProduto` INT NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_general_ci',
	`preco` DECIMAL(10,2) NOT NULL,
	`categoria` ENUM('lanches','bebidas','sobremesas','entradas') NOT NULL COLLATE 'utf8mb4_general_ci',
	`imagem` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`idProduto`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=43
;
