//
//  PlaylistImageAndName.swift
//  Spotify
//
//  Created by Nijat Mukhtarov on 12.09.22.
//

import Foundation

struct Song: Codable, SongImageNameArtistCellProtocol {
    var imageUrl: String{
        photoUrl ?? ""
    }
    
    var songNameText: String{
        songName ?? ""
    }
    
    var artistNameText: String{
        artistName ?? ""
    }
    
    let photoUrl: String?
    let songName: String?
    let artistName: String?
}
