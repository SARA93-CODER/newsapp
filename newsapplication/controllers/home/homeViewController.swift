//
//  homeViewController.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit

//Create view controller for the search results:
class ResultVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
    }
}

class homeViewController: UIViewController, UISearchBarDelegate, UISearchResultsUpdating{
    
    
    //to confor the protocol method:
    var delegateHome: LabelSelectionDelegate?
   

    @IBOutlet weak var latestNews: UIView!
    @IBOutlet weak var segmentControll: UISegmentedControl!
    
    @IBOutlet weak var todayNews: UIView!
    
    let searchController = UISearchController(searchResultsController: ResultVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //searchController configuration:
        searchController.searchBar.delegate = self
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController

      
        
        UIView.animate(withDuration: 0, delay: 0) {
            //display latestNews UI at beginning using alpha attribute
            self.latestNews.alpha = 1
            self.todayNews.alpha = 0
        }
    }
    
    
    

    
    //MARK: - searchBar delegate functions:
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        let vc = searchController.searchResultsController as? ResultVC
        vc?.view.backgroundColor = .white
        
        print(text)
    }
    
    
    
    //MARK: - segmentedControl functionality:
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


