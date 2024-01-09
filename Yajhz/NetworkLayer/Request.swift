//
//  Request.swift
//  FoodLand
//
//  Created by Omar on 04/01/2021.
//

import Foundation
import UIKit
import Alamofire
import NVActivityIndicatorView

class Request {
    class func request<T: Codable>(url: String, method: HTTPMethod,Controller:UIView,parameters: Parameters?, encoding: ParameterEncoding , headers: HTTPHeaders?,callBack:@escaping (Result<T, Error>) -> Void) {
        
        let jsonDecodeer = JSONDecoder()
        
        print(url)
        URLCache.shared.removeAllCachedResponses()
        
        AF.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers).validate().responseDecodable(of: T.self) { (response) in
            let frame = CGRect(x: Controller.frame.width / 2 , y: Controller.frame.height / 2, width: 0, height: 0)
            let activityIndicatorView = NVActivityIndicatorView(frame: frame,
                                                                type: .ballScale)
            activityIndicatorView.color = UIColor.gray
            activityIndicatorView.padding = 100
            Controller.addSubview(activityIndicatorView)
            activityIndicatorView.startAnimating()
            switch response.result {
            case .success:
                activityIndicatorView.stopAnimating()
                if let _ = response.data {
                    guard let resultData = response.data else { fatalError() }
                    do {
                        let basicResponse = try jsonDecodeer.decode(T.self, from: resultData)
                        print(basicResponse)
                        callBack(.success(basicResponse))
                    }
                    catch(let error) {
                        let requestError = EtihadError(statusCode: 200, message: .decodingError)
                        callBack(.failure(requestError))
                    }
                }
            case .failure(let error):
                activityIndicatorView.stopAnimating()
                if (error.responseCode ?? 800) < 500 {
                    guard let resultData = response.data else { fatalError() }
                    do {
                        let basicResponse = try jsonDecodeer.decode(ErrorModel.self, from: resultData)
                        print(basicResponse)
                        callBack(.failure(basicResponse))
                    }
                    catch(let error) {
                        let requestError = EtihadError(statusCode: 200, message: .decodingError)
                        callBack(.failure(requestError))
                    }
                }else{
                    let requestError = EtihadError(statusCode: response.response?.statusCode ?? 800, message: .serverError)
                    callBack(.failure(requestError))
                }
            }
        }
    }
    
    class func postFormData<T: Codable>(url: String, params: [String:Any], headers: HTTPHeaders?, completion: @escaping(Result<T, Error>) -> Void) {
           
           URLCache.shared.removeAllCachedResponses()
           AF.upload(multipartFormData: { (multipartFormData) in
               
           }, to: url, method: .post , headers: headers)
           .responseJSON(completionHandler: { response in
               print(response.result)
               print(response.data)
               print(response)
               print(response.response)
               switch response.result {
               case .success:
                   guard let data = response.data else { return }
                   do {
                       let json = try JSONDecoder().decode(T.self, from: data)
                       completion(.success(json))
                   } catch let jsonError {
                       print(jsonError)
                       completion(.failure(jsonError))
                   }
               case .failure(let error):
                   print(error.localizedDescription)
                   completion(.failure(error))
               }
           })
       }
}
