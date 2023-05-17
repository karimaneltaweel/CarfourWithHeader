//
//  HeaderController+Delegate.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

extension HeaderController : UICollectionViewDelegate , UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numOfItem = 0
        
        switch collectionView{
        case MainCollection:
            numOfItem = 4
        case category:
            numOfItem = 5
        default:
            numOfItem = 1
        }
        return numOfItem
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
            
        case MainCollection :
            guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionCell", for: indexPath) as? MainCollectionCell else{
                fatalError("un dequeue cell")
            }
            cell.mainImage.image =  UIImage(named: "food")
            cell.mainLabel.text = "Food"
            return cell
            
        case category :
            guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCollectionCell", for: indexPath) as? categoryCollectionCell else{
                fatalError("un dequeue cell")
            }
            cell.CategoryLabel.text = "Fish"
            return cell
            
        default:
            guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionCell", for: indexPath) as? MainCollectionCell else{
                fatalError("un dequeue cell")
            }
            cell.mainImage.image =  UIImage(named: "food")
            cell.mainLabel.text = "Fish"
            return cell
        }
        
    }
    
}
extension HeaderController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        var sizeOfCell = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)

        switch collectionView{
        case MainCollection:
            sizeOfCell = CGSize(width: (MainCollection.frame.width * 0.45)-20, height: (MainCollection.frame.height * 0.9))
        case category:
            sizeOfCell = CGSize(width: (category.frame.width * 0.35)-20, height:(category.frame.height * 0.7)-4)
        default:
            sizeOfCell = CGSize(width: MainCollection.frame.width, height: MainCollection.frame.height)
        }
        return sizeOfCell

    }
    
}
