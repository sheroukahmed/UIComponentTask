//
//  ViewController.swift
//  UIComponentTest
//
//  Created by  sherouk ahmed  on 07/01/2025.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let orderView = View1Builder()
            .setImage(img: UIImage(named: "productImage"))
            .setTitle(title: "Order #NFD1234")
            .setprice(price: "600 SAR")
            .setCount(count: "3 Items")
            .setstatus(status: "Delivered")
            .setstatusColor(color: UIColor.systemGreen)
        .Build()
        orderView.frame = CGRect(x: 16, y: 100, width: self.view.frame.width - 32, height: 100)
       // orderView.ComponentApperance()
        self.view.addSubview(orderView)
        self.view.layoutIfNeeded()
    }
    
    


}

