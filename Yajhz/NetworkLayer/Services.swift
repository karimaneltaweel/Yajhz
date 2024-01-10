//
//  Services.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import Foundation
import Alamofire

class NetworkCall {
    static let shared = NetworkCall()
    private init() {}
    
    func homeCategories(view:UIView,completion :@escaping (Result<HomeCategories?,Error>) -> Void) {
        Request.request(url: URLs.Instance.HomeCategories(),method: .get, Controller: view, parameters: nil, encoding: URLEncoding.default, headers:nil, callBack:completion)
    }
    
    func homeTranding(view:UIView,completion :@escaping (Result<HomeTranding?,Error>) -> Void) {
        Request.request(url: URLs.Instance.HomeTranding(),method: .get, Controller: view, parameters: nil, encoding: URLEncoding.default, headers:nil, callBack:completion)
    }
    
    func homePopular(view:UIView,completion :@escaping (Result<HomePopular?,Error>) -> Void) {
        
        let header: HTTPHeaders = [
            "Authorization": "Bearer \(UserDefaults.standard.string(forKey: "userToken") ?? "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNmNjMDFkY2QwYmYwYTg3MzU4YWQzMjFmYTI1YjZmNGFjOWM4ODcxNzVkNjQ4YTkwYzkwZGMxOTEzOTg4YjI2NjY3ODI1NTNkYjZkMDIxMzIiLCJpYXQiOjE3MDQ2NDg3NDguOTA3NDkzLCJuYmYiOjE3MDQ2NDg3NDguOTA3NDk5LCJleHAiOjE3MzYyNzExNDguOTAxNTgzLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.Z_DPqryKcvsq1Op47hMQUIxqlA7GA8TiZXw2dgt_1FyF7XoUbvZz8OdTIbDXTzwWVHebaFrqALZRqgLBg6i0je4VZSroH7aNX2qYT6nEN8pMZaik-or2fRyShB5-3dFZRw5DPtfFmWFdfiZG1e4CtT27Q0rus9S16llEn6UEr-wmkHGclfMw-2POKcQOzPMm7zevynHrDWjF1C_HYtt1xC7wS9ekunqPkKSkOlX7kcweq7ex7wa_BBa7xinGEB3BDrdvz-g_nAt-UoXuIwShsmHFy-tpei5YJbkIi69tq0CWVaObrT5umATbEd0Z24LVr3f05O_XoHSz3vbNVvCgDjkcwfB35LXEuzjKldhCKzls01-C128tGgq4_10HP4QdtulWBZiFC7wkJqB5CuvD7rjEcbwcuZm63sjo4E5rrxeRN94qC074s3HwfDG4ApjrDmtGJ_UTE3sLy_2smO92gHVIV5iH_Vlk5TB_ij2bvChAOPNQkb4Jvg29p8fJuqZsaNvJIuwdrb80TXqDftbqYZQ3aZDoHb4nuN8Lfa61KC0vnvN4E6yLZvGlL06s11695hY-iqrhRgPsrb8EPijqcD5uli3YF2LYNX082gZ14kk3sGulngESZKVJQN79tW4CyvgNv3NAQO3NywDlMGHsxL8OX7MjSydt5O09m0SEcZ8")"
        ]
        
        Request.request(url: URLs.Instance.HomePopular(),method: .get, Controller: view, parameters: nil, encoding: URLEncoding.default, headers:header, callBack:completion)
    }
    
    func userProfile(view:UIView,completion :@escaping (Result<UserProfile?,Error>) -> Void) {
        let header: HTTPHeaders = [
            "Authorization": "Bearer \(UserDefaults.standard.string(forKey: "userToken") ?? "")"
        ]
        
        Request.request(url: URLs.Instance.getUserProfile(),method: .get, Controller: view, parameters: nil, encoding: URLEncoding.default, headers:header, callBack:completion)
    }

    func favorite(view:UIView,productId:String,completion :@escaping (Result<Favourite?,Error>) -> Void) {
        
        let header: HTTPHeaders = [
            "Authorization": "Bearer \(UserDefaults.standard.string(forKey: "userToken") ?? "")"
        ]
        
        let parameters = [
            "user_id":productId
        ]
        
        Request.postFormData(vc: view, url: URLs.Instance.favourite(), params: parameters, headers: header, completion: completion)
    }
    
    func login(view:UIView,email:String,password:String,completion :@escaping (Result<UserProfile?,Error>) -> Void) {
        
        let parameters = [
            "email":email,
            "password":password
        ]
        
        Request.postFormData(vc: view, url: URLs.Instance.login(), params: parameters, headers: nil, completion: completion)
    }

    func register(view:UIView,email:String,password:String,phone:String,name:String,completion :@escaping (Result<UserProfile?,Error>) -> Void) {
        
        let parameters = [
            "name":name,
            "email":email,
            "password":password,
            "phone":phone,
            "device_token": " "
        ]
        
        Request.postFormData(vc: view, url: URLs.Instance.register(), params: parameters, headers: nil, completion: completion)
    }

}

