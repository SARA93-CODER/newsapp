//
//  pageTableViewCell.swift
//  newsapplication
//
//  Created by mac on 20/01/2023.
//

import UIKit

class pageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblPageTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupCell(title: String){
      
    }

}
