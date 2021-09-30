//
//  AlbumsInteractor.swift
//  Albums_UICollectionView
//
//  Created by Work on 30.09.2021.
//

import UIKit

protocol InteractorProtocol {
    func updateData(completion: (([String : [ModelCellAlbums]]?) -> Void)?)
}

class AlbumsInteractor: InteractorProtocol {

    var presenter: PresenterProtocol?
    var entity = AlbumsEntity()

    func updateData(completion: (([String : [ModelCellAlbums]]?) -> Void)?) {
        completion?(entity.updateData())
    }
}
