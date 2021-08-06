//
//  Models.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import Foundation
import UIKit

struct Models {
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case albumsCell(model: AlbumsOption)
    case standardCell(model: StandardOption)
}

struct AlbumsOption {
    let name: String
    let number: Int
    let imageName: String
}

struct StandardOption {
    let title: String
    let icon: UIImage?
    var label: Int
}
