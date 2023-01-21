//
//  optionTableViewCell.swift
//  newsapplication
//
//  Created by mac on 20/01/2023.
//

import UIKit

protocol NavigationDelegate {
    func navigateToViewController(withIdentifier identifier: String)
}

class optionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblOptionSetting: UILabel!
//    var cellLabel: String?
    
    //Add a delegate property now to hold a reference to the optionTableViewCell that conforms to the protocol
    
    
    
    
    override func awakeFromNib() {
      
                }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            
            // Configure the view for the selected state
        }
        
        
        func setupOption(title: String) {
            lblOptionSetting.text = title
        }
        
    
}
