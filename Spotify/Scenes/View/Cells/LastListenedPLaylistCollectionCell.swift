//
//  LastListenedPLaylistCollectionCell.swift
//  Spotify
//
//  Created by Nijat Mukhtarov on 12.09.22.
//

import UIKit

protocol LastListenedPlaylistCollectionCellProtocol {
    var imageUrl: String { get }
    var titleText: String { get }
}

class LastListenedPLaylistCollectionCell: UICollectionViewCell {
    @IBOutlet weak var playlistNameLabel: UILabel!
    @IBOutlet weak var playlistImage: UIImageView!
    
    func configure(data: LastListenedPlaylistCollectionCellProtocol){
            playlistNameLabel.text = data.titleText
            playlistImage.loadURL(url: data.imageUrl)
        }

}

