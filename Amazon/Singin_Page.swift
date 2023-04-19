//
//  Singin_Page.swift
//  Amazon
//
//  Created by R86 on 13/04/23.
//

import UIKit

class Singin_Page: UIViewController {

    @IBOutlet weak var backGround: UILabel!
    @IBOutlet weak var signInButtonOutlet: UIButton!
    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var createPasswordTextFiled: UITextField!
    @IBOutlet weak var emailTextFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

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
        
        if nameTextFiled.text == "" {
            showAlert(tital: "Invalide name.!!")
        }
        else if emailTextFiled.text == "" {
            showAlert(tital: "Invalide email.!!")
        }
        else if createPasswordTextFiled.text == "" {
            showAlert(tital: "First create your password")
        }
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
