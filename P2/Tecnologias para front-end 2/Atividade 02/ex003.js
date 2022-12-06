/*3) Crie uma função que solicite N números ao usuário, coloque em um array, depois exiba tal array.*/
var lista = [];
function numeros(){
    var num = 0;
    var stop = 'S';
    while(true){
        num = parseFloat(prompt("Insira um número: "));
        lista.push(num);
        stop = prompt("Você deseja continuar? [S/N]:").toUpperCase();
        if(stop == "N"){
            break;
        }
    }
    return lista;
}

console.log("Array: ", numeros());