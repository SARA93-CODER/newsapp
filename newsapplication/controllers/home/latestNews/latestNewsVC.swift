//
//  latestNewsVC.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

class latestNewsVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrLatestNews = [Info]()
    //for searching:
    var latestSearch = [Info]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        
        arrLatestNews.append(Info(image: UIImage(named: "latest-politics")!, title: "تركيا.. أردوغان يرد على `طاولة الستة` بإجراء الانتخابات قبل موعدها", shareBtn: UIButton(primaryAction: .none), saveBtn: UIButton(primaryAction: .none)))
        
        arrLatestNews.append(Info(image: UIImage(named: "latest-economy")!, title: "للعام الخامس على التوالي.. `أدنوك` العلامة التجارية الأولى في الإمارات", shareBtn: UIButton(primaryAction: .none), saveBtn: UIButton(primaryAction: .none)))
        
        arrLatestNews.append(Info(image: UIImage(named: "latest-sports")!, title: "بسبب كأس العالم للأندية.. الوداد المغربي يحرم نجمه من العودة لأوروبا", shareBtn: UIButton(primaryAction: .none), saveBtn: UIButton(primaryAction: .none)))
        
        arrLatestNews.append(Info(image: UIImage(named: "latest-culture")!, title: "معرض جدة للكتاب.. 900 دار نشر و400 جناح معرفي", shareBtn: UIButton(primaryAction: .none), saveBtn: UIButton(primaryAction: .none)))
    }
    

  //MARK: - tableView Data source functions:
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searching {
            return latestSearch.count
        }else{
            return arrLatestNews.count
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! latestTableViewCell
        
        let info = arrLatestNews[indexPath.row]
        
        if searching {
            cell.setupCell(image: latestSearch[indexPath.row].image, title: latestSearch[indexPath.row].title, shareTo: latestSearch[indexPath.row].image, save: latestSearch[indexPath.row].image)
        }else {
            cell.setupCell(image: info.image, title: info.title, shareTo: info.image, save: info.image)
        }
        return cell
    }
    
   
    
    //MARK: - Search bar delegate functions:
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        latestSearch = arrLatestNews.filter({$0.title.lowercased().hasPrefix(searchText.lowercased()) == searchText})
        searching = true
        tableView.reloadData()
    }

}

struct Info{
    let image: UIImage
    let title: String
    let shareBtn: UIButton
    let saveBtn: UIButton
}
