//
//  DetailsVC1.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 29/09/22.
//

import UIKit

class DetailsVC1: UIViewController {

    @IBOutlet weak var detailVCImg: UIImageView!
    
    @IBOutlet weak var detailVCLabel: UILabel!
    
    @IBOutlet weak var detailabout: UILabel!
    
    @IBOutlet weak var newPriData: UILabel!
    
    @IBOutlet weak var discountData: UILabel!
    
    @IBOutlet weak var oldPriData: UILabel!
    
    
    var img = UIImage()
    var label_name = ""
    var detail_Mob = ""
    var new_pri = ""
    var old_pri = ""
    var dis = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailVCImg.image = img
        detailVCLabel.text = label_name
        detailabout.text = detail_Mob
        newPriData.text = new_pri
        discountData.text = dis
        oldPriData.text = old_pri
        
        
       
    }
    
}
