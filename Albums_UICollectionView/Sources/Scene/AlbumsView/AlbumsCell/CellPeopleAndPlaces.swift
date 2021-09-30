//
//  CellPeopleAndPlaces.swift
//  Albums_UICollectionView
//
//  Created by Work on 30.09.2021.
//

import UIKit

class CellPeopleAndPlaces: UICollectionViewCell {

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        setupUI()
    }

    // MARK: - Properties

    lazy var labelName: UILabel = {
        let label = UILabel()
        label.font = MetricCellPeopleAndPlaces.labelFont
        label.textColor = .black
        return label
    }()

    lazy var labelNumber: UILabel = {
        let label = UILabel()
        label.font = MetricCellPeopleAndPlaces.labelFont
        label.textColor = .gray
        return label
    }()

    lazy var titleImage: UIImageView = {
        let titleImage = UIImageView()

        return titleImage
    } ()
}

// MARK: - SetupLayout

extension CellPeopleAndPlaces {

    private func setupUI() {

        falseTranslatesAutoresizingMaskIntoConstraints()

        self.contentView.addSubview(titleImage)
        self.contentView.addSubview(labelName)
        self.contentView.addSubview(labelNumber)

        titleImage.clipsToBounds = true
        titleImage.layer.masksToBounds = true
        titleImage.layer.cornerRadius = 5
        titleImage.contentMode = UIView.ContentMode.scaleAspectFill

        NSLayoutConstraint.activate([

            titleImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: MetricCellPeopleAndPlaces.titleImageTopAnchorConstant),
            titleImage.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            titleImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: MetricCellPeopleAndPlaces.titleImageLeadingAnchorConstant),
            titleImage.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: MetricCellPeopleAndPlaces.titleImageTrailingAnchorConstant),

            labelName.topAnchor.constraint(equalTo: titleImage.bottomAnchor, constant: MetricCellPeopleAndPlaces.titleLabelTopAnchorConstant),
            labelName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: MetricCellPeopleAndPlaces.titleLabelLeadingAnchorConstant),
            labelName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: MetricCellPeopleAndPlaces.titleLabelTrailingAnchorConstant),

            labelNumber.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: MetricCellPeopleAndPlaces.titleCountTopAnchorConstant),
            labelNumber.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: MetricCellPeopleAndPlaces.titleCountLeadingAnchorConstant),
            labelNumber.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: MetricCellPeopleAndPlaces.titleCountTrailingAnchorConstant),
        ])
    }

    private func falseTranslatesAutoresizingMaskIntoConstraints() {
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        labelName.translatesAutoresizingMaskIntoConstraints = false
        labelNumber.translatesAutoresizingMaskIntoConstraints = false
    }
}

// MARK: - Metric

struct MetricCellPeopleAndPlaces {

    static let labelFont = UIFont(name: "system", size: 17)

    static let titleImageTopAnchorConstant: CGFloat = 5
    static let titleImageLeadingAnchorConstant: CGFloat = 5
    static let titleImageTrailingAnchorConstant: CGFloat = -5

    static let titleLabelTopAnchorConstant: CGFloat = 5
    static let titleLabelLeadingAnchorConstant: CGFloat = 5
    static let titleLabelTrailingAnchorConstant: CGFloat = 5

    static let titleCountTopAnchorConstant: CGFloat = 5
    static let titleCountLeadingAnchorConstant: CGFloat = 5
    static let titleCountTrailingAnchorConstant: CGFloat = 5
}
