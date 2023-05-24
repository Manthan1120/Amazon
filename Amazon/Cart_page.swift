//
//  Cart_page.swift
//  Amazon
//
//  Created by R86 on 14/04/23.
//

import UIKit

class Cart_page: UIViewController {

    @IBOutlet weak var shoppingButton: UIButton!
    @IBOutlet weak var navigationButton: UIButton!
    @IBOutlet weak var micButton: UIButton!
    @IBOutlet weak var lableForBg: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lableForBg.layer.cornerRadius = 11
        lableForBg.layer.masksToBounds = true
        shoppingButton.layer.cornerRadius = 7
        shoppingButton.layer.masksToBounds = true
    }
    
    @IBAction func pickButtonAction(_ sender: Any) {
    }
    
    @IBAction func payButtonAction(_ sender: Any) {
    }
}
