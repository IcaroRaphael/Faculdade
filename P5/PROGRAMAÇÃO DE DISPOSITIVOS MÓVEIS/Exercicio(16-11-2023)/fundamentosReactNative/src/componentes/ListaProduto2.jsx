import React from 'react';
import { View, Text, FlatList } from 'react-native';
import Estilos from '../estilos';
import produtos from '../mocks/produtos';
export default props => {

    const produtoRender = ({item: produto})=>{
        return <Text>{produto.id}) {produto.nome} R${produto.preco}</Text>
    };


    return (
        <View>
            <Text style={Estilos.text}>Lista de Produtos2</Text>
            <FlatList
                keyExtractor={i => i.id}
                data={produtos}
                renderItem={produtoRender}
            />
        </View>
    )
}