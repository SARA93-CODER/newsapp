
import UIKit

class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var arrOptions = [SettingOption]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
//        tableView.register(optionTableViewCell.self, forCellReuseIdentifier: "optionCell")
        
        arrOptions.append(SettingOption(title:"الرئيسية"))
        arrOptions.append(SettingOption(title:"الأقسام"))
        arrOptions.append(SettingOption(title:"فيديو"))
        arrOptions.append(SettingOption(title:"المحفوظات"))
        arrOptions.append(SettingOption(title:"عن العين الاخبارية"))
    }
    
    
//MARK: - TableView DataSource functions:
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            arrOptions.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell", for: indexPath) as! optionTableViewCell
            
            let option = arrOptions[indexPath.row]
            cell.setupOption(title: option.title)
           
            return cell
        }
    
//MARK: - TableView Delegate functions:
    
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
        
    
    
}
    
    
    struct SettingOption {
        let title: String
    }

