//
//  CompositionLayOut.swift
//  Closures
//
//  Created by Pawan iOS on 30/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

enum CompostionLayoutGroupAlignment {
    case vertical
    case horizontal
}

struct CompostionLayout {
    
    static func createItem(widht: NSCollectionLayoutDimension,height: NSCollectionLayoutDimension,spacing: CGFloat) -> NSCollectionLayoutItem {
        
        let item  = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: widht, heightDimension: height))
        item.contentInsets = NSDirectionalEdgeInsets(top: spacing, leading: spacing, bottom: spacing, trailing: spacing)
        return item
    }
    
    static func createGroups (alignment : CompostionLayoutGroupAlignment,widht: NSCollectionLayoutDimension,height: NSCollectionLayoutDimension,items: [NSCollectionLayoutItem]) -> NSCollectionLayoutGroup {
        switch alignment {
            
        case .vertical:
            return  NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: widht, heightDimension: height), subitems: items)
        case .horizontal:
            return NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: widht, heightDimension: height), subitems: items)
        }
    }
    
    static func createGroups (alignment : CompostionLayoutGroupAlignment,widht: NSCollectionLayoutDimension,height: NSCollectionLayoutDimension ,item: NSCollectionLayoutItem,count: Int) -> NSCollectionLayoutGroup {
        switch alignment {
        case .vertical:
            return  NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: widht, heightDimension: height), subitem: item , count: count)
        case .horizontal:
            return NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: widht, heightDimension: height), subitem: item , count: count)
        }
    }
}
