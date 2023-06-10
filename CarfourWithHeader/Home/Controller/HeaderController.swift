//
//  HeaderController.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

class HeaderController: UICollectionReusableView {
    var arrayOfMain = [MainData(mainImage: UIImage(named: "food")!,
                                mainText: "Food"),
                       MainData(mainImage: UIImage(named: "home")!,
                                mainText: "Home"),
                       MainData(mainImage: UIImage(named: "Cleaners")!,
                                mainText: "Cleaners")]
    
    var arrayOfCategory = [CategoryData(mainText: "Fish" ),CategoryData(mainText:"Milk"),CategoryData(mainText: "Chicken"),CategoryData(mainText:"Oil & Ghee")]
    
    
    var selectedItem = 0
    
    @IBOutlet weak var MainCollection: UICollectionView!{
        didSet{
            
            MainCollection.register(UINib(nibName: "MainCollectionCell", bundle: nil), forCellWithReuseIdentifier: "MainCollectionCell")
            
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
