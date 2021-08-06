//
//  ConfigureCollection.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import UIKit
extension ThirdViewController {
    
    func configureSections() {
        
        models.append(Models(options: [
            
            .albumsCell(model: AlbumsOption(
                            name: "Недавние",
                            number: 1,
                            imageName: "Image0")),
            .albumsCell(model: AlbumsOption(
                            name: "Избранное",
                            number: 3,
                            imageName: "Image1")),
            .albumsCell(model: AlbumsOption(
                            name: "WhatsApp",
                            number: 4,
                            imageName: "Image2")),
            .albumsCell(model: AlbumsOption(
                            name: "Viber",
                            number: 2,
                            imageName: "Image3")),
            .albumsCell(model: AlbumsOption(
                            name: "Instagram",
                            number: 2,
                            imageName: "Image4")),
            .albumsCell(model: AlbumsOption(
                            name: "Поездка",
                            number: 3,
                            imageName: "Image5")),
            .albumsCell(model: AlbumsOption(
                            name: "Собака",
                            number: 4,
                            imageName: "Image7"))
            ]))
        
        models.append(Models(options: [
            
            .albumsCell(model: AlbumsOption(
                            name: "Viber",
                            number: 2,
                            imageName: "Image3")),
            .albumsCell(model: AlbumsOption(
                            name: "Instagram",
                            number: 2, imageName:
                                "Image4")),
            .albumsCell(model: AlbumsOption(
                            name: "Поездка",
                            number: 3,
                            imageName: "Image5")),
            .albumsCell(model: AlbumsOption(
                            name: "Собака",
                            number: 4,
                            imageName: "Image7"))
            ]))
        
        models.append(Models(options: [
            
            .standardCell(model: StandardOption(
                            title: "Видео",
                            icon: UIImage(systemName: "video"),
                            label: 10)),
            .standardCell(model: StandardOption(
                            title: "Селфи",
                            icon: UIImage(systemName: "person.crop.square"),
                            label: 12)),
            .standardCell(model: StandardOption(
                            title: "Фото Live Photos",
                            icon: UIImage(systemName: "livephoto"),
                            label: 56)),
            .standardCell(model: StandardOption(
                            title: "Снимки экрана",
                            icon: UIImage(systemName: "camera.viewfinder"),
                            label: 23)),
            .standardCell(model: StandardOption(
                            title: "Анимированные",
                            icon: UIImage(systemName: "rhombus"),
                            label: 1))
            ]))
        
        models.append(Models(options: [
            
            .standardCell(model: StandardOption(
                            title: "Импортированные",
                            icon: UIImage(systemName: "square.and.arrow.down"),
                            label: 0)),
            .standardCell(model: StandardOption(
                            title: "Скрытые",
                            icon: UIImage(systemName: "eye.slash"),
                            label: 0)),
            .standardCell(model: StandardOption(
                            title: "Недавно удаленные",
                            icon: UIImage(systemName: "trash"),
                            label: 45))
            ]))
    }
}
