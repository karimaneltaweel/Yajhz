//
//  HomeViewController+API.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import Foundation
import UIKit

extension HomeViewController{
    func getHomeCategories() {
        NetworkCall.shared.homeCategories(view: self.view) { [weak self] result in
            switch result {
            case .success(let data):
                if data?.success == true {
                    self?.categoryData = data
                    self?.homeTable.reloadData()
                }else{
                }
            case .failure(let error):
                if let error = error as? EtihadError {
                    self?.makeOkAlert(title: error.msg.rawValue, SubTitle: "", Image: UIImage())
                }else{
                    self?.makeOkAlert(title: (error as? ErrorModel)?.msg ?? "", SubTitle: "", Image: UIImage())
                }
            }
        }
    }
    
    func getHomePopular() {
        NetworkCall.shared.homePopular(view: self.view) { [weak self] result in
            switch result {
            case .success(let data):
                if data?.success == true {
                    self?.popularData = data
                    self?.homeTable.reloadData()
                }else{
                }
            case .failure(let error):
                if let error = error as? EtihadError {
                    self?.makeOkAlert(title: error.msg.rawValue, SubTitle: "", Image: UIImage())
                }else{
                    self?.makeOkAlert(title: (error as? ErrorModel)?.msg ?? "", SubTitle: "", Image: UIImage())
                }
            }
        }
    }
    
    func getHomeTranding() {
        NetworkCall.shared.homeTranding(view: self.view) { [weak self] result in
            switch result {
            case .success(let data):
                if data?.success == true {
                    self?.trandingData = data
                    self?.homeTable.reloadData()
                }else{
                }
            case .failure(let error):
                if let error = error as? EtihadError {
                    self?.makeOkAlert(title: error.msg.rawValue, SubTitle: "", Image: UIImage())
                }else{
                    self?.makeOkAlert(title: (error as? ErrorModel)?.msg ?? "", SubTitle: "", Image: UIImage())
                }
            }
        }
    }

    func favourite(productId:String) {
        NetworkCall.shared.favorite(view: self.view, productId: productId) { [weak self] result in
            switch result {
            case .success(let data):
                if data?.success == true {
                    self?.makeOkAlert(title: "", SubTitle: data?.message ?? "", Image: UIImage())
                    self?.getHomePopular()
                }else{
                }
            case .failure(let error):
                if let error = error as? EtihadError {
                    self?.makeOkAlert(title: error.msg.rawValue, SubTitle: "", Image: UIImage())
                }else{
                    self?.makeOkAlert(title: (error as? ErrorModel)?.msg ?? "", SubTitle: "", Image: UIImage())
                }
            }
        }
    }
    
    func getUserProfile() {
        NetworkCall.shared.userProfile(view: self.view) { [weak self] result in
            switch result {
            case .success(let data):
                if data?.success == true {
                    self?.userNameLB.text =  "Hello \(data?.data?.name ?? "")"
                    self?.locationLB.text =  data?.data?.addresses?.last?.address ?? "UnKnown address"
                    self?.homeTable.reloadData()
                }else{
                }
            case .failure(let error):
                if let error = error as? EtihadError {
                    self?.makeOkAlert(title: error.msg.rawValue, SubTitle: "", Image: UIImage())
                }else{
                    self?.makeOkAlert(title: (error as? ErrorModel)?.msg ?? "", SubTitle: "", Image: UIImage())
                }
            }
        }
    }
    
}
