//
//  coustomer_Page.swift
//  Amazon
//
//  Created by R86 on 12/05/23.
//

import UIKit

class coustomer_Page: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
   
    @IBOutlet weak var chatWuthUsButtonOutlet: UIButton!
    @IBOutlet weak var talkToUsButtonOutlet: UIButton!
    @IBOutlet weak var bgLable: UILabel!
    @IBOutlet weak var textFiled22: UITextField!
    @IBOutlet weak var view333: UIView!
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var lableForBg: UILabel!
    var imageArr = [UIImage(named: "logistics "),UIImage(named: "return "),UIImage(named: "file"),UIImage(named: "user")]
    var arr = ["Your Orders","Return & Refunds","Amazon Pay Transaction","Account Setting"]
    var arr2 = ["Track, return or view an order","Return or replace items","View cashback details and other transactions","Edit password, address or payment detailas"]
    override func viewDidLoad() {
        super.viewDidLoad()
        talkToUsButtonOutlet.layer.cornerRadius = 5
        talkToUsButtonOutlet.layer.masksToBounds = true
        chatWuthUsButtonOutlet.layer.cornerRadius = 5
        chatWuthUsButtonOutlet.layer.masksToBounds = true
        bgLable.layer.borderWidth = 1
        bgLable.layer.borderColor = UIColor.systemGray5.cgColor
        bgLable.layer.cornerRadius = 5
        bgLable.layer.masksToBounds = true
        tableView1.layer.borderWidth = 2
        tableView1.layer.cornerRadius = 11
        tableView1.layer.borderColor = UIColor.systemGray5.cgColor
        lableForBg.layer.cornerRadius = 11
        lableForBg.layer.masksToBounds = true
    }

    @IBAction func backButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellForCoustomerService
        
    
        cell.imageView1.image = imageArr[indexPath.row]
        cell.lable1.text = arr[indexPath.row]
        cell.lable2.text = arr2[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
