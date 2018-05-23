//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Andrew Ramirez on 5/21/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
 

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title

    }
}
