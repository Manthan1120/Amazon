//
//  Singin_Page.swift
//  Amazon
//
//  Created by R86 on 13/04/23.
//

import UIKit

class Singin_Page: UIViewController {

    @IBOutlet weak var ImageForEye: UIImageView!
    var eye = 1
    @IBOutlet weak var backGround: UILabel!
    @IBOutlet weak var signInButtonOutlet: UIButton!
    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var createPasswordTextFiled: UITextField!
    @IBOutlet weak var emailTextFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Sqlite.createFile()
        backGround.layer.cornerRadius = 40
        backGround.layer.masksToBounds = true
        signInButtonOutlet.layer.cornerRadius = 13
        signInButtonOutlet.layer.masksToBounds = true
        nameTextFiled.layer.cornerRadius = 13
        nameTextFiled.layer.masksToBounds = true
        createPasswordTextFiled.layer.cornerRadius = 13
        createPasswordTextFiled.layer.masksToBounds = true
        emailTextFiled.layer.cornerRadius = 13
        emailTextFiled.layer.masksToBounds = true
    }
    
    @IBAction func signInButtonAction(_ sender: Any) {
  
        let email = isValidEmail(testStr: emailTextFiled.text!)
        if email == false{
            showAlert(title: "ERROR!", message: "This is not a valid email. Please try again.")
            emailTextFiled.text = ""
        }
        else {
            Sqlite.addData(name: nameTextFiled.text!, password: createPasswordTextFiled.text!, email: emailTextFiled.text!)
            navigation()
        }
        
    }
    @IBAction func eyeButton(_ sender: Any) {
        eye+=1
        eye%=2
        if eye == 1{
            ImageForEye.image = UIImage(named: "view")
            createPasswordTextFiled.isSecureTextEntry = false
        }else if eye == 0 {
            ImageForEye.image = UIImage(named: "hide")
            createPasswordTextFiled.isSecureTextEntry = true
        }
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
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "TabBar") as! TabBar
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    @IBAction func backBUttonAction(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
