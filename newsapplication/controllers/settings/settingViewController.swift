
import UIKit



class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var arrOptions: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        arrOptions.append("الرئيسية")
        arrOptions.append("الأقسام")
        arrOptions.append("فيديو")
        arrOptions.append("المحفوظات")
        arrOptions.append("عن العين الاخبارية")
    }
    
    
//MARK: - TableView DataSource functions:
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            arrOptions.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell", for: indexPath) as! optionTableViewCell
            
            cell.lblOption?.text = arrOptions[indexPath.row]
           
           
            
           
           
            return cell
        }
    
//MARK: - TableView Delegate functions:
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
        
    
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let vc = storyboard?.instantiateViewController(withIdentifier: "aboutVC") as! aboutVC
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
       
    
    
    
}
    
    
    
