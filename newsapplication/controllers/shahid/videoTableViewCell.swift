//
//  videoTableViewCell.swift
//  newsapplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class videoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblVideoTitle: UILabel!
    
    @IBOutlet weak var imgVideoNews: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func btnSave(_ sender: Any) {
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func customInit(photo: UIImage, title: String){
        self.imgVideoNews.image = photo
        self.lblVideoTitle.text = title
//        self.btnSave(An) = save
    }
}
