//
//  SearchView.swift
//  Amazon
//
//  Created by R86 on 02/05/23.
//

import UIKit

class SearchView: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
   
    
    
 
    @IBOutlet weak var lableForBg: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        lableForBg.layer.cornerRadius = 11
        lableForBg.layer.masksToBounds = true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func store() {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellForSearch

        tableView.reloadData()
        cell.lableForSearchHistory.text = searchBar.text
        print(cell.lableForSearchHistory.text!)
        
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        
        
        
    }
}
