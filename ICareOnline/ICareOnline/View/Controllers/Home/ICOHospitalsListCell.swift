//
//  ICOHospitalsListCell.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 23/07/22.
//

import UIKit

class ICOHospitalsListCell: UITableViewCell {
    
    let hospitalReuseIdentifier = "ICOHospitalCollectionCell"

    @IBOutlet weak var hospitalColectionView: UICollectionView!
    
    var hospitalsArray: [UIImage] = [
        UIImage(named: "hospital1.png")!,
        UIImage(named: "hospital2.png")!,
        UIImage(named: "hospital3.png")!,
        UIImage(named: "hospital4.png")!,
        UIImage(named: "hospital5.png")!,
        UIImage(named: "hospital6.png")!,
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        hospitalColectionView.delegate = self
        hospitalColectionView.dataSource = self
    }
}

extension ICOHospitalsListCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hospitalsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: hospitalReuseIdentifier, for: indexPath) as! ICOHospitalCollectionCell
        cell.configure(with: hospitalsArray[indexPath.row])
        return cell
    }
}

class ICOHospitalCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imgHospital: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with image: UIImage) {
        imgHospital.image = image
    }
}


