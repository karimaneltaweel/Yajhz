//
//  HomeViewController+TableDelegates.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import Foundation
import UIKit

// MARK: - Table delegates
extension HomeViewController:UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesTableViewCell", for: indexPath) as! CategoriesTableViewCell
            cell.categoriesData = categoryData
            cell.categoriesCollection.reloadData()
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PopularNowTableViewCell", for: indexPath) as! PopularNowTableViewCell
            cell.popularData = popularData
            
            cell.favPressed = { [unowned self] index in
                favourite(productId: String(popularData?.data?[index].id ?? 0))
                cell.popularCollection.reloadData()
            }
            
            cell.popularCollection.reloadData()
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrandingNowTableViewCell", for: indexPath) as! TrandingNowTableViewCell
            cell.trandingData = trandingData
            cell.trandingCollection.reloadData()
            return cell
        }
    }
}
// MARK: - Table header
extension HomeViewController{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as! HeaderTableViewCell
        switch section {
        case 0:
            header.headerName.text = "Categories"
            break
        case 1:
            header.headerName.text = "Popular now"
            break
        default:
            header.headerName.text = "Tranding now"
            break
        }
        return header
        
    }
}
