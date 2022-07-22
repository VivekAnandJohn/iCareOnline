//
//  ICOLabReportViewController.swift
//  ICareOnline
//
//  Created by M, Jayaprakash (Cognizant) on 22/07/22.
//

import UIKit

struct LabReportModel {
    var labName:String?
    var reportName:String?
    var date:String?
}
class ICOLabReportViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var reportTableView: UITableView!
    let cellReuseIdentifier = "ReportCell"
    var reportArray  = [LabReportModel] ( )
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupData()
    }
    func setupData(){
        var report1 = LabReportModel()
        report1.labName = "Metropolis Laboratory"
        report1.reportName = "Blood Report"
        report1.date = "11/07/2022"
        reportArray.append(report1)
        var report2 = LabReportModel()
        report2.labName = "Sunrise Hospital"
        report2.reportName = "X-Ray"
        report2.date = "10/02/2021"
        reportArray.append(report2)
        var report3 = LabReportModel()
        report3.labName = "Neethi Lab"
        report3.reportName = "ECG Report"
        report3.date = "17/10/2020"
        reportArray.append(report3)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

    return 1

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return reportArray.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ReportCell = self.reportTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! ReportCell
        let labReport = self.reportArray[indexPath.row]
        cell.lblReport.text = labReport.reportName
        cell.lblLab.text = labReport.labName
        cell.lblDate.text = labReport.date

    return cell

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch indexPath.row{
        case 0:
            print("Invalid Option")
        case 1:
            print("Invalid Option")
        case 2:
            print("Invalid Option")
        case 3:
            print("Invalid Option")
        case 4:
            navigatePrescription()

        default:
            print("Invalid Option")
        }


       }
    func navigatePrescription()
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: AppStoryboards.Medicine.rawValue, bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ICOPrescriptionListViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
}

class ReportCell: UITableViewCell {
    
    @IBOutlet weak var lblReport: UILabel!
    @IBOutlet weak var lblLab: UILabel!
    @IBOutlet weak var lblDate: UILabel!
}
