//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Jean Camargo on 10/12/20.
//

import UIKit

class AdicionarItensViewController: UIViewController {
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: -  IBAction
    
    @IBAction func adicionarItem(_ sender: Any) {
        // navegar para próxima tela: navigationController.push()
        // navegar para tela anterior: navigationControler.pop()
        navigationController?.popViewController(animated: true)
    }
    
}
