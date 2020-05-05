//
//  Extensions+Font.swift
//  Crecker
//
//  Created by elesahich on 2020/04/12.
//  Copyright © 2020 elesahich. All rights reserved.
//

import UIKit

extension UIFont {
    
    // MARK: - Usage :
    // self.numberLabel.font = UIFont.Montserrats(.bold, size: 20)
    
    public enum MontserratType: String {
        
        case bold
        case extraBold
        case Medium
    }
    
    static func fontSettings(_ name: MontserratType, _ size: CGFloat) -> UIFont {
        switch name {
        case .bold:
            return UIFont(name: "MonSerrat-Bold", size: size) ?? UIFont()
        case .extraBold:
            return UIFont(name: "MonSerrat-ExtraBold", size: size) ?? UIFont()
        case .Medium:
            return UIFont(name: "MonSerrat-Medium", size: size) ?? UIFont()
            
        }
    }
    
    //    public func montserratBold(size: CGFloat) -> UIFont {
    //        return UIFont(name: "Montserrat-Bold", size: size)!
    //    }
    //    func Monserrats(_ type: MontserratType = .bold, size: CGFloat = UIFont.systemFontSize) -> UIFont {
    //        return UIFont(name: "Montserrat\(type.rawValue)", size: size)!
    //    }
    //
    //    var isBold: Bool {
    //        return fontDescriptor.symbolicTraits.contains(.traitBold)
    //    }
    //
    //    var isItalic: Bool {
    //        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    //    }
}
