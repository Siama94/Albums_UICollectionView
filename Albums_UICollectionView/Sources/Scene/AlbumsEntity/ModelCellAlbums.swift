//
//  ModelCellAlbums.swift
//  Albums_UICollectionView
//
//  Created by Work on 30.09.2021.
//

import UIKit

struct ModelCellAlbums {
    let type: ModelCellType
    let imageName: UIImageView
    let labelName: String
    let labelNumber: String
}

enum ModelCellType {
    case cellMyAlbums
    case cellPeopleAndPlaces
    case cellTypesOfMedia
}
