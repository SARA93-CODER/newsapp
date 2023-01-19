//
//  vidoesViewController.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit
import RealmSwift

class vidoesViewController: UIViewController{
    
    let realm = try!Realm()
    var arrvidoe = [String]()
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.delegate = self
//        tableView.dataSource = self
        
    }
    
//    @IBAction func customSegmentedControll(_ sender: UISegmentedControl) {
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return arrvidoe.count
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return nil
//    }

}
