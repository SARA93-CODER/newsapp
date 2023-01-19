
import UIKit

class settingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{


    var arrOptions = [SettingOption]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

var arrOptions = [SettingOption]()
        
        tableView.delegate = self
        tableView.dataSource = self

        arrOptions.append(SettingOption(title:"الرئيسية"))
        arrOptions.append(SettingOption(title:"الأقسام"))
        arrOptions.append(SettingOption(title:"فيديو"))
        arrOptions.append(SettingOption(title:"المحفوظات"))
        arrOptions.append(SettingOption(title:"عن العين الاخبارية"))
    }




//    @IBAction func btnAboutUI(_ sender: Any) {
//        let aboutUI = self.storyboard?.instantiateViewController(withIdentifier: "about")
//        navigationController?.pushViewController(aboutUI!, animated: true)
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOptions.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as! settingTableViewCell
        let option = arrOptions[indexPath.row]

        cell.setupOptionCell(title: option.title)
        return cell
    }

}

struct SettingOption{
    let title : String
}
