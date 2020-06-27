//
//  AseanTableViewCell.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class AseanTableViewCell: UITableViewCell {

    lazy var shadowView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowRadius = 2
        view.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        return view
    }()
    
    lazy var roundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        
        return view
    }()
    
    lazy var photosImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "SingapuraPhoto")
        
        return imageView
    }()
    
    lazy var countryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 19, weight: .semibold)
        label.textColor = .black
        label.text = "Singapura"
        
        return label
    }()
    
    lazy var capitalLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(red: 60/255, green: 60/255, blue: 67/255, alpha: 0.60)
        label.text = "Singapura"
        
        return label
    }()
    
    lazy var bodyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 11, weight: .regular)
        label.textColor = UIColor(red: 32/255, green: 32/255, blue: 32/255, alpha: 1)
        label.numberOfLines = 3
        label.text = "Singapura adalah sebuah negara pulau di lepas ujung selatan Semenanjung Malaya, 137 kilometer (85 mi) di utara khatulistiwa di Asia Tenggara."
        
        return label
    }()
    
    lazy var flagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "SingapuraFlag")
        
        return imageView
    }()
    
    lazy var languageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0, green: 145/255, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.text = "Melayu"
        label.layer.cornerRadius = 6
        label.layer.masksToBounds = true
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        selectionStyle = .none
        contentView.addSubview(shadowView)
        contentView.addSubview(roundView)
        roundView.addSubview(photosImageView)
        roundView.addSubview(countryLabel)
        roundView.addSubview(capitalLabel)
        roundView.addSubview(bodyLabel)
        roundView.addSubview(flagImageView)
        roundView.addSubview(languageLabel)
        
        NSLayoutConstraint.activate([
            shadowView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            shadowView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 18),
            shadowView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -18),
            shadowView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            roundView.topAnchor.constraint(equalTo: shadowView.topAnchor),
            roundView.leftAnchor.constraint(equalTo: shadowView.leftAnchor),
            roundView.rightAnchor.constraint(equalTo: shadowView.rightAnchor),
            roundView.bottomAnchor.constraint(equalTo: shadowView.bottomAnchor),
            
            photosImageView.topAnchor.constraint(equalTo: roundView.topAnchor),
            photosImageView.leftAnchor.constraint(equalTo: roundView.leftAnchor),
            photosImageView.bottomAnchor.constraint(equalTo: roundView.bottomAnchor),
            photosImageView.widthAnchor.constraint(equalTo: roundView.widthAnchor, multiplier: 120/378),
            photosImageView.heightAnchor.constraint(equalTo: photosImageView.widthAnchor, multiplier: 1),
            
            countryLabel.topAnchor.constraint(equalTo: roundView.topAnchor, constant: 12),
            countryLabel.leftAnchor.constraint(equalTo: photosImageView.rightAnchor, constant: 20),
            countryLabel.rightAnchor.constraint(equalTo: roundView.rightAnchor, constant: -48),
            
            capitalLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor),
            capitalLabel.leftAnchor.constraint(equalTo: photosImageView.rightAnchor, constant: 20),
            capitalLabel.rightAnchor.constraint(equalTo: roundView.rightAnchor, constant: -48),
            
            bodyLabel.leftAnchor.constraint(equalTo: photosImageView.rightAnchor, constant: 20),
            bodyLabel.bottomAnchor.constraint(equalTo: roundView.bottomAnchor, constant: -11),
            bodyLabel.rightAnchor.constraint(equalTo: roundView.rightAnchor, constant: -77),
            
            flagImageView.topAnchor.constraint(equalTo: roundView.topAnchor, constant: 8),
            flagImageView.rightAnchor.constraint(equalTo: roundView.rightAnchor, constant: -12),
            flagImageView.widthAnchor.constraint(equalToConstant: 36),
            flagImageView.heightAnchor.constraint(equalToConstant: 24),
            
            languageLabel.rightAnchor.constraint(equalTo: roundView.rightAnchor, constant: -8),
            languageLabel.bottomAnchor.constraint(equalTo: roundView.bottomAnchor, constant: -11),
            languageLabel.widthAnchor.constraint(equalToConstant: 60),
            languageLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: true)
        if highlighted {
            UIView.animate(withDuration: 0.1) {
                self.shadowView.transform = CGAffineTransform(scaleX: 0.97, y: 0.98)
                self.roundView.transform = CGAffineTransform(scaleX: 0.97, y: 0.98)
                self.roundView.backgroundColor = .lightGray
            }
            
        }
        else {
            UIView.animate(withDuration: 0.1) {
                self.shadowView.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.roundView.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.roundView.backgroundColor = .white
            }
        }
        
    }

}
