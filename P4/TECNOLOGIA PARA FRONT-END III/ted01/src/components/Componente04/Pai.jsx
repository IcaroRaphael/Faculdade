import React from "react";
import Filho from "./Filho";

export default props => {
    return (
        <div>
            <h2>Componente Pai e Filho</h2>
            <Filho nome="Maria" sobrenome={props.sobrenome}/>
            <Filho nome="José" {...props}/>
            <Filho nome="Ana" {...props}/>
            <Filho nome="João" {...props}/>
            <Filho nome="Pedro" {...props}/>
        </div>
    )
}