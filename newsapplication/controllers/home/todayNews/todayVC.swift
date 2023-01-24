//
//  todayVC.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

class todayVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrTodaysNews = [Data]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-sci")!, title: "التلوّث الضوئي يتزايد بوتيرة سريعة"))
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-health")!, title: "جراحة تكميم المعدة: متى ينصح الطب بإجراء جراحة السمنة؟ وما فوائدها ومخاطرها؟"))
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-tech")!, title: "ما التقنيات التي ستغزو حياتنا في عام 2023؟"))
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-env")!, title: "إسبانيا تجبر شركات التبغ على تحمل تكاليف تنظيف أعقاب السجائر"))
    }
    

    //MARK: - collectionView Data source functions:
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrTodaysNews.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! todayNewsCell
        let data = arrTodaysNews[indexPath.row]
        cell.setupCell(image: data.image, title: data.title)
        
        return cell
    }
}


struct Data {
    let image: UIImage
    let title: String
}
