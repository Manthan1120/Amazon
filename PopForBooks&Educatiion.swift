//
//  PopForBooks&Educatiion.swift
//  Amazon
//
//  Created by R86 on 15/05/23.
//

import UIKit

class PopForMenu: UIViewController {

    @IBOutlet weak var ViewForPop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ViewForPop.layer.cornerRadius = 25
        ViewForPop.layer.masksToBounds = true
    }
    

}
