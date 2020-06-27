//
//  PreviewViewController.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class PreviewViewController: ViewController<PreviewView> {
    
    var photos: [UIImage?] = []
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Galeri"
        screenView.photos = photos
        screenView.selectedIndex = selectedIndex
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Disable large title
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false
        // Set navbar color
        setNavBarColor(self, backgroundColor: UIColor(named: "GreenBase"), textColor: .white, tintColor: .white)
    }
}
