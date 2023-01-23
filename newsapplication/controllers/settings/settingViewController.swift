
import UIKit

//use (protocol & delegate) method for navigation between view controllers:
protocol LabelDelegate {
    func labelTapped(data: Any)
}



class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, LabelDelegate{
   
    
    
    var delegate: LabelDelegate?
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var arrOptions = [Option]()
//    let storyboards = ["Main", "settings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        //register the cell
//        tableView.register( UINib.self, forCellReuseIdentifier: "optionCell")
        
        
        arrOptions.append(Option(title: "الرئيسية"))
        arrOptions.append(Option(title: "الأقسام"))
        arrOptions.append(Option(title: "فيديو"))
        arrOptions.append(Option(title: "المحفوظات"))
        arrOptions.append(Option(title: "صفحات"))
        arrOptions.append(Option(title: "عن العين الاخبارية"))
    }
    
    
//MARK: - TableView DataSource functions:
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            arrOptions.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell", for: indexPath) as! optionTableViewCell
            
            let settingCell = arrOptions[indexPath.row]
            cell.initCell(title: settingCell.title)
            
            //use optionCell delegate property to conform the protocol:
            cell.labelDelagate? = self
           
            
            return cell
        }
    
//MARK: - TableView Delegate functions:
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
        
    
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        
        let selectedLabel = arrOptions[indexPath.row]
        delegate?.labelTapped(data: selectedLabel)
    }
    
    
    func labelTapped(data: Any) {

        let vc = storyboard?.instantiateViewController(withIdentifier: "aboutVC") as! aboutVC

        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
    
struct Option{
    let title: String
}
    
