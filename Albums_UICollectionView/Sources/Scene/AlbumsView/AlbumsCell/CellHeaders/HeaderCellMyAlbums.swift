//
//  HeaderCellMyAlbums.swift
//  Albums_UICollectionView
//
//  Created by Work on 30.09.2021.
//

import UIKit

class HeaderCellMyAlbums: UICollectionReusableView {

    // MARK: - Properties

    private var label: UILabel = {
        let label = UILabel()
        label.text = "Мои альбомы"
        label.textColor  = .black
        label.font = MetricHeaderCellMyAlbums.labelFont
        label.textAlignment = .left
        return label
    }()

    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("См. все", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    } ()

    // MARK: - Setup Layout

    public func configure() {
        addSubview(label)
        addSubview(button)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        falseTranslatesAutoresizingMaskIntoConstraints()

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: MetricHeaderCellMyAlbums.labeleTopAnchorConstant),
            label.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: MetricHeaderCellMyAlbums.labelLeadingAnchorConstant),

            button.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            button.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant: MetricHeaderCellMyAlbums.buttonTrailingAnchorConstant)
        ])
    }

    private func falseTranslatesAutoresizingMaskIntoConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
    }
}

// MARK: - Metric

struct MetricHeaderCellMyAlbums {

    static let labelFont: UIFont = .boldSystemFont(ofSize: 18)
    static let labeleTopAnchorConstant: CGFloat = 10
    static let labelLeadingAnchorConstant: CGFloat = 5
    static let buttonTrailingAnchorConstant: CGFloat = -10
}
