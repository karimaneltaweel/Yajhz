//
//  HomeModel.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import Foundation

// MARK: - HomeCategories
struct HomeCategories: Codable {
    var success: Bool?
    var responseCode: Int?
    var message: String?
    var data: DataClass?

    enum CodingKeys: String, CodingKey {
        case success
        case responseCode = "response_code"
        case message, data
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    var data: [Datum]?
    var cartCount: Int?

    enum CodingKeys: String, CodingKey {
        case data
        case cartCount = "cart_count"
    }
}

// MARK: - Datum
struct Datum: Codable {
    var id: Int?
    var name: String?
    var image: String?
    var active: Int?
    var nameAr, nameEn: String?
    var rate : String?
    var is_favorite:Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, name, image, active, rate ,is_favorite
        case nameAr = "name_ar"
        case nameEn = "name_en"
    }
}

// MARK: - HomeTranding
struct HomeTranding: Codable {
    var success: Bool?
    var responseCode: Int?
    var message: String?
    var data: [Datum]?

    enum CodingKeys: String, CodingKey {
        case success
        case responseCode = "response_code"
        case message, data
    }
}

// MARK: - HomePopular
struct HomePopular: Codable {
    var success: Bool?
    var responseCode: Int?
    var message: String?
    var data: [Datum]?

    enum CodingKeys: String, CodingKey {
        case success
        case responseCode = "response_code"
        case message, data
    }
}

// MARK: - Favourite
struct Favourite: Codable {
    var success: Bool?
    var responseCode: Int?
    var message: String?

    enum CodingKeys: String, CodingKey {
        case success
        case responseCode = "response_code"
        case message
    }
}

// MARK: - UserProfile
struct UserProfile: Codable {
    var success: Bool?
    var responseCode: Int?
    var message: String?
    var data: UserProfileDataClass?

    enum CodingKeys: String, CodingKey {
        case success
        case responseCode = "response_code"
        case message, data
    }
}

// MARK: - DataClass
struct UserProfileDataClass: Codable {
    var id: Int?
    var name, email, phone: String?
    var image: String?
    var type, status: Int?
    var balance: String?
    var addresses: [Address]?
    var token: String?
}

// MARK: - Address
struct Address: Codable {
    var id: Int?
    var lat, lng: String?
    var address: String?
    var street, building, apartment: String?
    var floor, name: String?
}
