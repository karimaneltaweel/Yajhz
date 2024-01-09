//
//  Urls.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import Foundation
class URLs {
    
    static let Instance = URLs()
    private init() {}
    
    let url = "https://yogahez.mountasher.online/api"

    func HomeCategories() -> String {
        url + "/home-base-categories"
    }
    
    func HomeTranding() -> String {
        url + "/trending-sellers?lat=&lng=en&filter=1"
    }
    
    func HomePopular() -> String {
        url + "/popular-sellers?lat=&lng=en&filter=1"
    }
    
    func favourite() -> String {
        url + "/favorite"
    }
    
    func getUserProfile() -> String {
        url + "/client-profile"
    }
}
