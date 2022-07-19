//
//  ICOMainViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 19/07/22.
//

import UIKit

class ICOMainViewController: UIViewController, ENSideMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.sideMenuController()?.sideMenu?.delegate = self
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - ENSideMenu Delegate
    func sideMenuShouldOpenSideMenu() -> Bool {
        // side menu should open side menu
        return true
    }
    func sideMenuWillOpen() {
        // sideMenuWillOpen
    }
    func sideMenuWillClose() {
        // sideMenuWillClose
    }
    func sideMenuDidClose() {
        // sideMenuDidClose
    }
    func sideMenuDidOpen() {
        // sideMenuDidOpen
    }
}
