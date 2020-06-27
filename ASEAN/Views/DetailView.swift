//
//  DetailView.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class DetailView: View {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .white
        
        return scrollView
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    
    lazy var photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "SingapuraPhoto")
        
        return imageView
    }()
    
    lazy var mainInfoView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    
    lazy var countryHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 12, weight: .light)
        label.text = "Nama Negara"
        
        return label
    }()
    
    lazy var countryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.text = "Negara"
        
        return label
    }()
    
    lazy var capitalHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 12, weight: .light)
        label.text = "Ibu kota"
        
        return label
    }()
    
    lazy var capitalLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "Kota"
        
        return label
    }()
    
    lazy var independenceHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 12, weight: .light)
        label.text = "Kemerdekaan"
        
        return label
    }()
    
    lazy var independenceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "1 Januari 0000"
        
        return label
    }()

    lazy var galleryHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "Galeri"
        
        return label
    }()
    
    lazy var galleryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 80, height: 80)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 20)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        
        return collectionView
    }()
    
    lazy var semboyanHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "Semboyan"
        
        return label
    }()
    
    lazy var semboyanLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.text = "Semboyan"
        
        return label
    }()
    
    lazy var nationalAnthemHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "Lagu Kebangsaan"
        
        return label
    }()
    
    lazy var nationalAnthemLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.text = "Lagu"
        
        return label
    }()
    
    lazy var languageHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "Bahasa Resmi"
        
        return label
    }()
    
    lazy var languageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.numberOfLines = 0
        label.text = "Bahasa"
        
        return label
    }()
    
    lazy var informationHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "Informasi Umum"
        
        return label
    }()
    
    lazy var informationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.numberOfLines = 0
        label.text = "Deskripsi"
        
        return label
    }()
    
    override func setViews() {
        super.setViews()
        backgroundColor = .white
        
        galleryCollectionView.register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: "GalleryCell")
        
        addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(photoImageView)
        containerView.addSubview(mainInfoView)
        mainInfoView.addSubview(countryHeadLabel)
        mainInfoView.addSubview(countryLabel)
        mainInfoView.addSubview(capitalHeadLabel)
        mainInfoView.addSubview(capitalLabel)
        mainInfoView.addSubview(independenceHeadLabel)
        mainInfoView.addSubview(independenceLabel)
        containerView.addSubview(galleryHeadLabel)
        containerView.addSubview(galleryCollectionView)
        containerView.addSubview(semboyanHeadLabel)
        containerView.addSubview(semboyanLabel)
        containerView.addSubview(nationalAnthemHeadLabel)
        containerView.addSubview(nationalAnthemLabel)
        containerView.addSubview(languageHeadLabel)
        containerView.addSubview(languageLabel)
        containerView.addSubview(informationHeadLabel)
        containerView.addSubview(informationLabel)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: self.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: self.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            containerView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            photoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 18),
            photoImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 24),
            photoImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 124/414),
            photoImageView.heightAnchor.constraint(equalTo: photoImageView.widthAnchor, multiplier: 1),
            
            mainInfoView.leftAnchor.constraint(equalTo: photoImageView.rightAnchor, constant: 22),
            mainInfoView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20),
            mainInfoView.centerYAnchor.constraint(equalTo: photoImageView.centerYAnchor),
            
            countryHeadLabel.topAnchor.constraint(equalTo: mainInfoView.topAnchor),
            countryHeadLabel.leftAnchor.constraint(equalTo: mainInfoView.leftAnchor),
            countryHeadLabel.rightAnchor.constraint(equalTo: mainInfoView.rightAnchor),
            
            countryLabel.topAnchor.constraint(equalTo: countryHeadLabel.bottomAnchor),
            countryLabel.leftAnchor.constraint(equalTo: mainInfoView.leftAnchor),
            countryLabel.rightAnchor.constraint(equalTo: mainInfoView.rightAnchor),
            
            capitalHeadLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 4),
            capitalHeadLabel.leftAnchor.constraint(equalTo: mainInfoView.leftAnchor),
            capitalHeadLabel.rightAnchor.constraint(equalTo: mainInfoView.rightAnchor),
            
            capitalLabel.topAnchor.constraint(equalTo: capitalHeadLabel.bottomAnchor),
            capitalLabel.leftAnchor.constraint(equalTo: mainInfoView.leftAnchor),
            capitalLabel.rightAnchor.constraint(equalTo: mainInfoView.rightAnchor),
            
            independenceHeadLabel.topAnchor.constraint(equalTo: capitalLabel.bottomAnchor, constant: 4),
            independenceHeadLabel.leftAnchor.constraint(equalTo: mainInfoView.leftAnchor),
            independenceHeadLabel.rightAnchor.constraint(equalTo: mainInfoView.rightAnchor),
            
            independenceLabel.topAnchor.constraint(equalTo: independenceHeadLabel.bottomAnchor),
            independenceLabel.leftAnchor.constraint(equalTo: mainInfoView.leftAnchor),
            independenceLabel.rightAnchor.constraint(equalTo: mainInfoView.rightAnchor),
            independenceLabel.bottomAnchor.constraint(equalTo: mainInfoView.bottomAnchor),
            
            galleryHeadLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 29),
            galleryHeadLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            galleryCollectionView.topAnchor.constraint(equalTo: galleryHeadLabel.bottomAnchor, constant: 9),
            galleryCollectionView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0),
            galleryCollectionView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0),
            galleryCollectionView.heightAnchor.constraint(equalToConstant: 80),
            
            semboyanHeadLabel.topAnchor.constraint(equalTo: galleryCollectionView.bottomAnchor, constant: 18),
            semboyanHeadLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            semboyanLabel.topAnchor.constraint(equalTo: semboyanHeadLabel.bottomAnchor, constant: 8),
            semboyanLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 30),
            
            nationalAnthemHeadLabel.topAnchor.constraint(equalTo: semboyanLabel.bottomAnchor, constant: 18),
            nationalAnthemHeadLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            nationalAnthemLabel.topAnchor.constraint(equalTo: nationalAnthemHeadLabel.bottomAnchor, constant: 8),
            nationalAnthemLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 30),
            
            languageHeadLabel.topAnchor.constraint(equalTo: nationalAnthemLabel.bottomAnchor, constant: 18),
            languageHeadLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            languageLabel.topAnchor.constraint(equalTo: languageHeadLabel.bottomAnchor, constant: 8),
            languageLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 30),
            languageLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20),
            
            informationHeadLabel.topAnchor.constraint(equalTo: languageLabel.bottomAnchor, constant: 18),
            informationHeadLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            informationLabel.topAnchor.constraint(equalTo: informationHeadLabel.bottomAnchor, constant: 8),
            informationLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 30),
            informationLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -25),
            
            informationLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -50)
        ])
    }
    
    override func onViewWillAppear() {
        super.onViewWillAppear()
        
        photoImageView.layoutIfNeeded()
        photoImageView.layer.cornerRadius = photoImageView.bounds.size.width/2
    }
}
