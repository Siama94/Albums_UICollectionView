//
//  Headers.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
        
    static let indentifier = "CollectionReusableView"
    
    private var leftLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        
        return label
    }()
    
    private  var rightLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        label.textAlignment = .right
        
        return label
    }()
    
    public func configureBothHeaders(leftheader: String, rightHeader: String) {
        backgroundColor = .white
        leftLabel.text = leftheader
        rightLabel.text = rightHeader
        addSubview(leftLabel)
        addSubview(rightLabel)
    }
    
    public func configureLeftHeader(_ leftheader: String) {
        backgroundColor = .white
        leftLabel.text = leftheader
        rightLabel.text = ""
        addSubview(leftLabel)
        addSubview(rightLabel)
    }
        
    override func layoutSubviews() {
        super.layoutSubviews()
        
        leftLabel.translatesAutoresizingMaskIntoConstraints = false
        leftLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        rightLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
    }
}

