//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Jean Camargo on 27/11/20.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add (_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
//    var itens: [String] = ["Queijo", "Maionese Verde", "Bacon", "Alface", "Tomate", "Hamburguer"]
    var itens: [Item] = [Item(nome: "Queijo", calorias: 72.0),
                         Item(nome: "Maionese Verde", calorias: 72.0),
                         Item(nome: "Bacon", calorias: 72.0),
                         Item(nome: "Alface", calorias: 72.0),
                         Item(nome: "Tomate", calorias: 72.0),
                         Item(nome: "Hamburguer", calorias: 72.0)]
    
    var itensSelecionados: [Item] = []
    
    // MARK: - IBOutlets
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let linhaDaTabela = indexPath.row
        let item = itens[linhaDaTabela]
        celula.textLabel?.text = item.nome
        
        return celula
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let celula = tableView.cellForRow(at: indexPath) else { return }
        
        if celula.accessoryType == .none {
            celula.accessoryType = .checkmark
            let linhaDaTabela = indexPath.row
            itensSelecionados.append(itens[linhaDaTabela])
        } else {
            celula.accessoryType = .none
            
            let item = itens[indexPath.row]
            if let position = itensSelecionados.firstIndex(of: item) {
                itensSelecionados.remove(at: position)
            }
        }
    }
    
    // MARK: - ABActions
    
    @IBAction func adicionar(_ sender: UIButton) {
        
        guard let nomeDaRefeicao = nomeTextField?.text else { 
            return
        }

        guard let felicidadeDaRefeicao = felicidadeTextField?.text,
              let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }

        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, itens: itensSelecionados)
        
        refeicao.itens = itensSelecionados
        
        print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)

        // Desparece com a tela que ficou sob a outra
        navigationController?.popViewController(animated: true)
    }
}


