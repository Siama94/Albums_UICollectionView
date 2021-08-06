//
//  ThirdViewController.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    // MARK: - Elements
    
    @objc func leftButtonItem(param: UIBarButtonItem) {
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Альбомы"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                                 target: self,
                                                                 action: #selector(leftButtonItem(param:)))
    }
}
