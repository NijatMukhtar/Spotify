//
//  PlaylistController.swift
//  Spotify
//
//  Created by Nijat Mukhtarov on 13.09.22.
//

import UIKit

class PlaylistController: UIViewController {
    @IBOutlet weak var playlistImage: UIImageView!
    @IBOutlet weak var playlistNameLabel: UILabel!
    @IBOutlet weak var playlistDescriptionLabel: UILabel!
    @IBOutlet weak var artistPhoto: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var songsCollection: UICollectionView!

    let viewModel = PlaylistViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setup()
    }
    
    fileprivate func setup() {
        songsCollection.register(UINib(nibName: "\(SongImageNameArtistCell.self)", bundle: nil), forCellWithReuseIdentifier: "\(SongImageNameArtistCell.self)")
        //playButton.layer.cornerRadius = 30
    }

}

extension PlaylistController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.testList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(SongImageNameArtistCell.self)", for: indexPath) as! SongImageNameArtistCell
        cell.configure(data: viewModel.testList[indexPath.item])
        cell.rowLabel.text = String(indexPath.item + 1)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 60)
    }
    
    
}
