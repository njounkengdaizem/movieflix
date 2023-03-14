//
//  MovieTabBarControllerViewController.swift
//  Flixter
//
//  Created by Daize Njounkeng on 3/13/23.
//

import UIKit

class MovieTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = .systemOrange
        self.ChangeRadiusOfTabBar()
        self.ChangeUnselectedColor()

    }
    
    func ChangeRadiusOfTabBar(){
        self.tabBar.layer.masksToBounds = true
        self.tabBar.isTranslucent = true
        self.tabBar.layer.cornerRadius = 40
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    func ChangeUnselectedColor(){
        self.tabBar.unselectedItemTintColor = .darkGray
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        self.AnimateTabItem(item)
    }
    
    func AnimateTabItem(_ item: UITabBarItem) {
        guard let barItemView = item.value(forKey: "view") as? UIView else { return }

        let timeInterval: TimeInterval = 0.6
        let propertyAnimator = UIViewPropertyAnimator(duration: timeInterval, dampingRatio: 0.5) {
            barItemView.transform = CGAffineTransform.identity.scaledBy(x: 3.0, y: 3.0)
        }
        propertyAnimator.addAnimations {
            barItemView.transform = .identity
        }
        propertyAnimator.startAnimation(afterDelay: timeInterval)
    }

    

}
