entity Pessoa {
    key ID   : Integer;
        Nome : String(255);
}

@cds.persistence.exists
entity T_CLIENTES {
    key CLIENTE_ID : Integer     @title : 'CLIENTE_ID';
        NOME       : String(255) @title : 'NOME';
        EMAIL      : String(256) @title : 'EMAIL';
        FONE       : String(50)  @title : 'FONE';
        DESDE      : Date        @title : 'DESDE';
}

@cds.persistence.exists
entity T_ENDERECOS {
    key CLIENTE_ID  : Integer;
        ENDERECO_ID : Integer;
        LOGRADOURO  : String(255);
        NUMERO      : Integer;
        COMPLEMENTO : String(255);
        CEP         : String(9);
}

@cds.persistence.exists
entity T_FRETES {
    key CEP                : String(9);
        FRETE_UNIDADE_PESO : Double;
}

@cds.persistence.exists
entity T_PRODUTOS {
    key PRODUTO_ID     : Integer;
        DESCRICAO      : String(255);
        PRECO_UNITARIO : Double;
        CUSTO_UNITARIO : Double;
        PESO_UNITARIO  : Double;
}

@cds.persistence.exists
entity T_ITENS_COMPRA {
    key PEDIDO_ID  : Integer;
    key ITEM_ID    : Integer;
        PRODUTO_ID : Integer;
        QUANTIDADE : Integer;
}

@cds.persistence.exists
entity T_PEDIDOS_COMPRA {
    key PEDIDO_ID   : Integer;
        CLIENTE_ID  : Integer;
        DATA_PEDIDO : Date;
        ENDERECO_ID : Integer;
}

@cds.persistence.exists
@cds.persistence.calcview
entity CV_ITENS {
    key PEDIDO_ID  : Integer @title : 'PEDIDO_ID: PEDIDO_ID';
        ITEM_ID    : Integer @title : 'ITEM_ID: ITEM_ID';
        PRODUTO_ID : Integer @title : 'PRODUTO_ID: PRODUTO_ID';
        QUANTIDADE : Integer @title : 'QUANTIDADE: QUANTIDADE';
        PESO_ITEM  : Double  @title : 'PESO_ITEM: CC_PESO_ITEM';
        PRECO_ITEM : Double  @title : 'PRECO_ITEM: CC_PRECO_ITEM';
        CUSTO_ITEM : Double  @title : 'CUSTO_ITEM: CC_CUSTO_ITEM';
}

@cds.persistence.exists
@cds.persistence.calcview
entity CV_PEDIDOS {
    key PEDIDO_ID          : Integer @title : 'PEDIDO_ID: PEDIDO_ID';
        FRETE_PEDIDO       : Double  @title : 'FRETE_PEDIDO: CC_FRETE_PEDIDO';
        VALOR_FINAL_PEDIDO : Double  @title : 'VALOR_FINAL_PEDIDO: CC_VALOR_FINAL_PEDIDO';
        LUCRO_PEDIDO       : Double  @title : 'LUCRO_PEDIDO: CC_LUCRO_PEDIDO';
        MARGEM_LUCRO       : Double  @title : 'MARGEM_LUCRO: CC_MARGEM_LUCRO';
}
