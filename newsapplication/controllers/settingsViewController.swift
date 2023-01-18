
import UIKit

class settingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    var arrOptions = [SettingOption]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        
        arrOptions.append(SettingOption(title: "عن العين الاخبارية"))
    }
    
    
    
    
    @IBAction func btnAboutUI(_ sender: Any) {
        let aboutUI = self.storyboard?.instantiateViewController(withIdentifier: "about")
        navigationController?.pushViewController(aboutUI!, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOptions.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingOption", for: indexPath) as! settingTableViewCell
        let option = arrOptions[indexPath.row]
        
        cell.setupOption(title: option.title)
        return cell
    }

}

struct SettingOption{
    let title : String
}
