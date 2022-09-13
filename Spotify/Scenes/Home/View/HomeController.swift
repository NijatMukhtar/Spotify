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
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
    }
    
}

extension HomeController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.lastPlayedPlaylistList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(LastListenedPLaylistCollectionCell.self)", for: indexPath) as! LastListenedPLaylistCollectionCell
        cell.configure(data: viewModel.lastPlayedPlaylistList[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (collectionView.frame.width / 2) - 2.5, height: (collectionView.frame.height / 3) - 2.5)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "\(PlaylistController.self)") as! PlaylistController

        navigationController?.show(controller, sender: nil)
    }
    
}
