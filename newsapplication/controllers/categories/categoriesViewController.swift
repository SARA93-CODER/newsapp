//
//  categoriesViewController.swift
//  newsapplication
//
//  Created by mac on 18/01/2023.
//

import UIKit

class categoriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    
    var delegateCategories: LabelSelectionDelegate?
    
    var arrNews = [News]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrNews.append(News(photo: UIImage(named: "culture")!, title: "ثقافة", favourite: UIImage(systemName: "star")!))
        arrNews.append(News(photo: UIImage(named: "sports")!, title: "رياضة", favourite: UIImage(systemName: "star")!))
        arrNews.append(News(photo: UIImage(named: "politics")!, title: "سياسة",favourite: UIImage(systemName: "star")!))
        arrNews.append(News(photo: UIImage(named: "spaceScience")!, title: "علوم و فضاء",favourite: UIImage(systemName: "star")!))
        arrNews.append(News(photo: UIImage(named: "celebrities")!, title: "فن",favourite: UIImage(systemName: "star")!))
        arrNews.append(News(photo: UIImage(named: "economy")!, title: "اقتصاد",favourite: UIImage(systemName: "star")!))
           }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrNews.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! categoryCollectionViewCell
        
        let news = arrNews[indexPath.row]
        
        cell.setupCell(photo: news.photo, title: news.title, favourite: news.favourite)
        return cell
    }
    
    //didicating the cell's width:
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.9, height:self.view.frame.width * 0.5)
    }
    
    
    
    //hirozental spacing between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.4
    }
    
    //vertical spacing between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    }

struct News {
    let photo : UIImage
    let title : String
    let favourite: UIImage
}
