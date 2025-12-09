//
//  DetailController.swift
//  HttpRequest
//
//  Created by Miguel Mexicano Herrera on 04/12/25.
//
import UIKit
class DetailController: UIViewController {
    lazy var titleLabel: UILabel = {
       var label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pokemon: Pokemon?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        setupUI()
        guard let pokemon = pokemon else { return }
        titleLabel.text = pokemon.name
    }
    func setupUI () {
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
            .isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
    }
}
