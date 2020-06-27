//
//  ProfileViewController.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class ProfileViewController: ViewController<ProfileView> {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profil"
        
        // Filling the data
        screenView.photoImageView.image = UIImage(named: "ProfilePhoto")
        screenView.nameLabel.text = "Ricki Bin Yamin"
        screenView.emailLabel.text = "ricki.bin.yamin@gmail.com"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set large title
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false
        // Set navbar color
        setNavBarColor(self, backgroundColor: UIColor(named: "GreenBase"), textColor: .white, tintColor: .white)
    }
}
