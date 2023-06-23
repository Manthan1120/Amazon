//
//  ViewController0156489.swift
//  Amazon
//
//  Created by r86 on 19/06/23.
//

import UIKit

class ViewController0156489: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var text = ""
    var arr2 = Sqlite.getData()
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(arr2)
        print(text)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let null = segue.destination as! Login_Page
//        text = null.emailTextFiled.text!
//
//        print(null.emailTextFiled.text , arr2[0].email)
//        if null.emailTextFiled.text == arr2[0].email {
//            null.showAlert(tital: "email not found")
//        }
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell016516
        cell.l1.text = arr2[indexPath.row].name
        cell.l2.text = arr2[indexPath.row].email
        cell.l3.text = arr2[indexPath.row].password
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }


}
