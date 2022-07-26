//
//  ICOHomeViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 08/07/22.
//

import UIKit

class ICOHomeViewController: UIViewController {

    let offerReuseIdentifier = "OfferCell"
    let doctorReuseIdentifier = "ICODoctorsListCell"
    let hospitalReuseIdentifier = "ICOHospitalsListCell"
    let categoryReuseIdentifier = "ICOSearchCategoryCell"

    var doctorsArray: [UIImage] = [
        UIImage(named: "doc0.png")!,
        UIImage(named: "doc1.png")!,
        UIImage(named: "doc2.png")!,
        UIImage(named: "doc3.png")!,
        UIImage(named: "doc4.png")!,
        UIImage(named: "doc5.png")!
    ]
    
    let defaultListCount = 3
    let isExpandDoctorList = false
    let isExpandHospitalList = false

    @IBOutlet weak var homeTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        homeTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ICOHomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell: ICOOfferCell = self.homeTableView.dequeueReusableCell(withIdentifier: offerReuseIdentifier) as! ICOOfferCell
            return cell
        } else if indexPath.row == 1 {
            let cell: ICODoctorsListCell = self.homeTableView.dequeueReusableCell(withIdentifier: doctorReuseIdentifier) as! ICODoctorsListCell
            return cell
        } else if indexPath.row == 2 {
            let cell: ICOHospitalsListCell = self.homeTableView.dequeueReusableCell(withIdentifier: hospitalReuseIdentifier) as! ICOHospitalsListCell
            return cell
        } else {
            let cell: ICOSearchCategoryCell = self.homeTableView.dequeueReusableCell(withIdentifier: categoryReuseIdentifier) as! ICOSearchCategoryCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
 
        if indexPath.row == 0 {
            return 250
        } else if indexPath.row == 1 {
            if !isExpandDoctorList {
                return CGFloat((60 * defaultListCount) + 50)
            } else {
                return CGFloat((60 * doctorsArray.count) + 50)
            }
        } else if indexPath.row == 2 {
            return 130
        } else {
            return 380
        }
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.row == 0 {
            return 250
        } else if indexPath.row == 1 {
            return 110
        } else if indexPath.row == 2 {
            return 130
        } else {
            return 380
        }
    }
}
