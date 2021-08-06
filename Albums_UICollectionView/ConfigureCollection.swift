//
//  ConfigureCollection.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

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
    }
}
