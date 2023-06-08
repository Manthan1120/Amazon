//
//  Login_Page.swift
//  Amazon
//
//  Created by R86 on 13/04/23.
//

import UIKit

class Login_Page: UIViewController {
    
    var a = 1
    
    @IBOutlet weak var imageForTick: UIImageView!
    @IBOutlet weak var backGround: UILabel!
    @IBOutlet weak var emailTextFiled: UITextField!
    @IBOutlet weak var tickButtonOutlet: UIButton!
    @IBOutlet weak var loginOutlet: UIButton!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextFiled.layer.cornerRadius = 4
        emailTextFiled.layer.masksToBounds = true
        backGround.layer.cornerRadius = 40
        backGround.layer.masksToBounds = true
        loginOutlet.layer.cornerRadius = 13
        loginOutlet.layer.masksToBounds = true
        emailTextFiled.layer.cornerRadius = 13
        emailTextFiled.layer.masksToBounds = true
        passwordTextFiled.layer.cornerRadius = 13
        passwordTextFiled.layer.masksToBounds = true
        
        
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
    
    @IBAction func tickMarkButtonAction(_ sender: Any) {
        a+=1
        a%=2
        if a == 1{
            imageForTick.image = UIImage(systemName: "checkmark.circle.fill")
        }
        else if a == 0 {
            imageForTick.image = UIImage(systemName: "00")
        }
    }
    @IBAction func logInButtonAction(_ sender: Any) {
        let email = isValidEmail(testStr: emailTextFiled.text!)
        if email == false{
            showAlert(title: "ERROR!", message: "This is not a valid email. Please try again.")
            emailTextFiled.text = ""
        }
        else {
            navigation()
        }
    }
    func showAlert(tital:String) {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Ok", style: .default, handler: nil))
        present(alert, animated:true, completion: nil)
    }
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "TabBar") as! TabBar
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func BackButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func forgoteButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "Forgote_Page") as! Forgote_Page
        navigationController?.pushViewController(navigate, animated: true)
    }
}
