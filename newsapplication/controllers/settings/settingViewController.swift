
import UIKit

//use (protocol & delegate) method for navigation between view controllers:
protocol LabelSelectionDelegate: AnyObject{
    func didTapLabel(at index: Int)
}


class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, LabelSelectionDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    weak var delegate: LabelSelectionDelegate?
    
    
    var arrOptions = [Option]()
        let storyboards = ["Main", "settings", "homePage"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
//        tableView.register(optionTableViewCell.self, forCellReuseIdentifier: "optionCell")
        
        
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
        
        cell.labelDelegate = self
    
        return cell
    }
    
    //MARK: - TableView Delegate functions:
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {

        delegate?.didTapLabel(at: indexPath.row)
        
    }
    
    
    func didTapLabel(at index: Int) {
//        let index == arrOptions[indexPath]
        switch index {
        case 0:
            let vc1 = storyboard?.instantiateViewController(withIdentifier: "home") as! homeViewController
            vc1.delegateHome = self
            vc1.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc1, animated: true)

        case 1:
            let vc2 = storyboard?.instantiateViewController(withIdentifier: "shahidVC") as! shahidVC
            vc2.delegateShahid = self
            vc2.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc2, animated: true)

        case 2:
            let vc3 = storyboard?.instantiateViewController(withIdentifier: "categories") as! categoriesViewController
            
            vc3.delegateCategories = self
            vc3.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc3, animated: true)

        case 3:
            let vc4 = UIStoryboard(name: "settings", bundle: nil).instantiateViewController(withIdentifier: "savedViewController") as! savedViewController
            
            vc4.delegateSaved = self
            vc4.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc4, animated: true)

        case 4:
            let vc5 = UIStoryboard(name: "settings", bundle: nil).instantiateViewController(withIdentifier: "pagesViewController") as! pagesViewController
            vc5.delegatePages = self
            vc5.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc5, animated: true)

        case 5:
            let vc6 = UIStoryboard(name: "settings", bundle: nil).instantiateViewController(withIdentifier: "aboutVC") as! aboutVC
            vc6.delegateAbout = self
            vc6.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc6, animated: true)

        default:
            break
        }
    }
}

    struct Option{
        let title: String
    }
