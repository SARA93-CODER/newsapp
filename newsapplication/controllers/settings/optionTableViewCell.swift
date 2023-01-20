//
//  optionTableViewCell.swift
//  newsapplication
//
//  Created by mac on 20/01/2023.
//

import UIKit

class optionTableViewCell: UITableViewCell {

    @IBOutlet weak var lblOptionSetting: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupOption(title: String) {
        lblOptionSetting.text = title
    }

}
