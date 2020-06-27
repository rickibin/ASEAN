//
//  DetailViewController.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class DetailViewController: ViewController<DetailView> {
    
    var passedData: Country?
    var photos: [UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView.galleryCollectionView.delegate = self
        screenView.galleryCollectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Preparing the Data
        if let data = passedData {
            title = data.country
            photos = data.photos
            screenView.countryLabel.text = data.country
            screenView.capitalLabel.text = data.capital
            screenView.independenceLabel.text = data.independence
            screenView.photoImageView.image = data.photos[0]
            screenView.semboyanLabel.text = data.semboyan
            screenView.nationalAnthemLabel.text = data.nationalAnthem
            screenView.languageLabel.text = data.languages
            screenView.informationLabel.text = data.information
            
        }
        // Set large title
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
        // Set navbar color
        setNavBarColor(self, backgroundColor: UIColor(named: "GreenBase"), textColor: .white, tintColor: .white)
    }
}

extension DetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCell", for: indexPath) as! GalleryCollectionViewCell
        cell.imageView.image = photos[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = PreviewViewController()
        vc.photos = photos
        vc.selectedIndex = indexPath.row
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
