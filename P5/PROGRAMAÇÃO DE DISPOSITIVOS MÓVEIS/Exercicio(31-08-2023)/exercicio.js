let produtos =
[
    {
        nome: "Arroz",
        preco: 6.0
    },
    {
        nome: "Feijao",
        preco: 8.0
    },
    {
        nome: "Carne",
        preco: 46.0
    }
];

let funcao2 =  produtos.map(produto => produto.preco * 1.50);
console.log(`Os valores são: ${funcao2}`);