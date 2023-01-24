//
//  homeViewController.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var latestNews: UIView!
    @IBOutlet weak var segmentControll: UISegmentedControl!
    
    @IBOutlet weak var todayNews: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIView.animate(withDuration: 0, delay: 0) {
//display latestNews UI at beginning using alpha attribute
            self.latestNews.alpha = 1
            self.todayNews.alpha = 0
        }
        
        
    }
    
    @IBAction func segmentDidChanged(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
 case 0:
     UIView.animate(withDuration: 0.5, delay: 0) {
         self.latestNews.alpha = 1
         self.todayNews.alpha = 0
     }
 case 1:
     UIView.animate(withDuration: 0.5, delay: 0) {
         self.latestNews.alpha = 0
         self.todayNews.alpha = 1
     }
 default:
     break
 }
    }
    
    


    
  
     

}
