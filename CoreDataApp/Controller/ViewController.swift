//
//  ViewController.swift
//  CoreDataApp
//
//  Created by Raphaël Payet on 25/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let button : UIButton = {
        let button = UIButton()
        button.setTitle("Add Recipe", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(addRecipe), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        // Add Button
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 60),
            button.widthAnchor.constraint(equalToConstant: 200),
        ])
    }

    
    @objc func addRecipe() {
        print("Add recipe")
    }

}

