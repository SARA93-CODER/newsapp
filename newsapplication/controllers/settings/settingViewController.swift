//
//  settingViewController.swift
//  newsapplication
//
//  Created by mac on 20/01/2023.
//

import UIKit

class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, NavigationDelegate{
    
    
    @IBOutlet weak var tableView: UITableView!
    var arrOptions = [SettingOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        arrOptions.append(SettingOption(title:"الرئيسية"))
        arrOptions.append(SettingOption(title:"الأقسام"))
        arrOptions.append(SettingOption(title:"فيديو"))
        arrOptions.append(SettingOption(title:"المحفوظات"))
        arrOptions.append(SettingOption(title:"عن العين الاخبارية"))
        
        
        //register the table view cell with a reuse identifier, so each tableView cell navigate us to it's corresponding VC:
                tableView.register(optionTableViewCell.self, forCellReuseIdentifier: "CELL")
        
            }
        
        
        //Implement the UITableViewDelegate method:
        func navigateToViewController(withIdentifier identifier: String) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: identifier)
            navigationController?.pushViewController(vc, animated: true)
        }
        
        
        
        
        
        
        //Implement the UITableViewDataSource methods:
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrOptions.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell", for: indexPath) as! optionTableViewCell
            
            
            let option = arrOptions[indexPath.row]
            //        cell.tag = indexPath.row
            cell.delegate = self
            
            cell.setupOption(title: option.title)
            return cell
        }
        
        
        
    }
    
    
    struct SettingOption {
        let title: String
    }

