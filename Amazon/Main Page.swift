//
//  Main Page.swift
//  Amazon
//
//  Created by R86 on 13/04/23.
//

import UIKit

class Home_page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backPackImage: UIImageView!
    @IBOutlet weak var braslateImage: UIImageView!
    @IBOutlet weak var gymBageImage: UIImageView!
    @IBOutlet weak var watchImage: UIImageView!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    
    var arrForImage1 = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    var arrForAddImages = [18]
    var arrForHeadings = ["Deals","Electronics","Mobiles","Travel","miniTV","Home","Beauties","Furnitures","Pharmacy","Movies","Books,Toys","Appliances","Grocery"]
    var arrFor2ngAdd = ["Amazon Pay","Scan any QR","Pay Bills","Send Money","Keep shopping for",""]
    var arrForImage2ndAdd = [UIImage(named: "21") ,UIImage(systemName: "qrcode"),UIImage(systemName: "newspaper.fill"),UIImage(systemName: "indianrupeesign.square"),UIImage(named: "22"),UIImage(named: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        backPackImage.backgroundColor = UIColor.white
        backPackImage.layer.cornerRadius = 11
        backPackImage.layer.masksToBounds = true
        braslateImage.backgroundColor = UIColor.white
        braslateImage.layer.cornerRadius = 11
        braslateImage.layer.masksToBounds = true
        gymBageImage.backgroundColor = UIColor.white
        gymBageImage.layer.cornerRadius = 11
        gymBageImage.layer.masksToBounds = true
        watchImage.layer.cornerRadius = 11
        watchImage.backgroundColor = UIColor.white
        watchImage.layer.masksToBounds = true
        lable.layer.cornerRadius = 11
        lable.layer.masksToBounds = true
        searchButton.layer.cornerRadius = 11
        searchButton.layer.masksToBounds = true
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1 {
            return arrForImage1.count
        }
        else if collectionView == self.collectionView2 {
            return arrForAddImages.count
        }
        else {
            return arrFor2ngAdd.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1 {
            let cell1 = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCellForTopHeaders
          
           
            cell1.image1.image = UIImage(named: "\(arrForImage1[indexPath.row])")
            cell1.lable1.text = arrForHeadings[indexPath.row]
            return cell1
        }
        
        else if collectionView == self.collectionView2{
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCellForMidAdvertise
            cell2.backgroundColor = UIColor.white
            cell2.imageForAdd.image = UIImage(named: "\(arrForAddImages[indexPath.row])")
            return cell2
        }
        
        else {
            let cell3 = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCellFor2ndAdd
            cell3.backgroundColor = UIColor.systemGray6
          
            cell3.layer.cornerRadius = 11
            cell3.lableFor2ndAdd.text = arrFor2ngAdd[indexPath.row]
            cell3.iamgeFor2ndAdd.image = arrForImage2ndAdd[indexPath.row]
            
            return cell3
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionView1{
            return CGSize(width: 90, height: 80)
        }
        else if collectionView == self.collectionView2{
            return CGSize(width: 425, height: 265)
        }
        else {
            return CGSize(width: 130, height: 170)
        }
    }
    
    
    
    
    @IBAction func watchImageButtonAction(_ sender: Any) {
        imageView.image = UIImage(named: "images-11-removebg-preview")
    }
    
    @IBAction func gymBageImageButtonAction(_ sender: Any) {
        imageView.image = UIImage(named: "images-12-removebg-preview")
    }
    
    @IBAction func braslateImageButtonAction(_ sender: Any) {
        imageView.image = UIImage(named: "images-13-removebg-preview")
    }
    
    @IBAction func backpackImageButtonAction(_ sender: Any) {
        imageView.image = UIImage(named: "download-11-removebg-preview-1")
    }
    
    
}
