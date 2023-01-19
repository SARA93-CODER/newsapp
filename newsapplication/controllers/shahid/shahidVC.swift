//
//  shahidVC.swift
//  newsapplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class shahidVC: UIViewController {

    //intializing two view controllers globally
    let videoVC = vidoesViewController()
    let pictureVC = pictureViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

       setup()
    }
    
    private func setup() {
        
        
        addChild(videoVC)
        addChild(pictureVC)
        
        //combine two child VCs to the parent one(shahidVC)
        self.view.addSubview(videoVC.view)
        self.view.addSubview(pictureVC.view)
    
        //when moving between the two view controllers
        videoVC.didMove(toParent: self)
        pictureVC.didMove(toParent: self)
        
        //setting frames for each of them
        videoVC.view.frame = self.view.bounds
        pictureVC.view.frame = self.view.bounds
        
        //hidding pictureVC at the begining
        pictureVC.view.isHidden = true
        

        
    }
    
    

    

    @IBAction func didTapSegment(_ sender: UISegmentedControl) {
        
    }
    @IBAction func didTapSegment(segment: UISegmentedControl) {
        videoVC.view.isHidden = true
        pictureVC.view.isHidden = true
        if segment.selectedSegmentIndex == 0 {
            //show videoVC
            videoVC.view.isHidden = false
        }else{
            //show pictureVC
            videoVC.view.isHidden = false
        }
         }
    

}
