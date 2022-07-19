//
//  ICOLoginViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 01/07/22.
//

import UIKit

class ICOLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func btnContinueAsGuest(_ sender: Any) {
        
        self .navigateToHome()
    }
    
    func navigateToHome() {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: AppStoryboards.TabScreens.rawValue, bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: AppControllers.BubbleTabBarController.rawValue)
        self.present(nextViewController, animated:false, completion:nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

