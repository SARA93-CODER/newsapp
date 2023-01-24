//
//  todayTableViewCell.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

class todayTableViewCell: UITableViewCell {

    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var btnShare: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgInfo: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    
    
    
    func setupCell (image: UIImage, title: String, shareTo: UIButton, save: UIButton){
        imgInfo.image = image
        lblTitle.text = title
        btnSave.setImage(UIImage(systemName: "bookmark"), for: .normal)
        btnShare.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
    }
    

}
