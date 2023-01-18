//
//  categoriesViewController.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit

class categoriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrNews = [News]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrNews.append(News(photo: UIImage(named: "culture")!, title: "ثقافة"))
        arrNews.append(News(photo: UIImage(named: "sports")!, title: "رياضة"))
        arrNews.append(News(photo: UIImage(named: "politics")!, title: "سياسة"))
        //arrNews.append(News(photo: UIImage(named: "science")!, title: "علوم و فضاء"))
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
    
    //didicating the cell's width and hight
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.4, height:self.view.frame.width * 0.4)
    }
    
    //hirozental spacing between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.2
    }
    
    //vertical spacing between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    }

struct News {
    let photo : UIImage
    let title : String
}
