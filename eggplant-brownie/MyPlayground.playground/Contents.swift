import UIKit

//let nome = "Jean Camargo"
//
//let endereco = "São José dos Campos"
//
//print(nome)


//func alimentoConsumido() {
//    print ("O nome do usuário é \(nome)")
//}
//
//alimentoConsumido()

//func alimentoConsumido(_ nome: String, _ endereco: String) {
//    print("O nome do usuário é: \(nome) \nEle mora na cidade: \(endereco)")
//
//}

//alimentoConsumido(nome: nome, endereco: endereco)
//alimentoConsumido(nome, endereco)


//let caloria1 = 50.5
//let caloria2 = 100
//let caloria3 = 300
//let caloria4 = 500

//Array, lista
//let totalDeCalorias = [50.5, 100, 300, 500]
//
//print(totalDeCalorias)

// Primeira forma de se escrever um for
//for i in 0...3 {
//    print(i)
//    print(totalDeCalorias[i])
//}

// Segunda forma de se escrever um for
//for i in 0...totalDeCalorias.count-1 {
//    print(i)
//    print(totalDeCalorias[i])
//}

// Terceira forma de se escrever um for
//for caloria in totalDeCalorias {
//    print(caloria)
//}

// Aula de função
//let totalDeCalorias = [50.5, 100]
//
//func todasCalorias(totalDeCalorias: [Double]) -> Double {
//    var total: Double = 0
//
//    for caloria in totalDeCalorias {
//        total += caloria
//    }
//
//    return total
//}
//
//let total = todasCalorias(totalDeCalorias: [50.5, 100, 400])
//
//print(total)

//----------------------------------------------------------------------

// Criando classe:
class Refeicao {
    //var nome: String = "Macarrão"
    //var felicidade: String = "3"
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []
    
    // Construtor
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }
}

// Instanciando uma classe
//let refeicao: Refeicao = Refeicao()
//let refeicao = Refeicao()
//
//refeicao.nome = "Hamburguer"

//print(refeicao.felicidade)
//print(refeicao.nome)
//print(refeicao.nome!)

//if refeicao.nome != nil {
//    print(refeicao.nome!)
//}

// Boas práticas para extrair valores opcionais:

//if let nome = refeicao.nome {
//    print(nome)
//}

// guard let
//func exibeNomeDaRefeicao() {
//    if let nome = refeicao.nome {
//        print(nome)
//    }
//
//    guard let nome = refeicao.nome else {
//        return
//    }
//
//    print(nome)
//}
//
//exibeNomeDaRefeicao()
//
//let numero = Int("5")
//
//if let n = numero {
//    print(n)
//}
//
//print(numero)

class Item {
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}


let refeicao = Refeicao(nome: "Pizza", felicidade: "4")


print(refeicao.nome)

let arroz = Item(nome: "Arroz", calorias: 51.0)
let feijao = Item(nome: "Feijão", calorias: 90.0)
let contraFile = Item(nome: "Contra Filé", calorias: 287.9)

refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)

print(refeicao.nome)

print(refeicao.itens.first?.nome)

if let primeiroItemDaLista = refeicao.itens.first {
    print(primeiroItemDaLista.nome)
}


print(refeicao.totalDeCalorias())

