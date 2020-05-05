//
//  FirstSignUpVC.swift
//  Crecker
//
//  Created by elesahich on 2020/05/04.
//  Copyright © 2020 elesahich. All rights reserved.
//

import UIKit

class FirstSignUpVC: UIViewController {
    
    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBarAppearence()
//        textFieldAppearence()
//        print(textFields[0])
    }
    
    //MARK: - UI
    private func navigationBarAppearence() {
        
        guard let navigationBar: UINavigationBar = self.navigationController?.navigationBar else { return }
        
        // 투명
        navigationBar.isTranslucent = false
        navigationBar.backgroundColor = UIColor.clear
        navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationBar.shadowImage = UIImage()
        
        // BackIndicator
        let indicatorImage = UIBarButtonItem(image: UIImage(named: "backIndicator"), style: .plain, target: self, action: #selector(dismissVC))
        navigationItem.setLeftBarButton(indicatorImage, animated: true)
        
        // TitleLabel
        let attrs = [NSAttributedString.Key.font: UIFont(name: "Montserrat-Bold", size: 24)!]
        navigationBar.titleTextAttributes = attrs
        self.navigationItem.title = "Sign-Up"
    }
    
    private func textFieldAppearence() {
        for i in 0..<textFields.count {
            let _: UITextField = {
                let tf = textFields[i]
                
                tf.layer.borderColor = UIColor.lightGray.cgColor
                tf.layer.borderWidth = 0.3
                
                return tf
            }()
        }
    }
    
    @objc func dismissVC() {
        self.navigationController?.popViewController(animated: true)
    }
}
