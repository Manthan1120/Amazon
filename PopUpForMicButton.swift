//
//  PopUpForMicButton.swift
//  Amazon
//
//  Created by R86 on 11/05/23.
//

import UIKit

class PopUpForMicButton: UIViewController {

    @IBOutlet weak var viewForMic: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.alpha = 0
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
 
}
