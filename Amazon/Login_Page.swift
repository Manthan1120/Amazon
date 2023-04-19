//
//  Login_Page.swift
//  Amazon
//
//  Created by R86 on 13/04/23.
//

import UIKit

class Login_Page: UIViewController {
    
    var a = 0
    
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
    
    @IBAction func tickMarkButtonAction(_ sender: Any) {
        
        if a == 0{
            tickButtonOutlet.layer.borderWidth = 3
            tickButtonOutlet.layer.borderColor = UIColor.blue.cgColor
//            tickButtonOutlet.setImage(UIImage(systemName: "checkmark"), for: .normal)
            a = 1
        }
        else {
            a = 0
            tickButtonOutlet.layer.borderWidth = 0
            tickButtonOutlet.layer.borderColor = UIColor.gray.cgColor
//            tickButtonOutlet.setImage(UIImage(systemName: "box"), for: .normal)
        }
    
    }
    @IBAction func logInButtonAction(_ sender: Any) {
        
        navigation()
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
    
}
