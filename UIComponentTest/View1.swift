//
//  View1.swift
//  UIComponentTest
//
//  Created by  sherouk ahmed  on 07/01/2025.
//

import UIKit

class View1: UIView {

    @IBOutlet weak var productImg: UIImageView!
    
    @IBOutlet weak var Title: UILabel!
    
    @IBOutlet weak var Price: UILabel!
    
    @IBOutlet weak var ItemsCount: UILabel!
    
    @IBOutlet weak var statusView: UIView!
    
    @IBOutlet weak var Status: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func ComponentApperance (){

        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true

        productImg.layer.cornerRadius = productImg.frame.width / 2
        productImg.layer.cornerRadius = productImg.frame.height / 2
        productImg.clipsToBounds = true
        
        statusView.layer.cornerRadius = 12
        statusView.clipsToBounds = true
        
    }
    
    func Construct (productImage: UIImage?, title: String?, price: String?, itemsCount: String?, status: String?, statusColor: UIColor?){
        
        if let image = productImage {
            productImg.isHidden = false
            productImg.image = image
        } else {
            productImg.isHidden = true
        }
        self.layoutIfNeeded()

        if let title = title, !title.isEmpty {
            Title.isHidden = false
            Title.text = title
        } else {
            Title.isHidden = true
        }
        self.layoutIfNeeded()
        
        if let status = status, !status.isEmpty {
            statusView.isHidden = false
            Status.isHidden = false
            Status.text = status
            if let statusColor = statusColor {
                Status.textColor = statusColor
                statusView.backgroundColor = statusColor.withAlphaComponent(0.1)
            }
        } else {
            statusView.isHidden = true
            Status.isHidden = true
        }
        self.layoutIfNeeded()
        
        Price.text = price
        ItemsCount.text = itemsCount
        
    }
    
    
    
    
}

class View1Builder{
    var productImage: UIImage?
    var title: String?
    var price: String?
    var itemsCount: String?
    var status: String?
    var statusColor: UIColor?

    func setImage (img : UIImage?) -> View1Builder{
        self.productImage = img
        return self
    }

    func setTitle (title : String?) -> View1Builder{
        self.title = title
        return self
    }

    func setprice (price : String?) -> View1Builder{
        self.price = price
        return self
    }

    func setCount (count : String?) -> View1Builder{
        self.itemsCount = count
        return self
    }

    func setstatus (status : String?) -> View1Builder{
        self.status = status
        return self
    }

    func setstatusColor (color : UIColor?) -> View1Builder{
        self.statusColor = color
        return self
    }


    func Build()-> View1 {
        //let orderView = Bundle.main.loadNibNamed("View", owner: self, options: nil)?.first as! View1
        
        let orderView = Bundle.main.loadNibNamed("View", owner: nil, options: nil)?.first as! View1
        orderView.ComponentApperance()
        orderView.Construct(productImage: productImage,
                            title: title,
                            price: price,
                            itemsCount: itemsCount,
                            status: status,
                            statusColor: statusColor)

        return orderView
    }
 
}
