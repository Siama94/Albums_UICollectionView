//
//  AlbumCell.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import UIKit

final class AlbumCell: UICollectionViewCell {

    static let indentifier = "AlbumCell"
    
    // MARK: - Configure Cell
    
    func configure(with model: AlbumsOption) {
        profileImageView.image = UIImage(named: model.imageName)
        name.text = model.name
        number.text = String(model.number)
    }

    // MARK: - Elements
    
     let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 4
        return imageView
    }()

    let name: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14)
        return label
    }()

    let number: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
        setupLayouts()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) - fatalError")
    }
    
    // MARK: - Settings
    
    private func setupViews() {
        contentView.clipsToBounds = true

        contentView.addSubview(profileImageView)
        contentView.addSubview(name)
        contentView.addSubview(number)
    }

    private func setupLayouts() {
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        number.translatesAutoresizingMaskIntoConstraints = false
     
        NSLayoutConstraint.activate([
            
            profileImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            profileImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            profileImageView.heightAnchor.constraint(equalToConstant: 100),
        
            name.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            name.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30),
            
            number.leadingAnchor.constraint(equalTo:  contentView.leadingAnchor),
            number.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
        ])
    }
}
