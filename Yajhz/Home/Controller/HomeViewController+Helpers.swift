//
//  HomeViewController+Helpers.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import Foundation
import UIKit

extension HomeViewController{
    func navigationAppearence(){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .clear
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        let backItemAppearance = UIBarButtonItemAppearance()
        backItemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.clear] // fix text color
        appearance.backButtonAppearance = backItemAppearance
        
        UINavigationBar.appearance().tintColor = UIColor.black
        
        if let font = UIFont(name: "Al Nile", size: 18) {
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                                               NSAttributedString.Key.font: font]
        }
        
        navigationItem.titleView?.tintColor = .black
        
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = self.navigationController?.navigationBar.standardAppearance
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance

        addleftBarButtonItem()
    }
    func addleftBarButtonItem() {
        
        cartBT.frame = CGRect(x: 20, y: 0, width: 42, height: 42)
        cartBT.tintColor = .clear
        cartBT.setImage(UIImage(named: "Group 2"), for: .normal)
        cartBT.contentMode = .scaleAspectFill
        
        listBT.frame = CGRect(x: 20, y: 0, width: 42, height: 42)
        listBT.tintColor = .clear
        listBT.setImage(UIImage(named: "Group"), for: .normal)
        listBT.contentMode = .scaleAspectFill
        
        let cartBTleftBarButton = UIBarButtonItem(customView: cartBT)
        let listBTleftBarButton = UIBarButtonItem(customView: listBT)

        navigationItem.rightBarButtonItems = [cartBTleftBarButton , listBTleftBarButton]
    }
}
