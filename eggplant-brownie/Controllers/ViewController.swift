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

class ViewController: UIViewController {
    
    var delegate: AdicionaRefeicaoDelegate?
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    // Método
    @IBAction func adicionar(_ sender: UIButton) {
        
        guard let nomeDaRefeicao = nomeTextField?.text else { 
            return
        }

        guard let felicidadeDaRefeicao = felicidadeTextField?.text,
              let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }

        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)

        print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)

        // Desparece com a tela que ficou sob a outra
        navigationController?.popViewController(animated: true)
    }
}


