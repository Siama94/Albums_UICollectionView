//
//  AlbumsEntity.swift
//  Albums_UICollectionView
//
//  Created by Work on 30.09.2021.
//

import UIKit

protocol EntityProtocol {
    func updateData() -> [String: [ModelCellAlbums]]?
}

class AlbumsEntity: EntityProtocol {

    func updateData() -> [String: [ModelCellAlbums]]? {

        let data = [ "Section0": [ModelCellAlbums(
                                    type: .cellMyAlbums,
                                    imageName: UIImageView.init(image: UIImage(named: "Image0")),
                                    labelName: "Недавние",
                                    labelNumber: "78"),
                                  ModelCellAlbums(
                                    type: .cellMyAlbums,
                                    imageName: UIImageView.init(image: UIImage(named: "Image1")),
                                    labelName: "Избранное",
                                    labelNumber: "3"),
                                  ModelCellAlbums(
                                    type: .cellMyAlbums,
                                    imageName: UIImageView.init(image: UIImage(named: "Image2")),
                                    labelName: "WhatsApp",
                                    labelNumber: "4"),
                                  ModelCellAlbums(
                                    type: .cellMyAlbums,
                                    imageName: UIImageView.init(image: UIImage(named: "Image3")),
                                    labelName: "Viber",
                                    labelNumber: "2"),
                                  ModelCellAlbums(
                                    type: .cellMyAlbums,
                                    imageName: UIImageView.init(image: UIImage(named: "Image4")),
                                    labelName: "Instagram",
                                    labelNumber: "2"),
                                  ModelCellAlbums(
                                    type: .cellMyAlbums,
                                    imageName: UIImageView.init(image: UIImage(named: "Image5")),
                                    labelName: "Поездка",
                                    labelNumber: "3"),
                                  ModelCellAlbums(
                                    type: .cellMyAlbums,
                                    imageName: UIImageView.init(image: UIImage(named: "Image6")),
                                    labelName: "Собака",
                                    labelNumber: "4")],
                     "Section1": [ModelCellAlbums(
                                    type: .cellPeopleAndPlaces,
                                    imageName: UIImageView.init(image: UIImage(named: "Image3")),
                                    labelName: "Люди",
                                    labelNumber: "2"),
                                  ModelCellAlbums(
                                    type: .cellPeopleAndPlaces,
                                    imageName: UIImageView.init(image: UIImage(named: "Image7")),
                                    labelName: "Места",
                                    labelNumber: "2"),
                                  ModelCellAlbums(
                                    type: .cellPeopleAndPlaces,
                                    imageName: UIImageView.init(image: UIImage(named: "Image5")),
                                    labelName: "Разное",
                                    labelNumber: "3")],
                     "Section2": [ModelCellAlbums(
                                    type: .cellTypesOfMedia,
                                    imageName: UIImageView.init(image: UIImage(systemName: "video")),
                                    labelName: "Видео",
                                    labelNumber: "32"),
                                  ModelCellAlbums(
                                    type: .cellTypesOfMedia,
                                    imageName: UIImageView.init(image: UIImage(systemName: "person.crop.square")),
                                    labelName: "Селфи",
                                    labelNumber: "23"),
                                  ModelCellAlbums(
                                    type: .cellTypesOfMedia,
                                    imageName: UIImageView.init(image: UIImage(systemName: "doc.text.viewfinder")),
                                    labelName: "Снимки экрана",
                                    labelNumber: "41"),
                                  ModelCellAlbums(
                                    type: .cellTypesOfMedia,
                                    imageName: UIImageView.init(image: UIImage(systemName: "rhombus")),
                                    labelName: "Анимированные",
                                    labelNumber: "1"),
                                  ModelCellAlbums(
                                    type: .cellTypesOfMedia,
                                    imageName: UIImageView.init(image: UIImage(systemName: "square.and.arrow.down")),
                                    labelName: "Импортированные",
                                    labelNumber: "12"),
                                  ModelCellAlbums(
                                    type: .cellTypesOfMedia,
                                    imageName: UIImageView.init(image: UIImage(systemName: "eye.slash")),
                                    labelName: "Скрытые",
                                    labelNumber: "0"),
                                  ModelCellAlbums(
                                    type: .cellTypesOfMedia,
                                    imageName: UIImageView.init(image: UIImage(systemName: "trash")),
                                    labelName: "Недавно удаленные",
                                    labelNumber: "45")]
        ]
        return data
    }
}
