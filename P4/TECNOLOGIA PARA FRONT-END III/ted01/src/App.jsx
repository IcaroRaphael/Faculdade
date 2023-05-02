import  './App.css'
import React from "react";
import Card from './layout/Card';
import Pai from './components/Componente04/Pai';
import PaiDois from './components/Componente05/PaiDois';
import Filho from './components/Componente04/Filho';
import Componente01 from './components/Componente01';
import Componente02 from './components/Componente02';
import Componente03 from './components/Componente03';


export default () => (
    <div className='App'>
        <h1>TED 01</h1>
        <div className='Cards'>
            <Card titulo='Primeiro' color='#E94'>
                <Componente01/>
            </Card>
            <Card titulo='Segundo' color='#E97'>
                <Componente02/>
            </Card>
            <Card titulo='Terceiro' color='#E99'>
                <Componente03 pergunta="Esse é um componente com parâmetro?" resposta={'s'} />
            </Card>
            <Card titulo='Quarto' color='#E29'>
                <Pai sobrenome="Silva"/>
            </Card>
            <Card titulo='Quinto' color='#E35'>
                <PaiDois sobrenome="Santos">
                    <Filho nome="Maria"/>
                    <Filho nome="José"/>
                    <Filho nome="Ana"/>
                    <Filho nome="João"/>
                    <Filho nome="Pedro"/>
                </PaiDois>
            </Card>
        </div>
    </div>
);