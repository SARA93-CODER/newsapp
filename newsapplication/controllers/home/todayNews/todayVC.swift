//
//  todayVC.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

class todayVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource{
    

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    //collectionView:
    var arrTodaysNews = [Data]()
    
    //tableView:
    var arrItems = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //tableView's components:
        arrItems.append(Item(image: UIImage(named: "today-tech")!, title: "ما التقنيات التي ستغزو حياتنا في عام 2023؟", save: UIButton(primaryAction: .none), share: UIButton(primaryAction: .none)))
        
        arrItems.append(Item(image: UIImage(named: "today-sci")!, title: "التلوّث الضوئي يتزايد بوتيرة سريعة", save: UIButton(primaryAction: .none), share: UIButton(primaryAction: .none)))
        
        arrItems.append(Item(image: UIImage(named: "today-health")!, title: "جراحة تكميم المعدة: متى ينصح الطب بإجراء جراحة السمنة؟ وما فوائدها ومخاطرها؟", save: UIButton(primaryAction: .none), share: UIButton(primaryAction: .none)))
        
        
        
        //collectionView's components:
        arrTodaysNews.append(Data(image: UIImage(named: "today-sci")!, title: "التلوّث الضوئي يتزايد بوتيرة سريعة"))
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-health")!, title: "جراحة تكميم المعدة: متى ينصح الطب بإجراء جراحة السمنة؟ وما فوائدها ومخاطرها؟"))
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-tech")!, title: "ما التقنيات التي ستغزو حياتنا في عام 2023؟"))
        
//        arrTodaysNews.append(Data(image: UIImage(named: "today-env")!, title: "إسبانيا تجبر شركات التبغ على تحمل تكاليف تنظيف أعقاب السجائر"))
        
        
    }
    

    //MARK: - collectionView Data source functions:
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrTodaysNews.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! todayNewsCell
        let data = arrTodaysNews[indexPath.row]
        cell.setupCell(image: data.image, title: data.title)
        
        return cell
    }
    
    //MARK: - tableView Data source functions:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! todayTableViewCell
        
        let item = arrItems[indexPath.row]
        cell.setupCell(image: item.image, title: item.title, shareTo: item.share, save: item.save)
        
        return cell
    }
    
}






//Initialize collectionView Cell:
struct Data {
    let image: UIImage
    let title: String
}

//Initialize tableView Cell:
struct Item{
    let image: UIImage
    let title: String
    let save: UIButton
    let share: UIButton
}
