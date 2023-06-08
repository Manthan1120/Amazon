//
//  PopForBooks&Educatiion.swift
//  Amazon
//
//  Created by R86 on 15/05/23.
//

import UIKit

class PopForMenu: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var lableForTitle: UILabel!
    var arr = [""]
    @IBOutlet weak var ViewForPop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.alpha = 0
        ViewForPop.layer.borderWidth = 5
        ViewForPop.layer.borderColor = UIColor.systemGray5.cgColor
        ViewForPop.layer.cornerRadius = 18
        ViewForPop.layer.masksToBounds = true
        lableForTitle.layer.borderWidth = 2
        lableForTitle.layer.borderColor = UIColor.systemGray4.cgColor
        lableForTitle.layer.cornerRadius = 11
        lableForTitle.layer.masksToBounds = true
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCellForPopUp
        
        cell.label12.text = arr[indexPath.row]
        
        return cell
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
