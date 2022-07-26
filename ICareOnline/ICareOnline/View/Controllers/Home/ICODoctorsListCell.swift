//
//  ICODoctorsListCell.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 22/07/22.
//

import UIKit

protocol HomeViewControllerDelegate
{
    func doctorDetailSelected(for index:Int, type: HomeControllerType)
}

class ICODoctorsListCell: UITableViewCell {
    
    var delegate:HomeViewControllerDelegate?
    
    let doctorReuseIdentifier = "ICODoctorDisplayCell"
    let doctorsArray = [("Dr. Priyanshi Avanija"),("Dr. Thomas Douglass"),("Dr. Jacqueline Lazarus")]
    //let doctorsArray = [("Dr. Priyanshi Avanija"),("Dr. Thomas Frederick Douglass"),("Dr. Jacqueline Lazarus"),("Dr. Daniels Matthew"),("Dr. Nirmal Poumit"),("Dr. Ravi Sharma")]

    let docDetailsArray = ["Neurosurgeon, Mumbai", "Neurologist, Kerala", "Orthopaedic, Delhi"]
    var docImgArray: [UIImage] = [
        UIImage(named: "doc0.png")!,
        UIImage(named: "doc1.png")!,
        UIImage(named: "doc4.png")!
    ]
    
    @IBOutlet weak var doctorTableview: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        doctorTableview.delegate = self
        doctorTableview.dataSource = self
    }
}

extension ICODoctorsListCell: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ICODoctorDisplayCell = self.doctorTableview.dequeueReusableCell(withIdentifier: doctorReuseIdentifier) as! ICODoctorDisplayCell
        
        let img = docImgArray[indexPath.row]
        cell.imgDoc.image = img
        cell.lblName.text = doctorsArray[indexPath.row]
        cell.lblDepartment.text = docDetailsArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
 
        return 60
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {

        return 60
    }
    
    private func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.delegate?.doctorDetailSelected(for: indexPath.row, type: .Doctor)
    }
}
    
class ICODoctorDisplayCell: UITableViewCell {
    
    
    @IBOutlet weak var imgDoc: UIImageView!
    @IBOutlet weak var lblDepartment: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
