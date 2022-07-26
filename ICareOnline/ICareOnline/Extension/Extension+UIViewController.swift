//
//  Extension+UIViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 20/07/22.
//

import UIKit

extension UIViewController {
    func showAlert(title: String, message: String, actionMessage: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.view.tintColor = .black
        let someAction = UIAlertAction(title: actionMessage, style: .default, handler: nil)
        alertController.addAction(someAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
