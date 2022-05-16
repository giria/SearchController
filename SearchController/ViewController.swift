//
//  ViewController.swift
//  SearchController
//
//  Created by Joan Barrull on 15/05/2022.
//

import UIKit

class ViewController: UIViewController, UISearchResultsUpdating {
    
    
    let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Search"
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
    }

    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        print (text)
    }
}

