//
//  ErrorModel.swift
//  FoodLand
//
//  Created by Omar on 04/01/2021.
//

import Foundation

struct EtihadError: Error {
    var statusCode  : Int
    var msg: ErrorMessage
    
    init(statusCode: Int, message: ErrorMessage) {
        self.statusCode = statusCode
        self.msg    = message
    }
}

enum ErrorMessage: String {
    case decodingError = "The Response From The Server Was In Invalid Format"
    case serverError = "There Was An Error In Server, Please Try Agin Later!"
}

//// MARK: - ErrorModel
//struct ErrorModel: Codable, Error {
//    var msg: String?
//    var statusCode: Int?
//    var success: Bool?
//}

// MARK: - NotificationsModel
struct ErrorModel: Codable, Error {
    var msg: String?
    var success: Bool?
    var statusCode: Int?
    var payload: Payload?
}

// MARK: - Payload
struct Payload: Codable {
    var error: String?
}


struct GeneralModel: Codable {
    var msg: String?
    var statusCode: Int?
    var success: Bool?
}
