//
//  Forgote_Page.swift
//  Amazon
//
//  Created by r86 on 07/06/23.
//

import UIKit

class Forgote_Page: UIViewController {

    @IBOutlet weak var sendOtpButton: UIButton!
    @IBOutlet weak var emailTextFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextFiled.layer.cornerRadius = 13
        emailTextFiled.layer.masksToBounds = true
        sendOtpButton.layer.cornerRadius = 13
        sendOtpButton.layer.masksToBounds = true
    }
    
    @IBAction func sendOtpButtonAction(_ sender: Any) {
        let naigate = storyboard?.instantiateViewController(withIdentifier: "Otp_Page") as! Otp_Page
        navigationController?.pushViewController(naigate, animated: true)
    }
    @IBAction func BackButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
