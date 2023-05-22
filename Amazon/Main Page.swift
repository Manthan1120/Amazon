//
//  Main Page.swift
//  Amazon
//
//  Created by R86 on 13/04/23.
//

import UIKit

class Home_page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
,UISearchBarDelegate{
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backPackImage: UIImageView!
    @IBOutlet weak var braslateImage: UIImageView!
    @IBOutlet weak var gymBageImage: UIImageView!
    @IBOutlet weak var watchImage: UIImageView!
    
    @IBOutlet weak var collectionViewForHorizontle: UICollectionView!
    @IBOutlet weak var collectionView7: UICollectionView!
    @IBOutlet weak var collectionView6: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView4: UICollectionView!
    @IBOutlet weak var collectionView5: UICollectionView!
    
    var arrForHorizontle = [0391,0392,0393,0394,0395,0396,0397,0398,0399,03910]
    var arrForLastText = ["Ear Buts","Electronics accessories","Camera"]
    var arrForLastImage = ["er","as","cm"]
    var arrForKitchenTexts = ["Elecronic Kettles","Cookware","Mixer grinder","Induction cooktop"]
    var arrForKitchenImahes = [UIImage(named: "0341"),UIImage(named: "0342"),UIImage(named: "0343"),UIImage(named: "0344")]
    var arrForSmallAddsImages = [UIImage(named: "0331-1"),UIImage(named: "0332"),UIImage(named: "0333"),UIImage(named: "0334"),UIImage(named: "0335"),UIImage(named: "0336"),UIImage(named: "0337"),UIImage(named: "0338")]
    var arrForImage1 = ["0381","0382","0383","0384","0385","0386","0387","0388","0389","03810","03811","03812","03813","03814","03815","03816"]
    var arrForAddImages = [18]
    var arrForOfferImage = [UIImage(named: "199"),UIImage(named: "299"),UIImage(named: "399"),UIImage(named: "499")]
    var arrForOfferText = ["Top picks under ₹199","Top picks under ₹299","Top picks under ₹399","Top picks under ₹499"]
    var arrForHeadings = ["Deals","Electronics","Mobiles","Travel","miniTV","Home","Beauties","Furnitures","Pharmacy","Movies","Books,Toys","Appliances","Grocery"]
    var arrFor2ngAdd = ["Amazon Pay","Scan any QR","Pay Bills","Send Money","Keep shopping for",""]
    var arrForImage2ndAdd = [UIImage(named: "21") ,UIImage(systemName: "qrcode"),UIImage(systemName: "newspaper.fill"),UIImage(systemName: "indianrupeesign.square"),UIImage(named: "22"),UIImage(named: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backPackImage.backgroundColor = UIColor.systemGray6
        backPackImage.layer.cornerRadius = 11
        backPackImage.layer.masksToBounds = true
        braslateImage.backgroundColor = UIColor.systemGray6
        braslateImage.layer.cornerRadius = 11
        braslateImage.layer.masksToBounds = true
        gymBageImage.backgroundColor = UIColor.systemGray6
        gymBageImage.layer.cornerRadius = 11
        gymBageImage.layer.masksToBounds = true
        watchImage.layer.cornerRadius = 11
        watchImage.backgroundColor = UIColor.systemGray6
        watchImage.layer.masksToBounds = true
        lable.layer.cornerRadius = 11
        lable.layer.masksToBounds = true
      
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1 {
            return arrForImage1.count
        }
        else if collectionView == self.collectionView2 {
            return arrForAddImages.count
        }
        else if collectionView == self.collectionViewForHorizontle{
            return arrForHorizontle.count
        }
        else if collectionView == self.collectionView4{
            return arrForOfferImage.count
        }
        else if collectionView == self.collectionView5{
            return arrForSmallAddsImages.count
        }
        else if collectionView == self.collectionView6{
            return arrForKitchenTexts.count
        }
        else {
            return arrForLastText.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1 {
            let cell1 = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCellForTopHeaders
            cell1.image1.image = UIImage(named: "\(arrForImage1[indexPath.row])")
            return cell1
        }
        else if collectionView == self.collectionViewForHorizontle {
            let cell = collectionViewForHorizontle.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell111
            
            
            return cell
        }
        else if collectionView == self.collectionView2{
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCellForMidAdvertise
            cell2.backgroundColor = UIColor.white
            cell2.imageForAdd.image = UIImage(named: "\(arrForAddImages[indexPath.row])")
            return cell2
        }
    
        else if collectionView == self.collectionView4{
            let cell4 = collectionView4.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCellForOffer
            cell4.imageForOffer.layer.cornerRadius = 7
            
            cell4.imageForOffer.layer.masksToBounds = true
            //cell4.labelForOffer.text = arrForOfferText[indexPath.row]
            cell4.imageForOffer.image = arrForOfferImage[indexPath.row]
            return cell4
        }
        
        else if collectionView == self.collectionView5{
            let cell5 = collectionView5.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! CollectionViewCellForSmallAdds
         
            cell5.imageForSmallAdds.image = arrForSmallAddsImages[indexPath.row]
           
            return cell5
        }
        
        else if collectionView == self.collectionView6{
            let cell6 = collectionView6.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! CollectionViewCellForKitchen
            
            cell6.imageViewForKitchen.image = arrForKitchenImahes[indexPath.row]
            
            return cell6
        }
        
        else {
            let cell7 = collectionView7.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! CollectionViewCellForLast
            cell7.backgroundColor = UIColor.systemGray6
          
            cell7.layer.cornerRadius = 11
            cell7.images?.image = UIImage(named: arrForLastImage[indexPath.row])
            cell7.lable?.text = arrForLastText[indexPath.row]
            return cell7
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionView1{
            return CGSize(width: 82, height: 85)
        }
        else if collectionView == self.collectionView2{
            return CGSize(width: 425, height: 265)
        }
        else if collectionView == self.collectionViewForHorizontle{
            return CGSize(width: 150, height: 183)
        }
        else if collectionView == self.collectionView4{
            let cvSize = collectionView4.frame.width
            return CGSize(width: (cvSize-10.1)/2, height: 190)
        }
        else if collectionView == self.collectionView5{
            let cvSize = collectionView5.frame.width
            return CGSize(width: (cvSize-10.1)/2, height: 125)
        }
        else if collectionView == self.collectionView6{
            let cvSize = collectionView6.frame.width
            return CGSize(width: (cvSize-10.1)/2, height: 212)
        }
        else {
            let cvSize = collectionView7.frame.width
            return CGSize(width: (cvSize-10.1)/3, height: 182)
        }
    }
    
    @IBAction func watchImageButtonAction(_ sender: Any) {
        imageView.image = UIImage(named: "bb4557f6-bbb7-41ac-9913-7a6a8c674e86")
    }
    
    @IBAction func gymBageImageButtonAction(_ sender: Any) {
        imageView.image = UIImage(named: "639a815d-11be-4de6-a779-8c9d818fd0d0")
    }
    
    @IBAction func whiteWatchImageButtonAction(_ sender: Any) {
        imageView.image = UIImage(named: "9c59ff8e-3328-40d1-be4a-b2f5f5fb695f")
    }
    
    @IBAction func mansWearImageButtonAction(_ sender: Any) {
        imageView.image = UIImage(named: "eb96404c-de4a-4a11-8c71-564d436984f2")
    }
    
    @IBAction func ImageNavigationButtonAction(_ sender: Any) {
        
        if imageView.image == UIImage(named: "bb4557f6-bbb7-41ac-9913-7a6a8c674e86") {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "Watch_Page") as! Watch_Page
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if imageView.image == UIImage(named: "639a815d-11be-4de6-a779-8c9d818fd0d0"){
            let navigation = storyboard?.instantiateViewController(withIdentifier: "GymBage_Page") as! GymBage_Page
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if imageView.image == UIImage(named: "9c59ff8e-3328-40d1-be4a-b2f5f5fb695f") {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "Braslate_Page") as! Braslate_Page
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if imageView.image == UIImage(named: "eb96404c-de4a-4a11-8c71-564d436984f2"){
            let navigation = storyboard?.instantiateViewController(withIdentifier: "Bage_Page") as! Bage_Page
            navigationController?.pushViewController(navigation, animated: true)
        }
        else {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "Watch_Page") as! Watch_Page
            navigationController?.pushViewController(navigation, animated: true)
        }
    }

    @IBAction func logInButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "SearchView") as! SearchView
        navigationController?.pushViewController(navigation, animated: true)
     
    }
   
    @IBAction func micButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "PopUpForMicButton") as! PopUpForMicButton
        present(navigation, animated: false)
    }
}
