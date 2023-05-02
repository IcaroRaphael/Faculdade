import React from "react";

export default (props) => {
    const resposta = props.resposta == 's' ? "Verdadeiro" : "Falso";
    return (
        <div>
            <h2>{props.pergunta}</h2>
            <p>{props.resposta}</p>
            <p>Resposta: {resposta}</p>

        </div>
    )
}