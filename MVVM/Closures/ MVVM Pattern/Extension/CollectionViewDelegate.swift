//
//  CollectionViewDelegate.swift
//  Closures
//
//  Created by Pawan iOS on 30/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CustomCollectionCell.customCollectionViewCellRegister(collectionView: collectionView, indexPath: indexPath)
        
        cell.profileImage.image = newArray[indexPath.row]
        
        return cell
    }
    
    
    //Marks: createLayout: UICollectionViewCompositionalLayout
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        let item  = CompostionLayout.createItem(widht: .fractionalWidth(0.5), height: .fractionalHeight(1), spacing: 3)
        
        let fullitem = CompostionLayout.createItem(widht: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 3)
        
        let vertical = CompostionLayout.createGroups(alignment: .vertical, widht: .fractionalWidth(0.5), height: .fractionalHeight(1), item: fullitem, count: 2)
        
        let horizontalGroups = CompostionLayout.createGroups(alignment: .horizontal, widht: .fractionalWidth(1), height: .fractionalHeight(0.4), items: [item, vertical])
        
        let MainItem = CompostionLayout.createItem(widht: .fractionalWidth(1), height: .fractionalHeight(0.4), spacing: 3)
        
        let MainItem3 = CompostionLayout.createItem(widht: .fractionalWidth(0.5), height: .fractionalHeight(1), spacing: 3)
        let MainItem4 = CompostionLayout.createItem(widht: .fractionalWidth(0.5), height: .fractionalHeight(1), spacing: 3)
        
        let Main2 = CompostionLayout.createGroups(alignment: .horizontal, widht: .fractionalWidth(1), height: .fractionalHeight(0.2), items: [MainItem3, MainItem4])
        
        let mainGroup = CompostionLayout.createGroups(alignment: .vertical, widht: .fractionalWidth(1), height: .fractionalHeight(0.5), items: [MainItem, horizontalGroups, Main2])
        
        let section = NSCollectionLayoutSection(group: mainGroup)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}

