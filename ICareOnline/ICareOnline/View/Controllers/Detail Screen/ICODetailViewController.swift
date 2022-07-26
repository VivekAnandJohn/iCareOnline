//
//  ICODetailViewController.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 26/07/22.
//

import UIKit

class ICODetailViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
