//
//  MainCollectionCell.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

class MainCollectionCell: UICollectionViewCell {


    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderColor = #colorLiteral(red: 0.9616140723, green: 0.9567009807, blue: 0.9567860961, alpha: 1).cgColor
        self.layer.borderWidth = 2
    }
}
