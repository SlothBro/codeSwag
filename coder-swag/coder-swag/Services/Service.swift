//
//  Service.swift
//  coder-swag
//
//  Created by Andrew Ramirez on 5/21/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import Foundation

class DataService {
    //singleton: created constant static (only one copy in memory)
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        ]
    
    private let hats = [
        Product(title: "Deveslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo SnapBack", price: "$20", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Deveslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png"),
        ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt03.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt04.png"),
        ]
    
    //create an empty array to help prevent crashes
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category] {
            return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getshirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return gethoodies()
        case "DIGITAL":
            return getdigitalGoods()
        default:
            return getshirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func gethoodies() -> [Product] {
        return hoodies
    }
    
    func getshirts() -> [Product] {
        return shirts
    }
    
    func getdigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}
