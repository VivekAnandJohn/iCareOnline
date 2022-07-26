//
//  HospitalRegistrationTableViewController.swift
//  ICareOnline
//
//  Created by M_AMBIN05640 on 20/07/22.
//

import UIKit

class HospitalRegistrationTableViewController: UITableViewController {
   
    @IBOutlet weak var hospitalButton: UIButton!
    
    private var selectedItem: String?
    private var selectedDepartment: String?
    private var isDepartMentSelected = false

    private lazy var pickerViewPresenter: PickerPresentator = {
        let pickerViewPresenter = PickerPresentator()
        pickerViewPresenter.didSelectItem = { [weak self] item in
            self?.selectedItem = item
            self?.tableView.reloadData()
        }
        return pickerViewPresenter
    }()

    @IBAction func selectDepartmentButtonAction(_ sender: Any) {
        isDepartMentSelected = true
        pickerViewPresenter.items = ["Department A", "Department B", "Department C", "Department D", "Department E", "Department F"]
        pickerViewPresenter.showPicker()
    }
    @IBAction func buttonTapped(_ sender: Any) {
        isDepartMentSelected = false
        pickerViewPresenter.items = ["Hospital A", "Hospital B", "Hospital C", "Hospital D", "Hospital E", "Hospital F"]
       
        pickerViewPresenter.showPicker()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(pickerViewPresenter)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HRCustomeCellTableViewCell
        
        if isDepartMentSelected {
            cell.department.setTitle(selectedItem, for: .normal)
        } else {
            cell.hospitalButton.setTitle(selectedItem, for: .normal)
        }
       

        return cell
    }
    
    
    @IBAction func mendatoryCheckinButtonAction(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "HospitalRegistration", bundle: Bundle.main).instantiateViewController(withIdentifier: "MandatoryFormViewController") as? MandatoryFormViewController
        
        self.present(vc!, animated: true, completion: nil)
    }
    
    @IBAction func registerButtonAction(_ sender: Any) {
        print("hello")
        
        
        let alert = UIAlertController(title: "Success", message: "You have successfully registered, concern team will call you soon", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
                case .default:
                print("default")
                
                case .cancel:
                print("cancel")
                
                case .destructive:
                print("destructive")
                
            }
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
}
