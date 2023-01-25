//
//  todayTableViewCell.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

//protocol ShareButtonDelegate: AnyObject{
//    func didTapShare(at index: IndexPath)
//}
//
//protocol SaveButtonDelegate: AnyObject{
//    func didTapSave(at index: IndexPath)
//}

class todayTableViewCell: UITableViewCell{
    
    
    let vc = todayVC()

    
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var btnShare: UIButton!
    @IBOutlet weak var imgInfo: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    
//   weak var shareDelegate: ShareButtonDelegate?
//    weak var saveDelegate: SaveButtonDelegate?
//
    
    
    @IBAction func btnSavePressed(_ sender: UIButton) {
        
    }
    @IBAction func btnSharePressed(_ sender: UIButton) {
       
    }
    

    
    
    func setupCell (image: UIImage, title: String, shareTo: UIButton, save: UIButton){
        imgInfo.image = image
        lblTitle.text = title
        self.btnSave = save
        self.btnShare = shareTo
    }
}
