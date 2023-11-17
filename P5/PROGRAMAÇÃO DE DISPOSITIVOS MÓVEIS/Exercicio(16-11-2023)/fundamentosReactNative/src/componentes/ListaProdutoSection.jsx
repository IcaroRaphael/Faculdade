import React from 'react';
import { View, Text, SectionList, StyleSheet, Button } from 'react-native';
import Estilos from '../estilos';
import produtos from '../mocks/produtos';
export default props => {
    const styles = StyleSheet.create({
        container: {
          flex: 1,
          backgroundColor: '#eafffe'
        },
        taskItem:{
          padding: 10,
          marginVertical: 15,
          fontSize: 16
        },
        taskTitle:{
          backgroundColor: "#ffffff",
          fontSize: 20,
          fontWeight: "bold",
          padding: 10,
          elevation: 4,
          margin: 10,
          marginBottom: 0,
          borderRadius: 10
        }
      });
   
    const produtosTituloUm = [{
        title: "Produtos Um",
        data: produtos
    }]

    const produtosTituloDois = [{
        title: "Produtos Dois",
        data: produtos
    }]

    const somar = _=> {
        console.warn("Chegou")
    }


    return (
        <View>
            <Text style={Estilos.text}>Lista de Produtos Section</Text>
            <SectionList
                sections={[...produtosTituloUm, ...produtosTituloDois]}
                renderSectionHeader={({section}) =>(
                    <Text style={styles.taskTitle}>{section.title}</Text>
                )}
                renderItem={({item})=>(
                    <Text style={styles.taskItem}>{item.nome} R${item.preco}</Text>
                )}
                renderSectionFooter={({}) =>(
                    <Button
                        title='Somar Todos'
                        onPress={somar}
                    />
                )}
            />
        </View>
    )
}