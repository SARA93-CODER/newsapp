//
//  shahidVC.swift
//  newsapplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class shahidVC: UIViewController {
    
//    let picVC = pictureViewController()
//    let vidVC = vidoesViewController()
    
    @IBOutlet weak var picture: UIView!
    @IBOutlet weak var video: UIView!
    
    @IBOutlet weak var segmentChanged: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setup()
        
        UIView.animate(withDuration: 0, delay: 0) {
//display picture's UI at beginning using alpha attribute
            self.picture.alpha = 1
            self.video.alpha = 0
        }

    }
    
    
//    private func setup() {
//        addChild(picVC)
//        addChild(vidVC)
//
//        self.view.addSubview(picVC.view)
//        self.view.addSubview(vidVC.view)
//
//        picVC.didMove(toParent: self)
//        vidVC.didMove(toParent: self)
//
//        picVC.view.frame = self.view.bounds
//        vidVC.view.frame = self.view.bounds
//        vidVC.view.isHidden = true
//    }
//
    @IBAction func segmentDidChanges(_ sender: UISegmentedControl) {
//
//        picVC.view.isHidden = true
//        vidVC.view.isHidden = true
//
//        if sender.selectedSegmentIndex == 0{
//            //show picVC
//            picVC.view.isHidden = false
//        } else{
//            //show vidVC
//            vidVC.view.isHidden = false
//        }
       switch sender.selectedSegmentIndex {
    case 0:
        UIView.animate(withDuration: 0.5, delay: 0) {
            self.picture.alpha = 1
            self.video.alpha = 0
        }
    case 1:
        UIView.animate(withDuration: 0.5, delay: 0) {
            self.picture.alpha = 0
            self.video.alpha = 1
        }
    default:
        break
    }
        
    }
    
    
    
}
