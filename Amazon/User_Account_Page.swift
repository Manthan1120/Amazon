//
//  ViewController.swift
//  Amazon
//
//  Created by R86 on 13/04/23.

//  New to Amazon.in? Create an account
//  Skip sign in


import UIKit

class User_Account_Page: UIViewController {

    
    @IBOutlet weak var backGround: UILabel!
    @IBOutlet weak var logInOutlet: UIButton!
    
    @IBOutlet weak var signInOutlet: UIButton!
    
    @IBOutlet weak var skipOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backGround.layer.cornerRadius = 40
        backGround.layer.masksToBounds = true
        logInOutlet.layer.cornerRadius = 13
        logInOutlet.layer.masksToBounds = true
        signInOutlet.layer.cornerRadius = 13
        signInOutlet.layer.masksToBounds = true
        skipOutlet.layer.cornerRadius = 13
        skipOutlet.layer.masksToBounds = true
        
    }

    @IBAction func logInButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Login_Page") as! Login_Page
        
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func signInButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Singin_Page") as! Singin_Page
        
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func skipButtonAction(_ sender: Any) {
       
    }
}

