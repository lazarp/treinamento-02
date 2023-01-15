using {T_CLIENTES, T_ENDERECOS, T_PRODUTOS} from '../db/dataModel';
using {CV_ITENS, CV_PEDIDOS} from '../db/dataModel';

service CatalogService @(path : '/catalog'){
    entity Clientes as projection on T_CLIENTES;
    entity Enderecos as projection on T_ENDERECOS;
    entity Produtos as projection on T_PRODUTOS;
    @readonly entity calculo_itens as projection on CV_ITENS;
    @readonly entity calculo_pedidos as projection on CV_PEDIDOS;
}