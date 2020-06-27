//
//  AseanTableViewController.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class AseanTableViewController: UITableViewController {
    
    var data: [Country] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = .init(barButtonSystemItem: .add, target: self, action: nil)
        self.title = "Asean"
        tableView.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        
        tableView.register(AseanTableViewCell.self, forCellReuseIdentifier: "AseanCell")
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Preparing the Data
        data = DataManager.shared.fetchData()
        
        // Set large title
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Set navbar color
        setNavBarColor(self, backgroundColor: UIColor(named: "GreenBase"), textColor: .white, tintColor: .white)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AseanCell", for: indexPath) as! AseanTableViewCell
        let dataForCurrentIndex = data[indexPath.row]
        cell.countryLabel.text = dataForCurrentIndex.country
        cell.capitalLabel.text = dataForCurrentIndex.capital
        cell.photosImageView.image = dataForCurrentIndex.photos[0]
        cell.flagImageView.image = dataForCurrentIndex.flag
        cell.languageLabel.text = dataForCurrentIndex.language
        cell.bodyLabel.text = dataForCurrentIndex.information

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            let vc = DetailViewController()
            vc.passedData = self.data[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
       
    }
}
