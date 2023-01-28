//
//  sportsVC.swift
//  newsapplication
//
//  Created by mac on 27/01/2023.
//

import UIKit

class sportsVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    var arrElements = [element]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        arrElements.append(element(photo: UIImage(named: "cat-sports1")!, title: "بظهور خاص لمحمد صلاح.. ليفربول يتقدم في الكأس بأول انتصارات 2023", share: UIButton(), save: UIButton()))
        
        arrElements.append(element(photo: UIImage(named: "cat-sports2")!, title: "بهدف معتاد.. الجزائر أول المتأهلين لربع نهائي أمم أفريقيا للمحليين", share: UIButton(), save: UIButton()))
        
        arrElements.append(element(photo: UIImage(named: "cat-sports3")!, title: "مصر تزين بطاقة التأهل باكتساح أمريكا في بطولة العالم لكرة اليد", share: UIButton(), save: UIButton()))
        
        arrElements.append(element(photo: UIImage(named: "cat-sports4")!, title: "أنس جابر تفسر.. لماذا عانت في مستهل مشوار أستراليا المفتوحة؟", share: UIButton(), save: UIButton()))
        
        arrElements.append(element(photo: UIImage(named: "cat-sports5")!, title: "بعد أزمته الأخلاقية.. عدو زيدان يخرج عن صمته", share: UIButton(), save: UIButton()))
        
    }
    
    
    //MARK: - table view dataSource functions:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrElements.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sportsCell", for: indexPath) as! sportsTableViewCell
        let item = arrElements[indexPath.row]
        
        cell.setupCell(photo: item.photo, title: item.title, save: item.save, share: item.share)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
struct element{
    let photo: UIImage
    let title: String
    let share: UIButton
    let save: UIButton
}

