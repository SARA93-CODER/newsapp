//
//  todayVC.swift
//  newsapplication
//
//  Created by mac on 24/01/2023.
//

import UIKit



class todayVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITableViewDelegate, UITableViewDataSource{
    
//     var delegate1: ShareButtonDelegate?
//     var delegate2: SaveButtonDelegate?

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    

    @IBOutlet weak var pageControl: UIPageControl!
    
    //collectionView:
    var arrTodaysNews = [Data]()
    
    //tableView:
    var arrItems = [Item]()
    var arrSections = ["صحة", "علوم", "تكنولوجيا"]
    

    var currentCellIndex = 0
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        //to move to next post automatically:
        startTimer()
        
        //pageControl configuration:
        pageControl.numberOfPages = arrTodaysNews.count
        self.pageControl.currentPage = 0
                self.pageControl.tintColor = UIColor.black
        self.pageControl.pageIndicatorTintColor = UIColor.lightGray // UIColor.gray
                self.pageControl.currentPageIndicatorTintColor = UIColor.green
        

        
//        tableView.register(todayTableViewCell.self, forCellReuseIdentifier: "todayTableViewCell")
        
        //tableView's components:
        arrItems.append(Item(image: UIImage(named: "today-tech")!, title: "ما التقنيات التي ستغزو حياتنا في عام 2023؟", save: UIButton(primaryAction: .none), share: UIButton(primaryAction: .none)))
        
        arrItems.append(Item(image: UIImage(named: "today-sci")!, title: "التلوّث الضوئي يتزايد بوتيرة سريعة", save: UIButton(primaryAction: .none), share: UIButton(primaryAction: .none)))
        
        arrItems.append(Item(image: UIImage(named: "today-health")!, title: "جراحة تكميم المعدة: متى ينصح الطب بإجراء جراحة السمنة؟ وما فوائدها ومخاطرها؟", save: UIButton(primaryAction: .none), share: UIButton(primaryAction: .none)))
        
        
        
        //collectionView's components:
        arrTodaysNews.append(Data(image: UIImage(named: "today-sci")!, title: "التلوّث الضوئي يتزايد بوتيرة سريعة"))
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-health")!, title: "جراحة تكميم المعدة: متى ينصح الطب بإجراء جراحة السمنة؟ وما فوائدها ومخاطرها؟"))
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-tech")!, title: "ما التقنيات التي ستغزو حياتنا في عام 2023؟"))
        
        arrTodaysNews.append(Data(image: UIImage(named: "today-env")!, title: "إسبانيا تجبر شركات التبغ على تحمل تكاليف تنظيف أعقاب السجائر"))
        
        
    }
    
    
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }


    @objc func moveToNextIndex(){
        
        if currentCellIndex < arrItems.count - 1{
            currentCellIndex += 1
        }else{
            currentCellIndex = 0
        }
        collectionView.scrollToItem(at:IndexPath(item: currentCellIndex, section:0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = currentCellIndex
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.99, height: collectionView.frame.width * 0.65)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    //MARK: - tableView Data source functions:
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrSections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! todayTableViewCell
        
        let item = arrItems[indexPath.row]
        cell.setupCell(image: item.image, title: item.title, shareTo: item.share, save: item.save)
        
        // let each cell conforms to the share & save delegation protocols:
//        cell.shareDelegate = self
//        cell.saveDelegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrSections[section]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
        
    }
    
    
    //MARK: - tableView Delegation methods:
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        delegate1?.didTapShare(at: indexPath)
//        delegate2?.didTapSave(at: indexPath)
//    }
    
    
//    func didTapSave(at index: IndexPath) {
//        print("this item has tapped!")
//    }
//
//    func didTapShare(at index: IndexPath) {
//        print("this item has shared!")
//    }
    
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
