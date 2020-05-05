//
//  LoginVC.swift
//  Crecker
//
//  Created by elesahich on 2020/04/12.
//  Copyright © 2020 elesahich. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var creckerLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet  var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCreckerLabel()
        navigationBarAppearence()
    }
    
    // MARK:- UI UX
    func setCreckerLabel() {
        creckerLabel.font = UIFont(name: "Montserrat-Medium", size: 14)
        creckerLabel.text = "Crack the Creator's Limits!"
    }
    
    private func navigationBarAppearence() {
           guard let navigationBar = self.navigationController?.navigationBar else { return }
           
           navigationBar.isTranslucent = false
           navigationBar.backgroundColor = UIColor.clear
           navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationBar.shadowImage = UIImage()
       }
    
    // MARK:- Action
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "FirstSignUpVC") as? FirstSignUpVC else { return }
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
    
    
    
}
