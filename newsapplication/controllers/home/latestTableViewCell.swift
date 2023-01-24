//
//  latestTableViewCell.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

class latestTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgLatest: UIImageView!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var btnShareTo: UIButton!
    @IBOutlet weak var lblLatest: UILabel!
    
    
    
    @IBAction func btnShareToPressed(_ sender: UIButton) {
    }
    
    @IBAction func btnSavePressed(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func setupCell (image: UIImage, title: String, shareTo: UIImage, save: UIImage){
        
        imgLatest.image = image
        lblLatest.text = title
        btnSave.setImage(UIImage(systemName: "bookmark"), for: .normal)
        btnSave.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
    }

}
