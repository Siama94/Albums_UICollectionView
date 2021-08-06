//
//  Models.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import Foundation

struct Models {
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case albumsCell(model: AlbumsOption)
}

struct AlbumsOption {
    let name: String
    let number: Int
    let imageName: String
}
