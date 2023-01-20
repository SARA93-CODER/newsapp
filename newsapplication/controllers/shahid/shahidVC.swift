//
//  shahidVC.swift
//  newsapplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class shahidVC: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    //intializing two view controllers globally
//        let videoVC = vidoesViewController()
//        let pictureVC = pictureViewController()
    
    var firstVC: vidoesViewController?
    var secondVC: pictureViewController?
    
    @IBOutlet weak var segmentChanged: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstVC = (storyboard?.instantiateViewController(withIdentifier: "video") as! vidoesViewController)
        secondVC = (storyboard?.instantiateViewController(withIdentifier: "picture") as! pictureViewController)
           addChild(firstVC!)
           addChild(secondVC!)
        
        let currentViewController = firstVC
        addChild(currentViewController!)

    }
    
    
    //    private func setup() {
    //
    //        addChild(videoVC)
    //        addChild(pictureVC)
    //
    //                //combine two child VCs to the parent one(shahidVC)
    //                self.view.addSubview(videoVC.view)
    //                self.view.addSubview(pictureVC.view)
    //
    //                //Notify the sub view controller that it has been added to the container
    //                videoVC.didMove(toParent: self)
    //                pictureVC.didMove(toParent: self)
    //
    //                //setting frames for each of the sub view controllers
    //                videoVC.view.frame = self.view.bounds
    //                pictureVC.view.frame = self.view.bounds
    //
    //                //hidding pictureVC at the begining
    //             pictureVC.view.isHidden = true
    //
    //
    //
    //    }
    
    
    @IBAction func segmentDidChanges(_ sender: UISegmentedControl) {
    
        
        switch sender.selectedSegmentIndex {
            case 0:
            secondVC?.view.removeFromSuperview()
                secondVC?.removeFromParent()
                firstVC?.view.frame = containerView.bounds
                containerView.addSubview(firstVC!.view)
                firstVC?.didMove(toParent: self)
            
            case 1:
            firstVC?.view.removeFromSuperview()
                firstVC?.removeFromParent()
                secondVC?.view.frame = containerView.bounds
                containerView.addSubview(secondVC!.view)
                secondVC?.didMove(toParent: self)
            default:
                break
            }
        
    }
    
    
    
}
