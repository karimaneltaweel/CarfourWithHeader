//
//  CarrefourVC+Delegate.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

extension CarfourController : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionCell", for: indexPath) as? MainCollectionCell else{
            fatalError("un dequeue cell")
        }
        
        cell.mainImage.image =  UIImage(named: "food")
        cell.mainLabel.text = "Food"
        
        return cell
    }
    
    
    
}


extension CarfourController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
            
        case UICollectionView.elementKindSectionHeader:
            
            let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "HeaderController",
                for: indexPath)
            
            guard let typedHeaderView = headerView as? HeaderController
            else { return headerView }
            
            typedHeaderView.addSubview(typedHeaderView.MainCollection)
            
            return typedHeaderView
        default:
            assert(false, "Invalid element type")
        }
        
    }
}
