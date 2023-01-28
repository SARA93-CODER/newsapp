//
//  latest1VC.swift
//  newsapplication
//
//  Created by mac on 28/01/2023.
//

import UIKit

class latest1VC: UIViewController {
    var delegate1: LatestCellDelegate?
    
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var imgLatest: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
