//
//  pictureTableViewCell.swift
//  newsapplication
//
//  Created by mac on 20/01/2023.
//

import UIKit

class pictureTableViewCell: UITableViewCell {

    @IBOutlet weak var savePost: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgNewsPhoto: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func btnSave(_ sender: UIButton) {
    }

    
    func initCell(photo: UIImage, title: String){
        lblTitle.text = title
        imgNewsPhoto.image = photo
//        savePost.buttonType
    }
}
