//
//  SettingPopUp.swift
//  Amazon
//
//  Created by R86 on 12/05/23.
//

import UIKit

class SettingPopUp: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    let arr = ["1","2","3","4","5","6","7","9"]
    @IBOutlet weak var ViewForSetting: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.alpha = 0
        ViewForSetting.layer.cornerRadius = 25
        ViewForSetting.layer.masksToBounds = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
       cell.textLabel?.text = arr[indexPath.row]
       return cell
    }

}
