//
//  CollectionViewCell.swift
//  HttpRequest
//
//  Created by Miguel Mexicano Herrera on 04/12/25.
//
import UIKit
class CollectionViewCell: UICollectionViewCell {
    static let identifier: String = "CollectionViewCell"
    lazy var titleLabel: UILabel = {
       var label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemBackground
        contentView.layer.cornerRadius = 12
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    func setupCell(data: Pokemon) {
        titleLabel.text = data.name
        contentView.backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
