//
//  DetailViewController.swift
//  TestApp2
//
//  Created by human2020 on 2021/08/02.
//  Copyright © 2021 human2020. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{

   
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var cameraTabBar: UITabBar!
    @IBOutlet weak var cameraTab: UITabBarItem!
    @IBOutlet weak var gallaryTab: UITabBarItem!
    
    var imageData: [String] = [String]()
    var imageCounter: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageData = ["Barcode"]
        cameraTabBar.selectedItem = gallaryTab
        setUPCollectionView()
        
        // Do any additional setup after loading the view.
    let url = "https://run.mocky.io/v3/4e23865c-b464-4259-83a3-061aaee400ba"
    
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    private func setUPCollectionView(){
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        collectionView.setCollectionViewLayout(layout, animated: true)
        
    }
}

extension DetailViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! MyImageCell
        cell.backgroundColor = UIColor.black
        var currImage:String = ""
        currImage = self.imageData[self.imageCounter]
        self.imageCounter += 1
        if self.imageCounter >= self.imageData.count {
        self.imageCounter = 0
        }
        cell.image.image = UIImage(named: currImage)
        return cell
    }

}

extension DetailViewController: UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1.0, left: 8.0, bottom: 1.0, right: 8.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width/2 - lay.minimumInteritemSpacing
        return CGSize(width: widthPerItem - 8, height: 250)
    }
}

extension CGFloat {
    static func randomValue() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

