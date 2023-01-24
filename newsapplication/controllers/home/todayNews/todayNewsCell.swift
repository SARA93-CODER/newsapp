//
//  todayNewsCell.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

class todayNewsCell: UICollectionViewCell {
    
    @IBOutlet weak var imgNews: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    
    func setupCell(image: UIImage, title: String){
        imgNews.image = image
        lblTitle.text = title
    }
}
