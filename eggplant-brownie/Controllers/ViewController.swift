//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Jean Camargo on 27/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    // Método
    @IBAction func adicionar(_ sender: UIButton) {
        
        if let nomeDaRefeicao = nomeTextField?.text,
           let felicidadeDaRefeicao = felicidadeTextField?.text {

            let nome = nomeDaRefeicao

            if let felicidade = Int(felicidadeDaRefeicao) {

                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
                print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
            } else {
                print("Erro ao tentar criar a refeição")
            }
        }
        
//        guard let nomeDaRefeicao = nomeTextField?.text else {
//            return
//        }
//
//        guard let felicidadeDaRefeicao = felicidadeTextField?.text,
//              let felicidade = Int(felicidadeDaRefeicao) else {
//            return
//        }
//
//        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
//
//        print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
