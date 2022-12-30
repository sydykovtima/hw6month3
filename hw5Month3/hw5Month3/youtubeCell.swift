//
//  youtubeCell.swift
//  hw5Month3
//
//  Created by Mac on 9/1/2023.
//

import Foundation
import UIKit
class YouTubeCell:UITableViewCell {
    
    @IBOutlet weak var ImageViewYouTube: UIView!
    
    @IBOutlet weak var channelYoutube: UIImageView!
    
    @IBOutlet weak var titleYoutube: UILabel!
    
    @IBOutlet weak var viewsYoutube: UILabel!
    
    @IBOutlet weak var imageVIew: UIImageView!
    
    override func layoutSubviews() {
        channelYoutube.layer.cornerRadius = 50 / 2
//        channelYoutube.contentMode = .scaleAspectFill
        titleYoutube.numberOfLines = 2
       titleYoutube.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        viewsYoutube.textColor = .lightGray
        viewsYoutube.font = UIFont.systemFont(ofSize: 14)
        
    }
    
}
