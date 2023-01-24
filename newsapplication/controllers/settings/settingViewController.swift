
import UIKit

//use (protocol & delegate) method for navigation between view controllers:
protocol LabelTappedDelegate {
    func labelTapped(label: UILabel)
}


class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, LabelTappedDelegate{
   
    
    @IBOutlet weak var tableView: UITableView!
    
    var delegate: LabelTappedDelegate?
    
    
    var arrOptions = [Option]()
        let storyboards = ["Main", "settings", "homePage"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        arrOptions.append(Option(title: "الرئيسية"))
        arrOptions.append(Option(title: "الأقسام"))
        arrOptions.append(Option(title: "شاهد"))
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
        
        let label = arrOptions[indexPath.row]
        cell.initCell(title: label.title)
        
        //make each cell conforms the protocol:
            cell.labelDelegate = self
        
        return cell
    }
    
    //MARK: - TableView Delegate functions:
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        let LABEL = arrOptions[indexPath.row]
        delegate?.labelTapped(label: LABEL)
        
        
    }
    
    
    
    func labelTapped(label: UILabel){
        let label = arrOptions[indexPath.row]
        switch label{
        case "الرئيسية":
            let vc1 = storyboard?.instantiateViewController(withIdentifier: "home") as! homeViewController
            navigationController?.pushViewController(vc1, animated: true)
            
        case "الأقسام":
            let vc2 = storyboard?.instantiateViewController(withIdentifier: "shahidVC") as! shahidVC
            navigationController?.pushViewController(vc2, animated: true)
            
        case "شاهد":
            let vc3 = storyboard?.instantiateViewController(withIdentifier: "categories") as! categoriesViewController
            navigationController?.pushViewController(vc3, animated: true)
            
        case "المحفوظات":
            let vc4 = UIStoryboard(name: "settings", bundle: nil).instantiateViewController(withIdentifier: "savedViewController") as! savedViewController
            navigationController?.pushViewController(vc4, animated: true)
            
        case "صفحات":
            let vc5 = UIStoryboard(name: "settings", bundle: nil).instantiateViewController(withIdentifier: "pagesViewController") as! pagesViewController
            navigationController?.pushViewController(vc5, animated: true)
            
        case "عن العين الاخبارية":
            let vc6 = UIStoryboard(name: "settings", bundle: nil).instantiateViewController(withIdentifier: "aboutVC") as! aboutVC
            navigationController?.pushViewController(vc6, animated: true)
            
        default:
            break
        }
    }
  
}

    struct Option{
        let title: String
    }
