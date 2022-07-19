//
//  ICOAppStoryboards.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 08/07/22.
//

import UIKit

enum ICOAppStoryboards : String {
    // These enum name has to match with the storyboard file name
    case Main, TabScreens
    
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        return instance.instantiateViewController(withIdentifier: storyboardID) as! T
    }
}

extension UIViewController {
    // The Storyboard ID for the initial View Controller has to be defined with the same name as the view controller name
    class var storyboardID : String {
        return "\(self)"
    }
}
