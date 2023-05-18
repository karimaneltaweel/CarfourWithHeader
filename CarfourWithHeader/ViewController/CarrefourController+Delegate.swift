//
//  CarrefourVC+Delegate.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

extension CarfourController : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionCell", for: indexPath) as? ProductCollectionCell else{
            fatalError("un dequeue cell")
        }
        
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
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 177, height: 233)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 30, bottom: 3, right: 30)
    }
}
