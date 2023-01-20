//
//  settingViewController.swift
//  newsapplication
//
//  Created by mac on 20/01/2023.
//

import UIKit

class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrOptions = [SettingOption]()

    override func viewDidLoad() {
        super.viewDidLoad()

        arrOptions.append(SettingOption(title:"الرئيسية"))
        arrOptions.append(SettingOption(title:"الأقسام"))
        arrOptions.append(SettingOption(title:"فيديو"))
        arrOptions.append(SettingOption(title:"المحفوظات"))
        arrOptions.append(SettingOption(title:"عن العين الاخبارية"))

    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell", for: indexPath) as! optionTableViewCell
        
        let option = arrOptions[indexPath.row]
        
        cell.setupOption(title: option.title)
        return cell
    }

}


struct SettingOption {
   let title: String
}
