import React from "react";
import { View, StyleSheet } from "react-native";
import Primeiro from './componentes/Primeiro'
import PrimeiroProps from "./componentes/PrimeiroProps";
import Multi, {Comp2, Comp3} from "./componentes/Multi";
import Aleatorio from "./componentes/Aleatorio";

export default () =>  {
    
        return (
            <View style={style.App}>
                <Aleatorio min={7} max={99}/>
                <Aleatorio min={7} max={99}/>
                <Aleatorio min={7} max={99}/>
                <Multi/>
                <Comp2/>
                <Comp3/>
                <Primeiro/>
                <PrimeiroProps numero={10}/>
                <ManxMin a ={10} b = {5}/>
            </View>
        )
    
}

const style = StyleSheet.create({
    App: {
        flexGrow: 1,
        justifyContent: 'center',
        alignItems: 'center'
    },
})