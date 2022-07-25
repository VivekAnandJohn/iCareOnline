//
//  ICOOfferCell.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 22/07/22.
//

import UIKit

class ICOOfferCell: UITableViewCell {
    
    @IBOutlet weak var offerScrollView: UIScrollView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .clear
        self.contentView.addSubview(scrollView)

        scrollView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20.0).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 20.0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20.0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -20.0).isActive = true

        var imgArray = [UIImage(color: .blue), UIImage(color: .green)]

        if  let img1: UIImage = UIImage(named: "offer1"),
            let img2: UIImage = UIImage(named: "offer2"),
            let img3: UIImage = UIImage(named: "offer3") {

            imgArray = [img1, img2, img3]
        }

        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)

        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0.0).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0.0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0.0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0.0).isActive = true

        for img in imgArray {

            let imgView = UIImageView(image: img)
            imgView.translatesAutoresizingMaskIntoConstraints = false
            imgView.contentMode = .scaleToFill
            stackView.addArrangedSubview(imgView)

            // set imgView's width and height to the scrollView's width and height
            imgView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1.0).isActive = true
            imgView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 1.0).isActive = true

        }
    }
}
