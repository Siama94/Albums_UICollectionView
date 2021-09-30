//
//  СellTypesOfMedia.swift
//  Albums_UICollectionView
//
//  Created by Work on 30.09.2021.
//

import UIKit

class СellTypesOfMedia: UICollectionViewCell {

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
        label.font = UIFont(name: "system", size: 18)
        label.textColor = .black
        return label
    }()

    lazy var labelNumber: UILabel = {
        let label = UILabel()
        label.font = MetricСellTypesOfMedia.labelFont
        label.textColor = .gray
        return label
    }()

    lazy var titleImage: UIImageView = {
        let titleImage = UIImageView()
        return titleImage
    } ()

    private lazy var arrawImageView: UIImageView = {
        let image = UIImageView.init(image: UIImage(systemName: "chevron.right"))
        image.tintColor = .systemGray
        image.backgroundColor = .white
        return image
    } ()
}

// MARK: - SetupLayout

extension СellTypesOfMedia {

    private func setupUI() {

        falseTranslatesAutoresizingMaskIntoConstraints()

        self.contentView.addSubview(titleImage)
        self.contentView.addSubview(labelName)
        self.contentView.addSubview(labelNumber)
        self.contentView.addSubview(arrawImageView)

        NSLayoutConstraint.activate([

            titleImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: MetricСellTypesOfMedia.titleImageTopAnchorConstant),
            titleImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleImage.widthAnchor.constraint(equalToConstant: MetricСellTypesOfMedia.titleImageWidthAnchorConstant
            ),
            titleImage.heightAnchor.constraint(equalToConstant: MetricСellTypesOfMedia.titleImageHeightAnchorConstant),

            labelName.topAnchor.constraint(equalTo: titleImage.topAnchor, constant: MetricСellTypesOfMedia.titleLabelTopAnchorConstant),
            labelName.leadingAnchor.constraint(equalTo: titleImage.leadingAnchor, constant: MetricСellTypesOfMedia.titleLabelLeadingAnchorConstant),

            labelNumber.topAnchor.constraint(equalTo: contentView.topAnchor),
            labelNumber.leadingAnchor.constraint(equalTo: labelName.trailingAnchor),
            labelNumber.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: MetricСellTypesOfMedia.titleCountTrailingAnchorConstant),

            arrawImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: MetricСellTypesOfMedia.actionRightImageTopAnchorConstant),
            arrawImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: MetricСellTypesOfMedia.actionRightImageTrailingAnchorConstant),
            arrawImageView.widthAnchor.constraint(equalToConstant: MetricСellTypesOfMedia.actionRightImageWidthAnchorConstant),
            arrawImageView.heightAnchor.constraint(equalToConstant: MetricСellTypesOfMedia.actionRightImageHeightAnchorConstant)
        ])
    }

    private func falseTranslatesAutoresizingMaskIntoConstraints() {
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        labelName.translatesAutoresizingMaskIntoConstraints = false
        labelNumber.translatesAutoresizingMaskIntoConstraints = false
        arrawImageView.translatesAutoresizingMaskIntoConstraints = false
    }
}

// MARK: - Metric

struct MetricСellTypesOfMedia {

    static let labelFont = UIFont(name: "system", size: 17)

    static let titleImageTopAnchorConstant: CGFloat = 5
    static let titleImageWidthAnchorConstant: CGFloat = 30
    static let titleImageHeightAnchorConstant: CGFloat = 30

    static let titleLabelTopAnchorConstant: CGFloat = 5
    static let titleLabelLeadingAnchorConstant: CGFloat = 50

    static let titleCountTrailingAnchorConstant: CGFloat = -40

    static let actionRightImageTopAnchorConstant: CGFloat = 5
    static let actionRightImageTrailingAnchorConstant: CGFloat = -15
    static let actionRightImageWidthAnchorConstant: CGFloat = 10
    static let actionRightImageHeightAnchorConstant: CGFloat = 15
}
