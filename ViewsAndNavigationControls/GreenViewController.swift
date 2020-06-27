//
//  GreenViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Juan Bonforti on 27/06/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.isHidden = true
        
        // Delegate to self functionalities for searchBar
        mySearchBar.delegate = self
        
    }
    

}

// MARK: Extension UISearchBarDelegate
extension GreenViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        mySearchBar.resignFirstResponder()
        
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
    }
}
