//
//  DealershipDetailsViewController.swift
//  Mercedes
//
//  Created by Kiprop Korir on 23/04/2019.
//  Copyright © 2019 Kiprop Korir. All rights reserved.
//

import UIKit

class DealershipDetailsViewController: UIViewController {
    @IBOutlet weak var ivDealership: UIImageView!
    
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTimes: UILabel!
    
    var dealership: Dealership? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

lblName.text = dealership?.name
        lblLocation.text = "Location: \(dealership?.location ?? "")"
        lblTimes.text = "Opens from: \(dealership?.opening_times ?? "")"
        ivDealership.sd_setImage(with: Foundation.URL(string: dealership?.image_url ?? ""), placeholderImage: #imageLiteral(resourceName: "placeholder"))
    }
  
    @IBAction func seeMapLocation(_ sender: Any) {
    }
    
    @IBAction func callDealership(_ sender: Any) {
    }
}
