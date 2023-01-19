//
//  settingTableViewCell.swift
//  newsapplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class settingTableViewCell: UITableViewCell {

    @IBOutlet weak var lblOptionCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupOptionCell(title: String){
       
        lblOptionCell.text = title
    }
    

}
