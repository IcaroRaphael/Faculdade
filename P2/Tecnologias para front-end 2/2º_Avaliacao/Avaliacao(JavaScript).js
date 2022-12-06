function marcaTudo(selecionar) {
    var itens = document.getElementsByName('selecionar');

    if(selecionar) {
        document.getElementById('selecionarTudo').innerHTML = 'Desmarcar Todos';
    } 
    else {
        document.getElementById('selecionarTudo').innerHTML = 'Marcar Todos';
    }

    for(var i = 0; i < itens.length; i++) {
        itens[i].checked = selecionar;
    }

}

function contador() {
    var compromissos = document.getElementsByName('selecionar');
    var cont = 0;

    for(var x = 0; x < compromissos.length; x++) {
        if(compromissos[x].checked) {
            cont = cont + 1;
        }
    }
    alert("Número de compromissos selecionados: " + cont);
}