
import UIKit

//use (protocol & delegate) method for navigation between view controllers:
protocol LabelTappedDelegate: AnyObject{
    func labelTapped(at index: Int)
}


class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, LabelTappedDelegate{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    weak var delegate: LabelTappedDelegate?
    
    
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
        
        
        return cell
    }
    
    //MARK: - TableView Delegate functions:
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        self.title = title
        delegate?.labelTapped(at: arrOptions[indexPath.row])
        
        
    }
    
    
    
    func labelTapped(at label: Int){
        let index = arrOptions[indexPath.row]
        switch index {
        case 0:
            let vc1 = storyboard?.instantiateViewController(withIdentifier: "home") as! homeViewController
            navigationController?.pushViewController(vc1, animated: true)

        case 1:
            let vc2 = storyboard?.instantiateViewController(withIdentifier: "shahidVC") as! shahidVC
            navigationController?.pushViewController(vc2, animated: true)

        case 2:
            let vc3 = storyboard?.instantiateViewController(withIdentifier: "categories") as! categoriesViewController
            navigationController?.pushViewController(vc3, animated: true)

        case 3:
            let vc4 = UIStoryboard(name: "settings", bundle: nil).instantiateViewController(withIdentifier: "savedViewController") as! savedViewController
            navigationController?.pushViewController(vc4, animated: true)

        case 4:
            let vc5 = UIStoryboard(name: "settings", bundle: nil).instantiateViewController(withIdentifier: "pagesViewController") as! pagesViewController
            navigationController?.pushViewController(vc5, animated: true)

        case 5:
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
