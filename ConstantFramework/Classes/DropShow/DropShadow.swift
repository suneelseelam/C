//
//  DropShadow.swift
//  ConstantFramework
//
//  Created by Apple on 01/12/17.
//

import Foundation
import UIKit

public class DropShadow : NSObject{
    
   public static let instance = DropShadow()
    
   public func dropShadow(view : UIView , opacity : Float , offsetWidth: Float, offsetheight : Float, shadowRadious: Float , cornerRadious : Float) {
        
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5).cgColor
        view.layer.shadowOpacity = opacity
        view.layer.shadowOffset = CGSize(width: CGFloat(offsetWidth), height: CGFloat(offsetheight))
        view.layer.masksToBounds = false
        view.layer.shadowRadius = CGFloat(shadowRadious)
        view.layer.cornerRadius = CGFloat(cornerRadious)
    }
}



