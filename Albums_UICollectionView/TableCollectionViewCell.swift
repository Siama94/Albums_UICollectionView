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
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        
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
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        
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
        layoutSubviews()
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        
        iconContainer.translatesAutoresizingMaskIntoConstraints = false
        iconContainer.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        iconContainer.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        iconContainer.widthAnchor.constraint(equalToConstant: 32).isActive = true
        iconContainer.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 26).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 26).isActive = true
        
        arrawContainer.translatesAutoresizingMaskIntoConstraints = false
        arrawContainer.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        arrawContainer.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        arrawContainer.widthAnchor.constraint(equalToConstant: 32).isActive = true
        arrawContainer.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        arrawImageView.translatesAutoresizingMaskIntoConstraints = false
        arrawImageView.centerYAnchor.constraint(equalTo: arrawContainer.centerYAnchor).isActive = true
        arrawImageView.widthAnchor.constraint(equalToConstant: 15).isActive = true
        arrawImageView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        labelLeft.translatesAutoresizingMaskIntoConstraints = false
        labelLeft.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        labelLeft.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -35).isActive = true
    }
}
