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
            numOfItem = arrayOfMain.count
        case category:
            numOfItem = arrayOfCategory.count
        default:
            numOfItem = arrayOfMain.count
        }
        return numOfItem
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
            
        case MainCollection :
            guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionCell", for: indexPath) as? MainCollectionCell else{
                fatalError("un dequeue cell")
            }
            cell.setUpMain(cell: arrayOfMain[indexPath.row])
            return cell
            
        case category :
            guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCollectionCell", for: indexPath) as? categoryCollectionCell else{
                fatalError("un dequeue cell")
            }
            cell.setUpCategory(cell: arrayOfCategory[indexPath.row])
            
            if indexPath.row == selectedItem  {
                cell.contentView.backgroundColor = #colorLiteral(red: 0.0861357972, green: 0.4787014127, blue: 0.6216185093, alpha: 1)
            }
            else{
                cell.contentView.backgroundColor = #colorLiteral(red: 0.9616140723, green: 0.9567009807, blue: 0.9567860961, alpha: 1)
            }
            
            return cell
            
        default:
            guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionCell", for: indexPath) as? MainCollectionCell else{
                fatalError("un dequeue cell")
            }
            cell.setUpMain(cell: arrayOfMain[indexPath.row])
            return cell
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard  let cell = category.cellForItem(at: indexPath) else{
            fatalError("un dequeue cell")
        }
        cell.contentView.backgroundColor = #colorLiteral(red: 0.0861357972, green: 0.4787014127, blue: 0.6216185093, alpha: 1)
        collectionView.cellForItem(at:IndexPath(row: selectedItem, section: 0))?.contentView.backgroundColor = #colorLiteral(red: 0.9616140723, green: 0.9567009807, blue: 0.9567860961, alpha: 1)
        selectedItem = arrayOfCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        guard  let cell = category.cellForItem(at: indexPath) else{
            fatalError("un dequeue cell")
        }
        cell.contentView.backgroundColor = #colorLiteral(red: 0.9616140723, green: 0.9567009807, blue: 0.9567860961, alpha: 1)
    }
    
}

extension HeaderController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var sizeOfCell = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
        switch collectionView{
        case MainCollection:
            sizeOfCell = CGSize(width: (MainCollection.frame.width * 0.36)-20, height: (MainCollection.frame.height * 0.86))
        case category:
            sizeOfCell = CGSize(width: (category.frame.width * 0.28)-20, height:(category.frame.height * 0.7)-4)
        default:
            sizeOfCell = CGSize(width: MainCollection.frame.width, height: MainCollection.frame.height)
        }
        return sizeOfCell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 8, bottom: 5, right: 8)
    }
    
}
