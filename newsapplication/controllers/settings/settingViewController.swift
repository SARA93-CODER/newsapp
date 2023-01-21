//
//  settingViewController.swift
//  newsapplication
//
//  Created by mac on 20/01/2023.
//

import UIKit

class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var arrOptions: [String] = ["الرئيسية", "الأقسام", "فيديو", "عن العين الاخبارية"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
//        arrOptions.append(SettingOption(title:"الرئيسية"))
//        arrOptions.append(SettingOption(title:"الأقسام"))
//        arrOptions.append(SettingOption(title:"فيديو"))
//        arrOptions.append(SettingOption(title:"المحفوظات"))
//        arrOptions.append(SettingOption(title:"عن العين الاخبارية"))
    }
    
    
//MARK: - TableView DataSource functions:
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            arrOptions.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell", for: indexPath) as! optionTableViewCell
            
            let option = arrOptions[indexPath.row]
            cell.lblOptionSetting.text = arrOptions[indexPath.row]
//            cell.setupOption(title: option.title)
            
            return cell
        }
    
//MARK: - TableView Delegate functions:
    //making each cell in tableView navigatable to it's corresponding UI.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let aboutVC = storyboard?.instantiateViewController(withIdentifier: "aboutVC") as! aboutVC
        
        aboutVC.detailText = arrOptions[indexPath.row]
        
        navigationController?.pushViewController(aboutVC, animated: true)
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
        
    
    
}
    
    
//    struct SettingOption {
//        let title: String
//    }

