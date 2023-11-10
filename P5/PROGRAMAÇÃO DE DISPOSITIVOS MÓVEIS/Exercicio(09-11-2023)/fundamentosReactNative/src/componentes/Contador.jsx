import React, { useState } from "react";
import { Text, Button, View } from "react-native";
import Estilos from "../estilos";

export default ({ inicial = 0, passo = 1 }) => {
  const [numero, setNumero] = useState(inicial);
  const [resultado, setResultado] = useState("");

  function inc() {
    setNumero(numero + passo);
    verificarParImpar(numero + passo);
  }

  function dec() {
    setNumero(numero - passo);
    verificarParImpar(numero - passo);
  }

  function verificarParImpar(valor) {
    if (valor % 2 === 0) {
      setResultado("Par");
    } else {
      setResultado("Ímpar");
    }
  }

  return (
    <>
      <Text style={Estilos.textDois}>{numero}</Text>
      <View style={{ flexDirection: "row" }}>
        <Button title="+" onPress={inc} />
        <Button title="-" onPress={dec} />
      </View>
      <Text style={Estilos.textDois}>Resultado: {resultado}</Text>
    </>
  );
};
