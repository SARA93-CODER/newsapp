//
//  optionTableViewCell.swift
//  newsapplication
//
//  Created by mac on 20/01/2023.
//

import UIKit




class optionTableViewCell: UITableViewCell{
    

    @IBOutlet weak var lblOption: UILabel!
    
    //    make Cell conforms the protocol:
    var labelDelegate: LabelSelectionDelegate?


    
    func initCell(title: String){
        lblOption.text = title
    }
    
    
}
