//
//  POPUp.swift
//  Amazon
//
//  Created by R86 on 20/04/23.
//

import UIKit

class POPUp: UIViewController {

    @IBOutlet weak var pop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        pop.layer.cornerRadius = 20
        pop.layer.masksToBounds = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }


    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: false, completion: nil)
    }
    
}
