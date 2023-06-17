//
//  ResetPassword_Page.swift
//  Amazon
//
//  Created by r86 on 07/06/23.
//

import UIKit

class ResetPassword_Page: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var reneterPasswordTextFiled: UITextField!
    @IBOutlet weak var newPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = 13
        submitButton.layer.masksToBounds = true
        reneterPasswordTextFiled.layer.cornerRadius = 13
        reneterPasswordTextFiled.layer.masksToBounds = true
        newPasswordTextField.layer.cornerRadius = 13
        newPasswordTextField.layer.masksToBounds = true
    
    }
    

    @IBAction func submitButtonAction(_ sender: Any) {
        if newPasswordTextField.text?.count != 6 {
            showAlert(title: "ERROR!", message: "Enter atlist 6 digit password")
        }else if newPasswordTextField.text != reneterPasswordTextFiled.text {
            showAlert(title: "ERROR!", message: "Password does note match !")
        }
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Login_Page") as! Login_Page
        navigationController?.pushViewController(navigation, animated: true)
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
