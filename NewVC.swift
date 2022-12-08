//
//  NewVC.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 19/09/22.
//

import UIKit

class NewVC: UIViewController {

    @IBOutlet weak var iconimgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)


    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        iconimgView.isHidden = true
        do {
           sleep(1)
        }
        let b = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(b, animated: true)
    }

  

}
