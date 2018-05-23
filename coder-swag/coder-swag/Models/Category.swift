//
//  Category.swift
//  coder-swag
//
//  Created by Andrew Ramirez on 5/21/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String

    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
        
    }

}
