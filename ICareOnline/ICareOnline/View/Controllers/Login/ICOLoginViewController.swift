//
//  ICOLoginViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 01/07/22.
//

import UIKit

class ICOLoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginSegController: UISegmentedControl!
    
    @IBOutlet weak var imgLoginInfo: UIImageView!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnInfo: UIButton!
    
    @IBOutlet weak var viewSignUp: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let selectedFontAttribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 12),
                                     NSAttributedString.Key.foregroundColor: UIColor(red: 98/255, green: 123/255, blue: 198/255, alpha: 1.0)]
        loginSegController.setTitleTextAttributes(selectedFontAttribute, for: .selected)
        let unSelectedFontAttribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 12),
                                       NSAttributedString.Key.foregroundColor: UIColor.white]
        loginSegController.setTitleTextAttributes(unSelectedFontAttribute, for: .normal)
        
        txtName.delegate = self
        txtPassword.delegate = self
        
        imgLoginInfo.isUserInteractionEnabled = true
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        imgLoginInfo.addGestureRecognizer(tapRecognizer)
        
        //LOGIN CREDENTIAL
        txtName.text = "User"
        txtPassword.text = "1234"
    }
    
    @IBAction func btnClickedInfo(_ sender: Any) {
        imgLoginInfo.isHidden = false
        self.view.bringSubviewToFront(imgLoginInfo)
    }
    
    @IBAction func btnClickLogin(_ sender: Any) {
        
        guard let name = txtName.text else {
            showDefaultLoginCred()
            return
        }
        
        guard let password = txtPassword.text else {
            showDefaultLoginCred()
            return
        }
        
        if name == "User" && password == "1234"{
            
            let alert = UIAlertController(title: "Welcome, User", message: "Logged In Successfully", preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)

            let when = DispatchTime.now() + 1
            DispatchQueue.main.asyncAfter(deadline: when){
              // your code with delay
              alert.dismiss(animated: true, completion: nil)
                self .navigateToHome()
            }
            
        } else {
            showDefaultLoginCred()
        }
    }
    
    @IBAction func btnClickGuest(_ sender: Any) {
        self.navigateToHome()
    }
    
    func showDefaultLoginCred() {
        self.showAlert(title: "TEST CREDENTIALS",
                       message: """
                        User Name : User
                        Password : 1234
                        """,
                       actionMessage: "Ok")
    }
    
    func navigateToHome() {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: AppStoryboards.TabScreens.rawValue, bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: AppControllers.BubbleTabBarController.rawValue)
        self.present(nextViewController, animated:false, completion:nil)
    }
    
    @objc func imageTapped(recognizer: UITapGestureRecognizer) {

        imgLoginInfo.isHidden = true
        imgLoginInfo.sendSubviewToBack(self.btnInfo)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //delegate method
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        //delegate method
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //delegate method
        textField.resignFirstResponder()
        
        return true
    }
}

