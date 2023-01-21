//
//  shahidVC.swift
//  newsapplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class shahidVC: UIViewController {
   
    @IBOutlet weak var pictureContainerView: UIView!
    
    @IBOutlet weak var videosContainerView: UIView!
    @IBOutlet weak var segmentChanged: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        UIView.animate(withDuration: 0.5, delay: 0) {
            //display picture's UI at beginning using alpha attribute
            self.pictureContainerView.alpha = 1
            self.videosContainerView.alpha = 0
        }

    }
    
    
    @IBAction func segmentDidChanges(_ sender: UISegmentedControl) {

       switch sender.selectedSegmentIndex {
    case 0:
        UIView.animate(withDuration: 0.5, delay: 0) {
            self.pictureContainerView.alpha = 1
            self.videosContainerView.alpha = 0
        }
    case 1:
        UIView.animate(withDuration: 0.5, delay: 0) {
            self.pictureContainerView.alpha = 0
            self.videosContainerView.alpha = 1
        }
    default:
        break
    }
        
    }
    
    
    
}
