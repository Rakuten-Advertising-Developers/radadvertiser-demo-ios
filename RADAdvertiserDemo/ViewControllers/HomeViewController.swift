//
//  HomeViewController.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 13.04.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import UIKit
import RakutenAdvertisingAttribution

class HomeViewController: UIViewController {
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    let refreshControl = UIRefreshControl()
    
    private var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollectionView.setCollectionViewLayout(ProductCollectionViewLayout(), animated: false)
        
        refreshControl.addTarget(self, action: #selector(loadData), for: .valueChanged)
        productsCollectionView.refreshControl = refreshControl
        
        loadData()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Request Tracking",
                                                            style: .done,
                                                            target: self, action: #selector(requestTracking))
    }
    
    @objc func requestTracking() {
        
        #if targetEnvironment(simulator)

        RakutenAdvertisingAttribution.shared.adSupport.isTrackingEnabled = true
        RakutenAdvertisingAttribution.shared.adSupport.advertisingIdentifier = "some_test_identifier"

        #else
        
        IDFAFetcher.requestTracking {
            RakutenAdvertisingAttribution.shared.adSupport.isTrackingEnabled = $0
            RakutenAdvertisingAttribution.shared.adSupport.advertisingIdentifier = $1.uuidString
        }
        
        #endif
    }
    
    @objc func loadData() {
        
        if !refreshControl.isRefreshing {
            refreshControl.beginRefreshing()
        }
        
        DataProvider<Product>().receiveCollection(name: "products") { (result) in
                
            self.refreshControl.endRefreshing()

            switch result {
            case .success(let products):
                self.products = products
                self.productsCollectionView.reloadData()
            case .failure(let error):
                print(error)
                break
            }
        }
    }
}

extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ProductCell.self), for: indexPath) as! ProductCell
        
        let product = products[indexPath.row]
        
        cell.nameLabel.text = product.name
        cell.priceLabel.text = NumberFormatter.string(decimal: product.price)
        
        if let url = product.imageURLString.flatMap({ URL(string: $0) }) {
            cell.productImageView.load(url: url)
        } else {
            cell.productImageView.image = nil
        }
        
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProductDetailsViewController") as! ProductDetailsViewController
        vc.product = products[indexPath.row]
        
        present(UINavigationController(rootViewController: vc), animated: true)
    }
}
