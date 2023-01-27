//
//  categoryCollectionViewCell.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit

class categoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgNewsPhoto: UIImageView!

    @IBOutlet weak var lblNewsTitle: UILabel!
    
    
    
    func setupCell(photo: UIImage, title: String){
        imgNewsPhoto.image = photo
        lblNewsTitle.text = title
    }
}




