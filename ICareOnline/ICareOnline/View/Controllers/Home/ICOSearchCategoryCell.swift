//
//  ICOSearchCategoryCell.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 25/07/22.
//

import UIKit

class ICOSearchCategoryCell: UITableViewCell {
    
    let categoryReuseIdentifier = "ICOCategoryCollectionCell"

    @IBOutlet weak var searchColectionView: UICollectionView!

    var hospitalsArray: [UIImage] = [
        UIImage(named: "Dentist.png")!,
        UIImage(named: "KidneysSpecialist.png")!,
        UIImage(named: "EarSpacialist.png")!,
        UIImage(named: "Neurologist.png")!,
        UIImage(named: "EyeSpecialist")!,
        UIImage(named: "ChildSpecialist")!,
        UIImage(named: "LungsSpecialist")!
    ]
    
    let categoryArray = [("Dentist"),("Kidneys Specialist"),("Ear Spacialist"),("Neurologist"),("Eye Specialist"),("Child Specialist"),("Lungs Specialist")]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        searchColectionView.delegate = self
        searchColectionView.dataSource = self
    }
}

extension ICOSearchCategoryCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hospitalsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: categoryReuseIdentifier, for: indexPath) as! ICOCategoryCollectionCell
        cell.configure(with: hospitalsArray[indexPath.row], category: categoryArray[indexPath.row])
        return cell
    }
}

class ICOCategoryCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var txtCategory: UILabel!
    @IBOutlet weak var imgCategory: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with image: UIImage, category: String) {
        imgCategory.image = image
        txtCategory.text = category
    }
}
