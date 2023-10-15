//
//  LibraryViewController.swift
//  Post
//
//  Created by Наида Магомаева on 31.07.2023.
//

import UIKit
import Foundation

final class LibraryViewController: UICollectionViewController, UISearchBarDelegate {
    let viewModel = LibraryViewModel()
   
    let itemPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    
    let apiService = APIService()
    var searchResponde: SearchRespond? = nil
    
    private var timer: Timer?
    
    private lazy var filterSegment: UISegmentedControl = {
        let segmented = UISegmentedControl(items:["Section 1", "Section 2", "Section 3"])
        return segmented
        
        let searchController = UISearchController(searchResultsController: nil)
        
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            setupSearchBar()
            setupCollectionView()
            let layout = UICollectionViewFlowLayout()
            let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
             
        }
        
        private func setupSearchBar(){
            navigationItem.searchController = searchController
            searchController.searchBar.delegate = self
            navigationController?.navigationBar.prefersLargeTitles = true
            searchController.obscuresBackgroundDuringPresentation = false
        }
        
        
        private func setupCollectionView() {
            let nib = UINib(nibName: "bookCollectionViewCell", bundle: nil)
            collectionView.register(nib, forCellWithReuseIdentifier: "bookCollectionViewCell")
            collectionView.dataSource = self
            collectionView.delegate = self
            collectionView.collectionViewLayout = UICollectionViewFlowLayout()
            
            
        }
        
        // MARK: CollectionViewCell
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return viewModel.books.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for : indexPath) as! PhotoCell
            cell.setup(with: viewModel.books[indexPath.row])
            let thatBook = searchResponde?.title[indexPath.row]
            cell.textLabel?.text = thatBook.title
            return cell
        }
        
        
    }
    
    // MARK: PushChoiseViewController
    
    
    //func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //    let storyboard = UIStoryboard(name: "ChoiseViewController", bundle: nil)
    //    let anotherVC = storyboard.instantiateViewController(withIdentifier: "\(ChoiseViewController.self)")
    //    present(anotherVC, animated: true)
    //
    //}
    
    
    //func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let anotherVC = storyboard.instantiateViewController(withIdentifier: "ChoiceViewController")
    //    self.navigationController?.pushViewController(anotherVC, animated: true)
    //}
    
    
    
    // MARK: FlowLayout
    
    extension LibraryViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let collectionWidth = (collectionView.frame.width / 2) - 10
            return CGSize(width: collectionWidth, height: collectionWidth)
        }
        
        // MARK: SearchBar
        
        extension LibraryViewController : UISearchBarDelegate {
            func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
                let urlString = "https://openlibrary.org/works\(searchText)"
                
                timer?.invalidate()
                timer = Timer.scheduledTimer(withTimeInterval: 0,5, repeats: false,
                 block: {(_) in
                    self.apiService.request(urlString: urlString) { [weak self] (result) in
                    switch result {
                    case .success(let searchResponde):
                        self.searchResponde
                        self.collectionView.reloadData()
                    case .failure(let error):
                        print("error:", error)
                    }
            }
            
            
        })
        
    }
    
    
}
