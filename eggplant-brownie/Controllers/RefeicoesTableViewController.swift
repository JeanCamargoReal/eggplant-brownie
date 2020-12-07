//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Jean Camargo on 06/12/20.
//

import UIKit


class RefeicoesTableViewController: UITableViewController {
    
    var refeicoes = [
        Refeicao(nome: "Açai", felicidade: 5),
        Refeicao(nome: "Pizza", felicidade: 3),
        Refeicao(nome: "Hamburguer", felicidade: 4)
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula 
    }
    
    func add (_ refeicao: Refeicao){
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController {
            viewController.tableViewController = self
        }
    }
}
