//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Juan Bonforti on 27/06/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    private var myController: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myGreenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "viewControllerGreen")
        let myPinkVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "viewControllerPink")
        
        myController.append(myGreenVC)
        myController.append(myPinkVC)
        
        setViewControllers([myGreenVC], direction: .forward, animated: true, completion: nil)
        
        dataSource = self
    }

}

// MARK: Extension PageViewControllerDataSource
extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = myController.firstIndex(of: viewController)
        if index == 0 {
            return myController.last
        } else {
            return myController.first
        }
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = myController.firstIndex(of: viewController)
        if index == 0 {
            return myController.last
        } else {
            return myController.first
        }
    }
    
    
}
