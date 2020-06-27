//
//  PreviewView.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class PreviewView: View {
    
    var photos: [UIImage?] = []
    var selectedIndex: Int = 0
    
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.isPagingEnabled = true
        sv.contentMode = .scaleAspectFill
        sv.isDirectionalLockEnabled = true
        sv.backgroundColor = .systemBackground
        
        return sv
    }()
    
    override func setViews() {
        super.setViews()
        backgroundColor = .white
        addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    override func onViewDidLayoutSubviews() {
        super.onViewDidLayoutSubviews()
        
        scrollView.layoutIfNeeded()
        let scrollViewWidth = scrollView.frame.width
        let scrollViewHeight = scrollView.frame.height
        
        for i in 0 ..< photos.count {
            let imageView = UIImageView(frame: CGRect(x: scrollViewWidth * CGFloat(i), y: 0, width: scrollViewWidth, height: scrollViewHeight))
            imageView.contentMode = .scaleAspectFit
            imageView.image = photos[i]
            scrollView.addSubview(imageView)
            
        }
        
        scrollView.contentSize = CGSize(width: self.scrollView.frame.width * CGFloat(photos.count), height: self.scrollView.frame.height)
        
        scrollToPage(page: selectedIndex, animated: false)
    }
    
    func scrollToPage(page: Int, animated: Bool) {
        let pageWidth: CGFloat = scrollView.frame.width
        scrollView.scrollRectToVisible(CGRect(x: pageWidth * CGFloat(page), y: 0, width: pageWidth, height: scrollView.frame.height), animated: animated)
    }
}
