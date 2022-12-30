//
//  ShortsCollectionViewCell.swift
//  hw5Month3
//
//  Created by Mac on 9/1/2023.
//

import UIKit

class ShortsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var shortsVideo: UIImageView!
    
    @IBOutlet weak var titleshort: UILabel!
    
    @IBOutlet weak var viewsShort: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shortsVideo.contentMode = .scaleAspectFill
        titleshort.numberOfLines = 2
        titleshort.font = UIFont.systemFont(ofSize: 10, weight: .bold)
        viewsShort.textColor = .white
        viewsShort.font = UIFont.systemFont(ofSize: 14)
        layer.cornerRadius = 15
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
//        shortsVideo.layer.cornerRadius = 15
//        channelYoutube.layer.cornerRadius = 50 / 2
//        channelYoutube.contentMode = .scaleAspectFill
//        titleYoutube.numberOfLines = 2
//       titleYoutube.font = UIFont.systemFont(ofSize: 18, weight: .bold)
//        viewsYoutube.textColor = .lightGray
//        viewsYoutube.font = UIFont.systemFont(ofSize: 14)
    }
    
}

