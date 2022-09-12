//
//  HomeController.swift
//  Spotify
//
//  Created by Nijat Mukhtarov on 12.09.22.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var lastListenedLibrariesCollection: UICollectionView!
    
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setup()
    }

    fileprivate func setup() {
        lastListenedLibrariesCollection.register(UINib(nibName: "\(LastListenedPLaylistCollectionCell.self)", bundle: nil), forCellWithReuseIdentifier: "\(LastListenedPLaylistCollectionCell.self)")
    }
    
}

extension HomeController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.lastPlayedPlaylistList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(LastListenedPLaylistCollectionCell.self)", for: indexPath) as! LastListenedPLaylistCollectionCell
        cell.configure(data: viewModel.lastPlayedPlaylistList[indexPath.item])
        return cell
    }
    
    
}
