//
//  ICOMedicineViewController.swift
//  ICareOnline
//
//  Created by M, Jayaprakash (Cognizant) on 21/07/22.
//

import UIKit
struct MedicineModel {
    var title:String?
    var description:String?
}
class ICOMedicineViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var lblTitle: UILabel!
    var medicineArray  = [MedicineModel] ( )
    var medicineName:String?
    @IBOutlet weak var prescriptionTableView: UITableView!
    let cellReuseIdentifier = "MedicineInfoCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.prescriptionTableView.rowHeight = UITableView.automaticDimension
        self.prescriptionTableView.estimatedRowHeight = 122.0
        lblTitle.text = medicineName
        setupData()
    }
    func setupData(){
        var medicine1 = MedicineModel()
        medicine1.title = "USES OF DOLO 650 TABLET"
        medicine1.description = "Dolo 650 Tablet is used for pain relief and fever. It is used to releieve pain in conditions like headache, joint pain, muscle pain or dental pain."
        medicineArray.append(medicine1)
        var medicine2 = MedicineModel()
        medicine2.title = "BENEFITS OF DOLO 650 TABLET"
        medicine2.description = "Dolo 650 Tablet is a common painkiller for treating aches and pains. It is widely used and rarely causes any side effects if taken properly. To get the most benefits, take it as prescribed. Do not take more or for longer than needed as that can be dangerous."
       
        medicineArray.append(medicine2)
        var medicine3 = MedicineModel()
        medicine3.title = "SIDE EFFECTS OF DOLO 650 TABLET"
        medicine3.description = "Most side effects do not require any medical attention and disappear as your body adjusts to the medicine. Consult your doctor if they persist or if you’re worried about them"
        medicineArray.append(medicine3)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

    return 1

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return medicineArray.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.prescriptionTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MedicineInfoCell
        let medicine  = self.medicineArray[indexPath.row]
        cell.lblTitle.text = medicine.title
        cell.lblDescription.text = medicine.description
        return cell

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)  -> CGFloat{
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }

}

class MedicineInfoCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
}
