//
//  Extensions+UIColor.swift
//  Crecker
//
//  Created by elesahich on 2020/04/12.
//  Copyright © 2020 elesahich. All rights reserved.
//

import UIKit

extension UIColor {
    
    enum AssetsColor {
        
        case mainCreckerColor
    }
    
    static func staticColor (_ name: AssetsColor) -> UIColor {
        switch name {
            
        case .mainCreckerColor:
            return UIColor(red: 30/255, green: 198/255, blue: 149/255, alpha: 1.0)
           
        }
    }
}
