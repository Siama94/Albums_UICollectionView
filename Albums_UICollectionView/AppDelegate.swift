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
        
        let firstViewController = FirstViewController()
        firstViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), tag: 0)
        
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "heart.text.square.fill"), tag: 1)

        let thirdViewController = ThirdViewController()
        let thirdNavigationController = UINavigationController(rootViewController: thirdViewController)
        thirdViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "rectangle.stack.fill"), tag: 2)
        thirdNavigationController.navigationBar.prefersLargeTitles = true
        thirdNavigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        thirdNavigationController.navigationBar.shadowImage = UIImage()
        thirdNavigationController.navigationBar.isTranslucent = true
        thirdNavigationController.view.backgroundColor = .clear
        
        let fourViewController = FourViewController()
        fourViewController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)

        tabBarController.setViewControllers([firstViewController,
                                             secondViewController,
                                             thirdNavigationController,
                                             fourViewController],
                                            animated: true)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
}
