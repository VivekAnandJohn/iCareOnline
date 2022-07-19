//
//  ICONotificationViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 19/07/22.
//

import UIKit

class ICONotificationViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var notificationTableView: UITableView!
    let cellReuseIdentifier = "NotificationCell"
    
    let notificationList = [("Reminder: You have an appointment today with Dr Reddy (Cardiologist) at 11:30 a.m"),("Invoice: Appointment with Dr Reddy"),("Appointment: You have successfully scheduled your appointment with Dr Reddy"),("Invoice: WellCare Hospital Registration."),("WellCare Hospital : Registration successfully completed")]
    
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

        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: NotificationCell = self.notificationTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! NotificationCell
        cell.lblNotification.text = self.notificationList[indexPath.row]
        return cell

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
 
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {

        return 50
    }
}

class NotificationCell: UITableViewCell {
    
    @IBOutlet weak var btnFav: UIButton!
    @IBOutlet weak var lblNotification: UILabel!
}
