//
//  ThirdViewController.swift
//  Albums_UICollectionView
//
//  Created by Анастасия on 06.08.2021.
//

import UIKit

class AlbumsViewController: UIViewController, UICollectionViewDelegateFlowLayout {

    // MARK: - Elements
    
    public var models = [Models]()
    
    @objc func leftButtonItem(param: UIBarButtonItem) {
    }
    
    private let collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        collectionView.backgroundColor = .white
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        return collectionView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayouts()
        configureSections()
        collectionView.reloadData()
        self.title = "Альбомы"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                                 target: self,
                                                                 action: #selector(leftButtonItem(param:)) )
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) - fatalError")
    }
    
    // MARK: - Settings
    
    private func setupLayouts() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.collectionViewLayout = createCompositionalLayout()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Register cells
        collectionView.register(AlbumCell.self,
                                forCellWithReuseIdentifier: AlbumCell.indentifier)
        collectionView.register(TableCollectionViewCell.self,
                                forCellWithReuseIdentifier: TableCollectionViewCell.indentifier)
        // Register headers
        collectionView.register(CollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: CollectionReusableView.indentifier)
    }
    
    //MARK: - Settings Sections
    
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
            
            switch sectionNumber {
        
            case 0: return self.firstLayoutSection()
            case 1: return self.secondLayoutSection()
            default: return self.thirdLayoutSection()
            }
        }
    }
    
    private func firstLayoutSection() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .fractionalWidth(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(140),
            heightDimension: .absolute(380))
        
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize,
                                                     subitem: item,
                                                     count:2)
        group.contentInsets = NSDirectionalEdgeInsets(top: 5,
                                                      leading: 5,
                                                      bottom: 5,
                                                      trailing: 5)
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                heightDimension: .absolute(25))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,elementKind: CollectionReusableView.indentifier, alignment: .top)
        
        sectionHeader.pinToVisibleBounds = true
        sectionHeader.zIndex = Int.max
        section.boundarySupplementaryItems = [sectionHeader]
        
        
        return section
    }
    
    private func secondLayoutSection() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .fractionalWidth(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(140),
            heightDimension: .absolute(195))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count:1)
        group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                heightDimension: .absolute(20))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,elementKind: CollectionReusableView.indentifier, alignment: .top)
        
        sectionHeader.pinToVisibleBounds = true
        sectionHeader.zIndex = Int.max
        section.boundarySupplementaryItems = [sectionHeader]
        
        return section
    }
    
    private func thirdLayoutSection() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                               heightDimension: .absolute(44))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

        let section = NSCollectionLayoutSection(group: group)
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                heightDimension: .absolute(20))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,elementKind: CollectionReusableView.indentifier, alignment: .top)
        
        sectionHeader.pinToVisibleBounds = true
        sectionHeader.zIndex = Int.max
        section.boundarySupplementaryItems = [sectionHeader]
        
        return section
    }
    
    // MARK: - Headers
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CollectionReusableView.indentifier, for: indexPath) as! CollectionReusableView
        let section = indexPath.section
        
        switch (section) {
        case 0:
            header.configureBothHeaders(leftheader: "Мои альбомы", rightHeader: "См.Все")
            return header
            
        case 1:
            header.configureLeftHeader("Общие альбомы")
            return header
            
        case 2:
            header.configureLeftHeader("Типы медиафайлов")
            return header
            
        case 3:
            header.configureLeftHeader("Другое")
            return header
            
        default:
            break
        }
        return UICollectionReusableView()
    }
}

extension  AlbumsViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models[section].options.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let model = models[indexPath.section].options[indexPath.row]
        
        switch model.self {
        
        case.albumsCell(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumCell.indentifier, for: indexPath) as! AlbumCell
            
            cell.configure(with: model)
            cell.contentView.backgroundColor = .clear
            return cell
            
        case.standardCell(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TableCollectionViewCell.indentifier, for: indexPath) as! TableCollectionViewCell

            cell.configure(with: model)
            cell.contentView.backgroundColor = .clear
            return cell
        }
    }
}
