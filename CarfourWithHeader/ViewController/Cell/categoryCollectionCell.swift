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
        self.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).cgColor
        self.layer.borderWidth = 2
    }
    
    func setUpMain(cell:CategoryData){
        
        CategoryLabel.text = cell.mainText
    }

}
