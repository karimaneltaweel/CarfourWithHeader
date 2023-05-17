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
        self.layer.cornerRadius = 25
        self.layer.masksToBounds = true
        
    }
}
