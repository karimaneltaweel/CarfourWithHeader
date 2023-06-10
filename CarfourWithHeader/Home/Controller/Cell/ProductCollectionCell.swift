//
//  ProductCollectionCell.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

class ProductCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var Carefour: UIImageView!
    
    @IBOutlet weak var oldPrice: UILabel!
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        self.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235).cgColor
        self.layer.borderWidth = 1
    }
}

