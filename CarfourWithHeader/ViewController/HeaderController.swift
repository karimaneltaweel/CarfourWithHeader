//
//  HeaderController.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

class HeaderController: UICollectionReusableView {
    
    @IBOutlet weak var MainCollection: UICollectionView!{
        didSet{
            
            MainCollection.register(UINib(nibName: "MainCollectionCell", bundle: nil), forCellWithReuseIdentifier: "MainCollectionCell")
            //            collectionView.register(UINib(nibName: "categoryCollectionCell", bundle: nil), forCellWithReuseIdentifier: "categoryCollectionCell")
            
            MainCollection.dataSource = self
            MainCollection.delegate = self
        }
        
        
    }
    @IBOutlet weak var category: UICollectionView!{
        didSet{
            
            category.register(UINib(nibName: "categoryCollectionCell", bundle: nil), forCellWithReuseIdentifier: "categoryCollectionCell")
            
            category.dataSource = self
            category.delegate = self
        }
    }
}
