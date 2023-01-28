//
//  categoryCollectionViewCell.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit

class categoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgNewsPhoto: UIImageView!

    @IBOutlet weak var btnFavourite: UIButton!
    @IBOutlet weak var lblNewsTitle: UILabel!
    
    @IBAction func btnFav(_ sender: UIButton) {
    }
    
    
    func setupCell(photo: UIImage, title: String, favourite: UIImage){
        imgNewsPhoto.image = photo
        lblNewsTitle.text = title
        btnFavourite.setImage(UIImage(systemName: "star"), for: .normal)
    }
}




