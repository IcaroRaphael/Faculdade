import React from 'react';
import { View, Text } from 'react-native';
import Estilos from '../estilos';
import produtos from '../mocks/produtos';
export default props => {

    function obterLista() {
      return  produtos.map((produto) => {
            return (
                <Text key={produto.id}>{produto.id}) {produto.nome} R${produto.preco}</Text>
            )
        })
    }

    return (
        <View>
            <Text style={Estilos.text}>Lista de Produtos</Text>
            {
               obterLista()
            }
        </View>
    )
}