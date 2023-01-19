//
//  videoTableViewCell.swift
//  newsapplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class videoTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAccessory: UILabel!
    @IBOutlet weak var newsPhoto: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customInit(photo: UIImage, title: String, accessory: String){
        self.newsPhoto.image = photo
        self.lblTitle.text = title
        self.lblAccessory.text = accessory
        
        self.lblTitle.textColor = UIColor.darkGray
        self.contentView.backgroundColor = UIColor.white
        
        self.lblAccessory.textColor = UIColor.lightGray
    }
    
}
