//
//  MandatoryFormViewControlle.swift
//  ICareOnline
//
//  Created by M_AMBIN05640 on 20/07/22.
//

import UIKit

class MandatoryFormViewController: UITableViewController {
    
    @IBAction func dismissControllerButtonAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    var dataArray = ["Do you have Fever over 100.4 degrees Fahrenheit?", "Do any members of your household have Fever over 100.4 degrees Fahrenheit?", "Have you traveled recently?", "Have you been in contact with someone diagnosed with COVID-19 in the past two weeks?", "Are you or a family member awaiting COVID-19 test results?", "Do you have any of these life-threatening symptoms like double breathing, pressure in chest?", "Are you up to date with your COVID-19 vaccination?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UINib(nibName: "CheckBoxtableViewCellTableViewCell", bundle: nil), forCellReuseIdentifier: "CheckBoxtableViewCellTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.estimatedRowHeight = 44
        self.tableView.rowHeight = UITableView.automaticDimension
        
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckBoxtableViewCellTableViewCell", for: indexPath) as! CheckBoxtableViewCellTableViewCell
        cell.checkBoxTextLabel.text = dataArray[indexPath.row]
        cell.checkBoxButton.tag = indexPath.row
        cell.checkBoxButton.addTarget(self, action: #selector(self.checkBoxButtonAction), for: .touchUpInside)
        return cell
    }
    
    @IBAction func dismissController(_ sender: Any) {
        
        self.dismissController(sender)
        
    }
    @objc func checkBoxButtonAction(_ sender: UIButton) {
        
        if (sender.isSelected == true) {
            sender.isSelected = false
            
            sender.setImage(UIImage(), for: .normal)
        } else {
            sender.isSelected = true
            sender.setImage(UIImage(named: "checkBoxSelected"), for: .normal)
        }
    }
}


