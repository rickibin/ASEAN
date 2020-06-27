//
//  ProfileView.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class ProfileView: View {
    
    lazy var photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 23, weight: .semibold)
        
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 12, weight: .light)
        
        return label
    }()
    
    override func setViews() {
        super.setViews()
        backgroundColor = .white
        
        addSubview(photoImageView)
        addSubview(nameLabel)
        addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            photoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 47),
            photoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            photoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 155/414),
            photoImageView.heightAnchor.constraint(equalTo: photoImageView.widthAnchor, multiplier: 1),
            
            nameLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 19),
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 6),
            emailLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    override func onViewWillAppear() {
        super.onViewWillAppear()
        
        photoImageView.layoutIfNeeded()
        photoImageView.layer.cornerRadius = photoImageView.bounds.size.width/2
    }
}
