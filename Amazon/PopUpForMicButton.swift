//
//  PopUpForMicButton.swift
//  Amazon
//
//  Created by R86 on 11/05/23.
//

import UIKit

class PopUpForMicButton: UIViewController {

    @IBOutlet weak var LabelAlexa: UILabel!
    @IBOutlet weak var viewForMic: UIView!
    var randomeArray = ["'Alexa, go to Electronics'","'Alexa, find noodels'","'Alexa, tell me a joak'","'Alexa, go to amzon fashion'","'Alexa, what is the capital of spain'","'Alexa, search for speaker'"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewForMic.layer.cornerRadius = 20
        self.view.alpha = 0
        LabelAlexa.text = randomeArray.randomElement()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
 
    @IBAction func backButtonAction(_ sender: Any) {
       dismiss(animated: true)
    }
}
