//
//  Menu_Page.swift
//  Amazon
//
//  Created by R86 on 14/04/23.
//

import UIKit

class Menu_Page: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

  
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
    }
    
    
    @IBAction func pushButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "SearchView") as! SearchView
        navigationController?.pushViewController(navigation, animated: true)
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
        let cvSize = collectionView.frame.width
        return CGSize(width: (cvSize-1.7)/2, height: 192)
    }
    
}

