import React, { cloneElement } from "react";

export default props => {

    console.log(typeof props.children.map)
    return (
        <div>
            <h2>Componente Pai Dois</h2>
            {props.children.map( (child, i) => {
                return cloneElement(child, {...props, key: i})
            })}
        </div>
    )
}