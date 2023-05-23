//
//  User_page.swift
//  Amazon
//
//  Created by R86 on 14/04/23.
//

import UIKit

class User_page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource
,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var visitButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var upiButton: UIButton!
    @IBOutlet weak var balanceButton: UIButton!
    @IBOutlet weak var manageButton: UIButton!
    @IBOutlet weak var updateButton: UIButton!
    @IBOutlet weak var addressButton: UIButton!
    @IBOutlet weak var returnToHomePageButton: UIButton!
    @IBOutlet weak var yourWishButton: UIButton!
    @IBOutlet weak var yourButton: UIButton!
    @IBOutlet weak var buyAgainButton: UIButton!
    @IBOutlet weak var yourOrderButton: UIButton!
    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var languageButtton: UIButton!
    @IBOutlet weak var userLable: UILabel!
    var null = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLable.text = null
        setUp()
    }
    
    @IBAction func userButtonAction(_ sender: Any) {
    }
    @IBAction func yourOrderButtonAction(_ sender: Any) {
    }
    @IBAction func buyAgainButtonAction(_ sender: Any) {
    }
    @IBAction func yourButtonAction(_ sender: Any) {
    }
    @IBAction func yourWishButtonAction(_ sender: Any) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1122
        cell.layer.cornerRadius = 5
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.systemGray5.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 412, height: 128)
    }
    
    func setUp() {
        
        addressButton.layer.cornerRadius = 7
        addressButton.layer.masksToBounds = true
        addressButton.layer.borderWidth = 2
        addressButton.layer.borderColor = UIColor.systemGray5.cgColor
        updateButton.layer.cornerRadius = 7
        updateButton.layer.masksToBounds = true
        updateButton.layer.borderWidth = 2
        updateButton.layer.borderColor = UIColor.systemGray5.cgColor
        manageButton.layer.cornerRadius = 7
        manageButton.layer.masksToBounds = true
        manageButton.layer.borderWidth = 2
        manageButton.layer.borderColor = UIColor.systemGray5.cgColor
        balanceButton.layer.cornerRadius = 7
        balanceButton.layer.masksToBounds = true
        balanceButton.layer.borderWidth = 2
        balanceButton.layer.borderColor = UIColor.systemGray5.cgColor
        upiButton.layer.cornerRadius = 7
        upiButton.layer.masksToBounds = true
        upiButton.layer.borderWidth = 2
        upiButton.layer.borderColor = UIColor.systemGray5.cgColor
        saveButton.layer.cornerRadius = 7
        saveButton.layer.masksToBounds = true
        saveButton.layer.borderWidth = 2
        saveButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        yourButton.layer.cornerRadius = 20
        yourButton.layer.masksToBounds = true
        yourButton.layer.borderWidth = 2
        yourButton.layer.borderColor = UIColor.systemGray5.cgColor
        yourWishButton.layer.cornerRadius = 20
        yourWishButton.layer.masksToBounds = true
        yourWishButton.layer.borderWidth = 2
        yourWishButton.layer.borderColor = UIColor.systemGray5.cgColor
        buyAgainButton.layer.cornerRadius = 20
        buyAgainButton.layer.masksToBounds = true
        buyAgainButton.layer.borderWidth = 2
        buyAgainButton.layer.borderColor = UIColor.systemGray5.cgColor
        yourOrderButton.layer.cornerRadius = 20
        yourOrderButton.layer.masksToBounds = true
        yourOrderButton.layer.borderWidth = 2
        yourOrderButton.layer.borderColor = UIColor.systemGray5.cgColor
        visitButton.layer.cornerRadius = 7
        visitButton.layer.masksToBounds = true
        visitButton.layer.borderWidth = 2
        visitButton.layer.borderColor = UIColor.systemGray5.cgColor
        returnToHomePageButton.layer.cornerRadius = 7
        returnToHomePageButton.layer.masksToBounds = true
        returnToHomePageButton.layer.borderWidth = 2
        returnToHomePageButton.layer.borderColor = UIColor.systemGray5.cgColor
        
    }
    
}
