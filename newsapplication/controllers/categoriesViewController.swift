//
//  categoriesViewController.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit

class categoriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrNews = [News]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrNews.append(News(photo: UIImage(named: "culture")!, title: "ثقافة"))
        arrNews.append(News(photo: UIImage(named: "sports")!, title: "رياضة"))
        arrNews.append(News(photo: UIImage(named: "politics")!, title: "سياسة"))
        arrNews.append(News(photo: UIImage(named: "space science")!, title: "علوم و فضاء"))
        arrNews.append(News(photo: UIImage(named: "celebrities")!, title: "فن"))
        arrNews.append(News(photo: UIImage(named: "economy")!, title: "اقتصاد"))
           }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrNews.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! categoryCollectionViewCell
        
        let news = arrNews[indexPath.row]
        
        cell.setupCell(photo: news.photo, title: news.title)
        return cell
    }

    }

struct News {
    let photo : UIImage
    let title : String
}
