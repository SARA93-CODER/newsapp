//
//  latestNewsVC.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

protocol LatestCellDelegate{
   func labelSelected (at index: Int)
    
}

class latestNewsVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, LatestCellDelegate{
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var delegate: LatestCellDelegate?
    
    var arrLatestNews = [Info]()
   
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
        
            return arrLatestNews.count
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! latestTableViewCell
        
        let info = arrLatestNews[indexPath.row]
        
            cell.setupCell(image: info.image, title: info.title, shareTo: info.image, save: info.image)
        cell.labelDelegate = self
       
        return cell
    }
    
    //MARK: - TableView delegate functions:
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.labelSelected(at: indexPath.row)
    }
    
    func labelSelected(at index: Int) {
//        let index = arrLatestNews[indexPath.row]
        switch index {
        case 0:
            let vc1 = storyboard?.instantiateViewController(withIdentifier: "latest1VC") as! latest1VC
            vc1.delegate1 = self
            navigationController?.pushViewController(vc1, animated: true)
            
        case 1:
            let vc2 = storyboard?.instantiateViewController(withIdentifier: "latest2VC") as! latest2VC
            vc2.delegate2 = self
            navigationController?.pushViewController(vc2, animated: true)
        case 2:
            let vc3 = storyboard?.instantiateViewController(withIdentifier: "latest3VC") as! latest3VC
            vc3.delegate3 = self
            navigationController?.pushViewController(vc3, animated: true)
        case 3:
            let vc4 = storyboard?.instantiateViewController(withIdentifier: "latest2VC") as! latest4VC
            vc4.delegate4 = self
            navigationController?.pushViewController(vc4, animated: true)
            
        default:
            break
        }
    }
    
   
    
    //MARK: - Search bar delegate functions:
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        latestSearch = arrLatestNews.filter({$0.title.lowercased().hasPrefix(searchText.lowercased()) == searchText})
       
    }

}

struct Info {
    let image: UIImage
    let title: String
    let shareBtn: UIButton
    let saveBtn: UIButton
}
