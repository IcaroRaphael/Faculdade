import React from "react";
import { View, Text } from "react-native";
import Estilos from "../estilos.jsx";

const MaxMin = ({a, b}) => {
    
    if(a === b){
        return <Text style = {Estilos.text}> Valor {a} é igual ao valor {b} </Text>
    }else if(a > b){
        return <Text style = {Estilos.text}> Valor {a} é maior que o valor {b} </Text>
    }else {
        return <Text style = {Estilos.text}> Valor {a} é menor que o valor {b} </Text>
    }
};

export default MaxMin;
