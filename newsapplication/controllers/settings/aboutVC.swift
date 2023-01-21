//
//  aboutVC.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit

class aboutVC: UIViewController {
    
    
    @IBOutlet weak var lblAbout: UILabel!
    
    var detailText: String?
        override func viewDidLoad() {
        super.viewDidLoad()

        lblAbout.text = detailText
    }


    
}
