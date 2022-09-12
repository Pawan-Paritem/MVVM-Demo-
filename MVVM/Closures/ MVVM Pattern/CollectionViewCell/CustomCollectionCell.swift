//
//  CustomCollectionCell.swift
//  Closures
//
//  Created by Pawan iOS on 30/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class CustomCollectionCell: UICollectionViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
 
    class func customCollectionViewCellRegister( collectionView: UICollectionView, indexPath: IndexPath) -> CustomCollectionCell {
        
        collectionView.register(UINib(nibName: "CustomCollectionCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CustomCollectionCell
        
        return cell
    }
}
