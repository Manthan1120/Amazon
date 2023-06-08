//
//  Otp_Page.swift
//  Amazon
//
//  Created by r86 on 07/06/23.
//

import UIKit

class Otp_Page: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = 13
        submitButton.layer.masksToBounds = true
    }
    
    @IBAction func submitButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ResetPassword_Page") as! ResetPassword_Page
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func resentOtpButtonAction(_ sender: Any) {
        showAlert()
    }
    func showAlert() {
        let alert = UIAlertController(title: "", message: "OTP Send", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Ok", style: .default, handler: nil))
        present(alert, animated:true, completion: nil)
    }
    @IBAction func changeNumOrEmailButttonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
