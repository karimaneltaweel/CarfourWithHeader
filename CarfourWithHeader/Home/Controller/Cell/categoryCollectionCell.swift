//
//  categoryCollectionCell.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

class categoryCollectionCell: UICollectionViewCell {
    
    
    @IBOutlet weak var CategoryLabel: UILabel!
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.layer.cornerRadius = 23
        self.layer.masksToBounds = true
        self.layer.borderColor = #colorLiteral(red: 0.9223982692, green: 0.9174852967, blue: 0.9175704122, alpha: 1).cgColor
        self.layer.borderWidth = 2
        
        //        if self.isHighlighted == false && self.isSelected == false{
        //            self.contentView.backgroundColor = #colorLiteral(red: 0.9616140723, green: 0.9567009807, blue: 0.9567860961, alpha: 1)
        //        }
        //
        //        else if self.isHighlighted == false && self.isSelected == true {
        //            self.contentView.backgroundColor = #colorLiteral(red: 0.0861357972, green: 0.4787014127, blue: 0.6216185093, alpha: 1)
        //        }
    }
    
    func setUpCategory(cell:CategoryData){
        
        CategoryLabel.text = cell.mainText
    }
    
}
