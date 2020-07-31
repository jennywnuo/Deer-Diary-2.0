//
//  WorldCollectionViewCell.swift
//  
//
//  Created by Clara Hung on 7/31/20.
//

import UIKit

class WorldCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    var interest: Interest? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let interest = interest {
            featuredImageView.image = interest.featuredImage
            interestTitleLabel.text = interest.title
            backgroundColorView.backgroundColor = interest.color
            
        } else {
            featuredImageView.image = nil
            interestTitleLabel.text = nil
            backgroundColorView.backgroundColor = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 2
        layer.shadowOffset = CGSize(width: 5, height: 10)
        
        self.clipsToBounds = false
    }
}
