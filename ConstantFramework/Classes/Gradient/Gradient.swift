//
//  Gradient.swift
//  ConstantFramework
//
//  Created by Apple on 05/12/17.
//

import Foundation
import UIKit

public class Gradient : NSObject {
    
    public static let instance = Gradient()
    
    public func applyGradient(view : UIView , startPoint : CGPoint? , endPoint : CGPoint? ,colours: [UIColor], locations: [NSNumber]?) ->  UIView {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = colours.map { $0.cgColor }
        if let grdlocation = locations{
            gradient.locations = grdlocation
        }
        if let CGStartPoint = startPoint{
            gradient.startPoint = CGStartPoint
        }
        if let CGEndpoint = endPoint{
            gradient.endPoint = CGEndpoint
        }
        view.layer.addSublayer(gradient)
        return view
    }
}
