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

    let menuList = [("Info"),("Settings"),("About Us"),("Tutorial"),("Prescription"), ("Hospital Registration")]
    
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

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch indexPath.row{
        case 0:
            print("Invalid Option")
        case 1:
            print("Invalid Option")
        case 2:
            print("Invalid Option")
        case 3:
            print("Invalid Option")
        case 4:
            navigatePrescription()
        case 5:
            navigateToHospitalRegistration()

        default:
            print("Invalid Option")
        }


       }
    
    
    func navigateToHospitalRegistration()
    {
        let vc = UIStoryboard.init(name: "HospitalRegistration", bundle: Bundle.main).instantiateViewController(withIdentifier: "HospitalRegistrationTableViewController") as? HospitalRegistrationTableViewController
        navigationController?.pushViewController(vc!, animated: true)
    }


    
    func navigatePrescription()
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: AppStoryboards.Medicine.rawValue, bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ICOPrescriptionListViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
}

class MenuCell: UITableViewCell {
    
    @IBOutlet weak var imgMenu: UIImageView!
    @IBOutlet weak var lblMenu: UILabel!
}
