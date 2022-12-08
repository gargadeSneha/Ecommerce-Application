//
//  ForgetPassVC.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 19/09/22.
//

import UIKit

class ForgetPassVC: UIViewController {
    
    @IBOutlet weak var forgotEmail: UITextField!
    
    
    @IBOutlet weak var forgotNewPass: UITextField!
    
    
    @IBOutlet weak var forgotConfirmPass: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       // self.navigationItem.setHidesBackButton(true, animated: true)


        
     }
    

    @IBAction func submitBtnTapped(_ sender: UIButton) {
        
        let submittap = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        
        self.navigationController?.pushViewController(submittap, animated: true)
        
    }
    
}
