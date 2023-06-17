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
        let email = isValidEmail(testStr: emailTextFiled.text!)
        if email == false && emailTextFiled.text?.count != 10{
            showAlert(title: "ERROR!", message: "Invalid email")
            emailTextFiled.text = ""
        }else {
            let naigate = storyboard?.instantiateViewController(withIdentifier: "Otp_Page") as! Otp_Page
            navigationController?.pushViewController(naigate, animated: true)
        }
    }
    @IBAction func BackButtonAction(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction.init(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
