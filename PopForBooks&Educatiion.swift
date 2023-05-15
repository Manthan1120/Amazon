//
//  PopForBooks&Educatiion.swift
//  Amazon
//
//  Created by R86 on 15/05/23.
//

import UIKit

class PopForMenu: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arr = [""]
    
    @IBOutlet weak var ViewForPop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.alpha = 0
        ViewForPop.layer.cornerRadius = 25
        ViewForPop.layer.masksToBounds = true
    
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            print("Hello!!")
        }
    }
    
    
    
}
