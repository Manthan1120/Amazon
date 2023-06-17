//
//  SettingPopUp.swift
//  Amazon
//
//  Created by R86 on 12/05/23.
//

import UIKit

class SettingPopUp: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    let arr = ["Country & Language","Notification","Language A/","Alex","Permission","Default Purchase Setting","Legal & About","Switch","Sign Out"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2020 = tableView.dequeueReusableCell(withIdentifier: "cell2020") as! TableViewCellForSetting
        cell2020.lableForHeading.text = arr[indexPath.row]
        return cell2020
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
