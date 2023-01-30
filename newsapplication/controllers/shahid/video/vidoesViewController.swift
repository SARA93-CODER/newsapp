//
//  vidoesViewController.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit


class vidoesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrVideos = [VidNews]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        tableView.delegate = self
        tableView.dataSource = self
        
        arrVideos.append(VidNews(photo: UIImage(named: "politics1")!, title: "هاري يدمر نفسه.. يتباهى بقتل مسلحين من طالبان وعسكريون يوبخونه"))
        
        arrVideos.append(VidNews(photo: UIImage(named: "economy1")!, title: "بشعار لا شيء مستحيل.. الإمارات في منتدى دافوس العالمي 2023"))
        
        arrVideos.append(VidNews(photo: UIImage(named: "sports1")!, title: "تركي آل الشيخ يبدأ المزاد.. تذكرة بمليون ريال لمقابلة ميسي ورونالدو" ))
        
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! videoTableViewCell
        let vCell = arrVideos[indexPath.row]
        cell.customInit(photo: vCell.photo, title: vCell.title)
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrVideos.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    

}

struct VidNews{
    let photo : UIImage
    let title : String
}
