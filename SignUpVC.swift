//
//  SignUpVC.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 19/09/22.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var signUpUsername: UITextField!
    
    @IBOutlet weak var signUpEmail: UITextField!
    
    
    @IBOutlet weak var signUpPassword: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)

    }
    
    @IBAction func signupTapped(_ sender: UIButton) {
        
        let signtap = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        
        self.navigationController?.pushViewController(signtap, animated: true)
        
    }
    

}
