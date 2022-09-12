//
//  PlaylistImageAndName.swift
//  Spotify
//
//  Created by Nijat Mukhtarov on 12.09.22.
//

import Foundation

struct Playlist: Codable, LastListenedPlaylistCollectionCellProtocol {
    var imageUrl: String {
        photoUrl ?? ""
    }
    var titleText: String {
        name ?? ""
    }
    
    let name: String?
    let photoUrl: String?
}
