//
//  sportsTableViewCell.swift
//  newsapplication
//
//  Created by mac on 28/01/2023.
//

import UIKit

class sportsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var sahreButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var imgSports: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    @IBAction func btnSave(_ sender: UIButton) {
    }
    @IBAction func btnShare(_ sender: UIButton) {
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func setupCell (photo: UIImage, title: String, save: UIButton, share: UIButton){
        imgSports.image = photo
        lblTitle.text = title
        self.saveButton = save
        self.sahreButton = share
    }
}

