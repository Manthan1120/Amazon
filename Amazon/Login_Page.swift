//
//  Login_Page.swift
//  Amazon
//
//  Created by R86 on 13/04/23.
//

import UIKit

class Login_Page: UIViewController {
    
    var tick = 1
    var eye = 1
    var arr2 = Sqlite.getData()
    @IBOutlet weak var ImageForEye: UIImageView!
    @IBOutlet weak var imageForTick: UIImageView!
    @IBOutlet weak var backGround: UILabel!
    @IBOutlet weak var emailTextFiled: UITextField!
    @IBOutlet weak var tickButtonOutlet: UIButton!
    @IBOutlet weak var loginOutlet: UIButton!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(arr2.count)
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
        tick+=1
        tick%=2
        if tick == 1{
            imageForTick.image = UIImage(systemName: "checkmark.circle.fill")
        }else if tick == 0 {
            imageForTick.image = UIImage(systemName: ".0_0.")
        }
    }
    @IBAction func logInButtonAction(_ sender: Any) {
        
//        let email = isValidEmail(testStr: emailTextFiled.text!)
//        if email == false && emailTextFiled.text?.count != 10{
//            showAlert(title: "ERROR!", message: "Invalid email")
//            emailTextFiled.text = ""
//        }else if passwordTextFiled.text!.count != 6 {
//            showAlert(title: "ERROR!", message: "Invalid password")
//            passwordTextFiled.text = ""
//        }else {
//            navigation()
//        }
        
        if Sqlite.checkData(email: emailTextFiled.text ?? "", password: passwordTextFiled.text ?? "")
        {
            print("login")
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
    
    @IBAction func eyeButton(_ sender: Any) {
        eye+=1
        eye%=2
        if eye == 1{
            ImageForEye.image = UIImage(named: "view")
            passwordTextFiled.isSecureTextEntry = false
        }else if eye == 0 {
            ImageForEye.image = UIImage(named: "hide")
            passwordTextFiled.isSecureTextEntry = true
        }
    }
    @IBAction func BackButtonAction(_ sender: Any) {
      
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func forgoteButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "Forgote_Page") as! Forgote_Page
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
