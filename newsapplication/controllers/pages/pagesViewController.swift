//
//  pagesViewController.swift
//  newsapplication
//
//  Created by mac on 23/01/2023.
//

import UIKit

class pagesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var delegatePages: LabelSelectionDelegate?
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrPages = [Cell]()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        arrPages.append(Cell(title: "علوم وتكنولوجيا"))
        arrPages.append(Cell(title: "عالم السيارات"))
        arrPages.append(Cell(title: "كرةإيطالية"))
        arrPages.append(Cell(title: "فكر"))
        arrPages.append(Cell(title: "مقالات رمضانية"))
        arrPages.append(Cell(title: "برامجنا"))
        arrPages.append(Cell(title: "فن و دراما"))
        arrPages.append(Cell(title: "جريمة"))
        arrPages.append(Cell(title: "عالم الطب"))
        arrPages.append(Cell(title: "مطبخ رمضان"))
        arrPages.append(Cell(title: "اختبر معلوماتك"))
        arrPages.append(Cell(title: "كافيه"))
                        
                        
    }
    

    
    //MARK: - table view data source functions:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pageTableViewCell") as! pageTableViewCell
        let page = arrPages[indexPath.row]
        cell.initCell(title: page.title)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
        
    }
    
}
struct Cell{
    let title: String
}
