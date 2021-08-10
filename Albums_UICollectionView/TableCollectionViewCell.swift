//
//  TableCollectionViewCell.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import UIKit

class TableCollectionViewCell: UICollectionViewCell {
    
    static let indentifier = "TableCollectionViewCell"
    
    // MARK: - Configure cell
    
    func configure(with model: StandardOption) {
        label.text = model.title
        iconImageView.image = model.icon
        labelLeft.text = String(model.label)
        arrawImageView.image = UIImage(systemName: "chevron.right")
    }
    
    // MARK: - Elements
    
    public let iconContainer: UIView = {
        let view = UIView()
        return view
    }()
    
    public let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .systemBlue
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    public var arrawContainer: UIView = {
        let view = UIView()
        return view
    }()
    
    public let arrawImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.tintColor = .systemGray
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    public let label: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        label.numberOfLines = 1
        
        return label
    }()
    
    public let labelLeft: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupHierarchy()
        setupLayouts()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        contentView.addSubview(labelLeft)
        contentView.addSubview(arrawContainer)
        arrawContainer.addSubview(arrawImageView)
        iconContainer.addSubview(iconImageView)
        
    }
    
    private func setupView() {
        contentView.clipsToBounds = true
    }
    
    private func setupLayouts() {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        iconContainer.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        arrawContainer.translatesAutoresizingMaskIntoConstraints = false
        arrawImageView.translatesAutoresizingMaskIntoConstraints = false
        labelLeft.translatesAutoresizingMaskIntoConstraints = false
     
        NSLayoutConstraint.activate([
        
        label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
        label.leadingAnchor.constraint(equalTo: iconContainer.trailingAnchor),
        label.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
        
        iconContainer.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
        iconContainer.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8),
        iconContainer.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor),
        iconContainer.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor),
        
        iconImageView.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor),
        iconImageView.widthAnchor.constraint(equalTo:iconContainer.widthAnchor, constant: -15),
        iconImageView.heightAnchor.constraint(equalTo:iconContainer.heightAnchor, constant: -15),
        
        arrawContainer.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
        arrawContainer.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8),
        arrawContainer.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor),
        arrawContainer.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor),
        
        arrawImageView.centerYAnchor.constraint(equalTo: arrawContainer.centerYAnchor),
        arrawImageView.trailingAnchor.constraint(equalTo: arrawContainer.trailingAnchor, constant: -8),
        arrawImageView.widthAnchor.constraint(equalTo: arrawContainer.widthAnchor, constant: -28),
        arrawImageView.heightAnchor.constraint(equalTo: arrawContainer.widthAnchor, constant: -28),
        
        labelLeft.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
        labelLeft.trailingAnchor.constraint(equalTo: arrawImageView.leadingAnchor, constant: -5),
        ])
    }
}
