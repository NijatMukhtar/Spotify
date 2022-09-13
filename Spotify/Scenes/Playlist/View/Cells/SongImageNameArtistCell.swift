//
//  SongImageNameArtistCell.swift
//  Spotify
//
//  Created by Nijat Mukhtarov on 13.09.22.
//

import UIKit

protocol SongImageNameArtistCellProtocol{
    var imageUrl: String {get}
    var songNameText: String {get}
    var artistNameText: String {get}
}
class SongImageNameArtistCell: UICollectionViewCell {
    @IBOutlet weak var songArtistLabel: UILabel!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var rowLabel: UILabel!
    
    func configure(data: SongImageNameArtistCellProtocol){
        songImage.loadURL(url: data.imageUrl)
        songNameLabel.text = data.songNameText
        songArtistLabel.text = data.artistNameText
    }

}


