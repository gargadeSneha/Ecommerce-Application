//
//  ViewController.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 19/09/22.
//

import UIKit

class ViewController: UIViewController {
    
   // @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
       // indicator.color = .blue
         //setLoder()
        self.navigationItem.setHidesBackButton(true, animated: true)

    }
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        indicator.isHidden = false
        indicator.startAnimating()
        print("start")
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        do
        {
            sleep(3)
            
        }
        
        indicator.isHidden = true
        indicator.startAnimating()
        print("stop")
        
        let a = storyboard?.instantiateViewController(withIdentifier: "NewVC") as! NewVC
        self.navigationController?.pushViewController(a, animated: true)
    }
    
    
}

