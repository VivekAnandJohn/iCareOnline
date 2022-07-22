//
//  ICOPrescriptionViewController.swift
//  ICareOnline
//
//  Created by M, Jayaprakash (Cognizant) on 20/07/22.
//

import UIKit
struct PrescriptionModel {
    var name:String?
    var composition:String?
    var times:String?
    var days:String?
}
class ICOPrescriptionViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var medicineArray  = [PrescriptionModel] ( )
    @IBOutlet weak var prescriptionTableView: UITableView!
    let cellReuseIdentifier = "MedicineCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Medicine List"
        //navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        setupData()
    }
    func setupData(){
        var medicine1 = PrescriptionModel()
        medicine1.name = "Dolo 650mg"
        medicine1.times = "1-1-1"
        medicine1.days = "3 Days"
        medicine1.composition = "Paracetamol"
        medicineArray.append(medicine1)
        var medicine2 = PrescriptionModel()
        medicine2.name = "Ascoril LS Syrup 100ml"
        medicine2.times = "1-0-1"
        medicine2.days = "3 Days"
        medicine2.composition = "Ambroxol"
        medicineArray.append(medicine2)
        var medicine3 = PrescriptionModel()
        medicine3.name = "Pantop 40mg"
        medicine3.times = "1-0-1"
        medicine3.days = "3 Days"
        medicine3.composition = "Pantoprazole"
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
        
        let cell = self.prescriptionTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MedicineCell
        let medicine  = self.medicineArray[indexPath.row]
        cell.lblName.text = medicine.name
        cell.lblTimes.text = medicine.times
        cell.lblDays.text = medicine.days
        cell.lblComposition.text = medicine.composition

    return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: AppStoryboards.Medicine.rawValue, bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ICOMedicineViewController") as! ICOMedicineViewController
        let medicine  = self.medicineArray[indexPath.row]
        vc.medicineName = medicine.name
        self.present(vc, animated:false, completion:nil)
    }
}

class MedicineCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblComposition: UILabel!
    @IBOutlet weak var lblTimes: UILabel!
    @IBOutlet weak var lblDays: UILabel!
}
