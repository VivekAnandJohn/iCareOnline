//
//  ICOLaunchViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 08/07/22.
//

import UIKit

class ICOLaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.perform(#selector(self.checkForNavigation), with: nil, afterDelay: 1)
    }

    @objc func checkForNavigation() {
        self.performSegue(withIdentifier: Segue.IDWelcomeToLogin.rawValue, sender: self)
    }
}
