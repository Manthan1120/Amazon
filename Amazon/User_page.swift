//
//  User_page.swift
//  Amazon
//
//  Created by R86 on 14/04/23.
//

import UIKit

class User_page: UIViewController {

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
        yourButton.layer.cornerRadius = 20
        
        yourWishButton.layer.cornerRadius = 20
        buyAgainButton.layer.cornerRadius = 20
        yourOrderButton.layer.cornerRadius = 20
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
    
    
}
