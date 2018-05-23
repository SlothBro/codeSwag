//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Andrew Ramirez on 5/21/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var productsCollection : UICollectionView!
    
    //if data hasn't loaded yet from the internet or from source, this empty array will prevent the app from crashing or returning nil
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
            return ProductCell()
        }
    }


