//
//  LoginVC.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 19/09/22.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var logusername: UITextField!
    
    
    @IBOutlet weak var logpassword: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)


    }
     

    @IBAction func loginBtnTapped(_ sender: UIButton) {
        let login = storyboard?.instantiateViewController(withIdentifier: "SliderVC") as! SliderVC
        self.navigationController?.pushViewController(login, animated: true)
        
    }
    
    @IBAction func googleBtnTapped(_ sender: UIButton) {
        
        let google = storyboard?.instantiateViewController(withIdentifier: "SliderVC") as! SliderVC
        
        self.navigationController?.pushViewController(google, animated: true)
        
    }
    
    @IBAction func appleBtnTapped(_ sender: UIButton) {
        
        let apple = storyboard?.instantiateViewController(withIdentifier: "SliderVC") as! SliderVC
        
        self.navigationController?.pushViewController(apple, animated: true)
        
    }
    
    @IBAction func signUpBtnTapped(_ sender: UIButton) {
         
        let sign = storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        
        self.navigationController?.pushViewController(sign, animated: true)
        
    }
    
    @IBAction func forgetPassBtnTapped(_ sender: UIButton) {
        let forget = storyboard?.instantiateViewController(withIdentifier: "ForgetPassVC") as! ForgetPassVC
        
        self.navigationController?.pushViewController(forget, animated: true)
        
    }
    
    
}
