//
//  ICOMenuViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 19/07/22.
//

import UIKit

class ICOMenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var menuTableView: UITableView!
    let cellReuseIdentifier = "MenuCell"

    let menuList = [("Info"),("Settings"),("About Us"),("Tutorial")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

    return 1

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return menuList.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: MenuCell = self.menuTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MenuCell
        cell.lblMenu.text = self.menuList[indexPath.row]

    return cell

    }
}

class MenuCell: UITableViewCell {
    
    @IBOutlet weak var imgMenu: UIImageView!
    @IBOutlet weak var lblMenu: UILabel!
}
