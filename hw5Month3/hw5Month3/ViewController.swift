//
//  ViewController.swift
//  hw5Month3
//
//  Created by Mac on 9/1/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var youTubeTableVIew: UITableView!
    
        
    @IBOutlet weak var collection: UICollectionView!
    
    
    
    
    var videos:[Youtube] = [Youtube(image1: "1", title: "_sydykov_ - новая Песня", icon: "4", viewsCount: 12339433),Youtube(image1: "2", title: "как пользоватся GarageBand", icon: "2", viewsCount: 123434323),Youtube(image1: "3", title: "Apple Music стал бесплатным!", icon: "3", viewsCount: 12334455)]
    var shortVideo:[Shorts] = [Shorts(title: "Clarence", views: 1232434, image: "6"), Shorts(title: "Rick and Morty", views: 1343234, image: "5"), Shorts(title: "Нечто прекрасное", views: 1232343, image: "7"), Shorts(title: "что будет если не есть неделю ", views: 134324234, image: "9"), Shorts(title: "космические часики", views: 234324234324, image: "10")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let shortslayout = UICollectionViewFlowLayout()
//        shortslayout.scrollDirection = .horizontal
        let layout = UICollectionViewFlowLayout()
        collection.collectionViewLayout = layout
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 15
        youTubeTableVIew.showsVerticalScrollIndicator = false
        collection.showsVerticalScrollIndicator = false
        collection.showsHorizontalScrollIndicator = false
        
        
    }


}

extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "youtube_cell", for: indexPath) as! YouTubeCell
        cell.imageVIew.image = UIImage(named:videos[indexPath.row].image1)
        cell.channelYoutube.image = UIImage(named: videos[indexPath.row].image1)
        cell.titleYoutube.text = "\(videos[indexPath.row].title)"
        cell.channelYoutube.image = UIImage(named: videos[indexPath.row].icon)
        cell.viewsYoutube.text = "\(videos[indexPath.row].viewsCount) просмотров"
        return cell
    }
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
extension ViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shortVideo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "short_cell", for: indexPath) as! ShortsCollectionViewCell
        cell.titleshort.text = shortVideo[indexPath.row].title
        cell.viewsShort.text = "\(shortVideo[indexPath.row].views) просмотров "
        cell.shortsVideo.image = UIImage(named: shortVideo[indexPath.row].image)
        cell.shortsVideo.backgroundColor = .black
//        if indexPath.row % 2 == 0 {
//            cell.shortsVideo.image = UIImage(named: "5")
//        } else {
//            cell.shortsVideo.image = UIImage(named: "6")
//        }
        return cell
    }
    
}
extension ViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 2, height: view.frame.width / 2)
    }
}
