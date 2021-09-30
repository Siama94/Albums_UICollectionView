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
        
        window = UIWindow()
        let mainRouter = AlbumsRouter()
        mainRouter.start()

        window?.rootViewController = mainRouter.parentView
        window?.makeKeyAndVisible()
        return true
    }
}
