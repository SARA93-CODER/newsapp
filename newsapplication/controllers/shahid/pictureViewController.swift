//
//  pictureViewController.swift
//  newsapplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class pictureViewController: UIViewController, UITableViewDataSource{
    

    @IBOutlet weak var picTableView: UITableView!
    
    var arrPictures = [PictureInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     

//        picTableView.delegate = self
        picTableView.dataSource = self
        
        arrPictures.append(PictureInfo(title: "أجمل المدن السياحية في البرازيل.. 5 ألوان في عملاق أمريكا اللاتينية", photo: UIImage(named: "tourism")!))
        
        arrPictures.append(PictureInfo(title: "5 آلاف كاثوليكي يحجون إلى نهر تعمّد فيه المسيح بالأردن ", photo: UIImage(named: "religion")!))
        
        arrPictures.append(PictureInfo(title: "لأول مرة.. العثور على بقايا 4 أنواع من الديناصورات في تشيلي", photo: UIImage(named: "dinasors")!))
    }
    

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pictureCell", for: indexPath) as! pictureTableViewCell
        
        let Info = arrPictures[indexPath.row]
        cell.initCell(photo: Info.photo, title: Info.title)
        return cell
    }
    
    
    

}


struct PictureInfo{
    let title: String
    let photo: UIImage
//    let save: UIButton
}
