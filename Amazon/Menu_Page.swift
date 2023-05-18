//
//  Menu_Page.swift
//  Amazon
//
//  Created by R86 on 14/04/23.
//

import UIKit

class Menu_Page: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

  
    @IBOutlet weak var customerButton: UIButton!
    @IBOutlet weak var settingButtton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!

    var arrForMenu = [111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128]
    @IBOutlet weak var pushButton: UIButton!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var micButton: UIButton!
    @IBOutlet weak var LableForBg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LableForBg.layer.cornerRadius = 11
        LableForBg.layer.masksToBounds = true
        imageView.layer.cornerRadius = 11
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.systemGray5.cgColor
        settingButtton.layer.cornerRadius = 11
        settingButtton.layer.masksToBounds = true
        settingButtton.layer.borderWidth = 3
        settingButtton.layer.borderColor = UIColor.systemGray5.cgColor
        customerButton.layer.cornerRadius = 11
        customerButton.layer.masksToBounds = true
        customerButton.layer.borderWidth = 3
        customerButton.layer.borderColor = UIColor.systemGray5.cgColor
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForMenu
        
        cell.image1.image = UIImage(named: arrForMenu[indexPath.row].description)
        cell.image1.layer.cornerRadius = 11
        cell.image1.layer.borderWidth = 3
        cell.image1.layer.borderColor = UIColor.systemGray5.cgColor
        cell.image1.layer.masksToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 190)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["","","","Sell on Amazon","","",""]
            navigation.arr = arr2
        }
        else if indexPath.row == 1 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["","Gift Cards","Gift Finder","Handloom and Handicafts","Small and Medium","Amazon Launchpad",""]
            navigation.arr = arr2
        }
        else if indexPath.row == 2{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Books","Amazon","Audible Audiobooks","eBook","Prime Reading","Kindle Unlimited","Kindle"]
            navigation.arr = arr2
        }
        else if indexPath.row == 3{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["","","Car & Motorbike","Insurans","",""]
            navigation.arr = arr2
        }
        else if indexPath.row == 4{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Amazon Pay","Reward","Mobile Recharge","Bill Payments","Send Money","Travel","Movie","Gift Cards","Car & Bike Insurance"]
            navigation.arr = arr2
        }
        else if indexPath.row == 5{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["","","Amazon Live","FunZone","",""]
            navigation.arr = arr2
        }
        else if indexPath.row == 6{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Groooming & Wellness Devices","Health & Household Suppplies","Amazon","Beauty","Amazon Pharmacy","Daily","Subscribe & Save"]
            navigation.arr = arr2
        }
        else if indexPath.row == 7{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Video Games","Musical","Amazon miniTV","Prime Video","Prime","FunZone","Movie"]
            navigation.arr = arr2
        }
        else if indexPath.row == 8{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Computers","Office","Software","Industrial & Scientific Supplies","Amazon","Amazon"]
            navigation.arr = arr2
        }
        else if indexPath.row == 9{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Home & Kitchen","furniture","Style Feed","TVs","Garden & Outdoor","Handloom and Handicrafts","Our Brands","small and Medium","Local Shops on Amazon","Health & House Supplies"]
            navigation.arr = arr2
        }
        else if indexPath.row == 10{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Grocery & Gourment food","Amazon","Friuts & Vegetables","Meat & Seafood","Daily","Pet Supplies","Subscribe & Save"]
            navigation.arr = arr2
        }
        else if indexPath.row == 11{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Amazon","electronics","Computers","TVs","Echo and Fire TV","Software","Kindly","Grooming & Wellness Devices","Amazon Launchpad","Local Shops on Amazon"]
            navigation.arr = arr2
        }
        else if indexPath.row == 12{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["women's Fashion","Men's","Kids'","Beauty","Watche","Bags,Wallets and Luggage","Handloom and Handicrafts","Small and Medium","Local Shop on Amazon","Style Feed"]
            navigation.arr = arr2
        }
        else if indexPath.row == 13{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Your Orders","Buy Again","Your Wish","Your","Your","Your Recommendations","Alexa Shopping List"]
            navigation.arr = arr2
        }
        else if indexPath.row == 14{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["Today's","Reward","Amazon Coupons","Clearance Store","Amazon Renewed","Subscribe & Save"]
            navigation.arr = arr2
        }
        else if indexPath.row == 15{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["","Try Prime","Prime Video","Prime Reading","Prime",""]
            navigation.arr = arr2
        }
        else if indexPath.row == 16{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["","Sports","Garden & Outdoor","Bags, Wallets and Luggage","Travel"]
            navigation.arr = arr2
        }
        else if indexPath.row == 17{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "PopForMenu") as! PopForMenu
            present(navigation, animated: false)
            var arr2 = ["","Toys & Game","Baby","Kids'","Baby Wishlist",""]
            navigation.arr = arr2
        }
    }
    
    @IBAction func payButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "PayPage") as! PayPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func miniTvButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "MiniTvPage") as! MiniTvPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func pushButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "SearchView") as! SearchView
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func coustomerButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "coustomer_Page") as! coustomer_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func micButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "PopUpForMicButton") as! PopUpForMicButton
//        present(navigation, animated: false)
//        navigation.present(navigation, animated: false)
        navigationController?.present(navigation, animated: true)
    }
    
    @IBAction func settingButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "SettingPopUp") as! SettingPopUp
        present(navigation, animated: false)
    }
}

