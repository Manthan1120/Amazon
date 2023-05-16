//
//  coustomer_Page.swift
//  Amazon
//
//  Created by R86 on 12/05/23.
//

import UIKit

class coustomer_Page: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var lableForBg: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        lableForBg.layer.cornerRadius = 11
        lableForBg.layer.masksToBounds = true
    }

    @IBAction func backButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Menu_Page") as! Menu_Page
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    
}
