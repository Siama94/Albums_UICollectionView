//
//  AppDelegate.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarController = UITabBarController()
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let mediaViewController = MediaViewController()
        mediaViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), tag: 0)
        
        let forYouViewController = ForYouViewController()
        forYouViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "heart.text.square.fill"), tag: 1)

        let albumsViewController = AlbumsViewController()
        let albumsNavigationController = UINavigationController(rootViewController: albumsViewController)
        albumsViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "rectangle.stack.fill"), tag: 2)
        albumsNavigationController.navigationBar.prefersLargeTitles = true
        albumsNavigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        albumsNavigationController.navigationBar.shadowImage = UIImage()
        albumsNavigationController.navigationBar.isTranslucent = true
        albumsNavigationController.view.backgroundColor = .clear
        
        let searchViewController = SearchViewController()
        searchViewController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)

        tabBarController.setViewControllers([mediaViewController,
                                             forYouViewController,
                                             albumsNavigationController,
                                             searchViewController],
                                            animated: true)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
}
