//
//  ICOPrescriptionListViewController.swift
//  ICareOnline
//
//  Created by M, Jayaprakash (Cognizant) on 20/07/22.
//

import UIKit

struct prescriptionInfoModel {
    var doctorName:String?
    var date:String?
    var hospitalName:String?
}
class ICOPrescriptionListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var prescriptionTableView: UITableView!
    let cellReuseIdentifier = "PrescriptionCell"
    var infoArray  = [prescriptionInfoModel] ( )
    var medicineName:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupData()
        self.title = "Prescription List"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

    }
    func setupData(){
        var information1 = prescriptionInfoModel()
        information1.doctorName = "Dr.Sriram,MBBS,MD"
        information1.date = "21/07/2022"
        information1.hospitalName = "Sunrise Hospital"
        infoArray.append(information1)
        var information2 = prescriptionInfoModel()
        information2.doctorName = "Dr.Reena,MBBS"
        information2.date = "05/01/2022"
        information2.hospitalName = "Ascent Hospital"
        infoArray.append(information2)
        var information3 = prescriptionInfoModel()
        information3.doctorName = "Dr.Lakshimikutty,MD,DGO"
        information3.date = "29/10/2021"
        information3.hospitalName = "At Home"
        infoArray.append(information3)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

    return 1

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return infoArray.count

    }

    @IBAction func reportAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: AppStoryboards.Medicine.rawValue, bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ICOLabReportViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: PrescriptionCell = self.prescriptionTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! PrescriptionCell
        let prescriptionInfo = infoArray[indexPath.row]
        cell.lblDoctorName.text = prescriptionInfo.doctorName
        cell.lblDate.text = prescriptionInfo.date
        cell.lblHospitalName.text = prescriptionInfo.hospitalName

    return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: AppStoryboards.Medicine.rawValue, bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ICOPrescriptionViewController")
        navigationController?.pushViewController(vc, animated: true)
    }

}

class PrescriptionCell: UITableViewCell {
    
    @IBOutlet weak var imgMenu: UIImageView!
    @IBOutlet weak var lblDoctorName: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblHospitalName: UILabel!
    @IBOutlet weak var btnReport: UIButton!
}
