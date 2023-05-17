//
//  ViewController.swift
//  CarfourWithHeader
//
//  Created by kariman eltawel on 17/05/2023.
//

import UIKit

class CarfourController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "MainCollectionCell", bundle: nil), forCellWithReuseIdentifier: "MainCollectionCell")
    }


}

