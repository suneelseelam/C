//
//  LoaderView.swift
//  ConstantFramework
//
//  Created by Apple on 28/11/17.
//

import Foundation
import UIKit
import  NVActivityIndicatorView

public class LoaderView: NSObject {
    
   public static let sharedInstance = LoaderView()

    var loader : NVActivityIndicatorView!
    var baseView : UIView = UIView()
    var dullView = UIView()
    var loadView = UIView()

    public func showLoader() {
        NotificationCenter.default.addObserver(self, selector: #selector(LoaderView.rotated), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
        let win:UIWindow = UIApplication.shared.delegate!.window!!

        baseView = UIView(frame: UIScreen.main.bounds)
        baseView.backgroundColor = UIColor.clear
        win.addSubview(baseView)

        dullView = UIView(frame: UIScreen.main.bounds)
        dullView.backgroundColor = UIColor.black
        dullView.alpha = 0.3
        baseView.addSubview(dullView)

        loadView = UIView(frame: CGRect(x: (baseView.frame.width/2)-50, y: (baseView.frame.height/2)-50, width: 100, height: 100))
        loadView.backgroundColor = UIColor.black
        loadView.alpha = 0.5
        loadView.layer.cornerRadius = 15
        baseView.addSubview(loadView)

        loader = NVActivityIndicatorView(frame: CGRect(x: (baseView.frame.width/2)-30, y: (baseView.frame.height/2)-30, width: 60, height: 60) , type: NVActivityIndicatorType.ballClipRotateMultiple, color: UIColor.white, padding: 0.5)
        baseView.addSubview(loader)
        loader.startAnimating()
    }

    public func hideLoader() {
        loader.stopAnimating()

        baseView.removeFromSuperview()
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }

    @objc func rotated() {
        DispatchQueue.main.async {
            self.baseView.frame     = UIScreen.main.bounds
            self.dullView.frame = UIScreen.main.bounds
            self.baseView.layoutIfNeeded()
            self.loadView.frame = CGRect(x: (self.baseView.frame.width/2)-50, y: (self.baseView.frame.height/2)-50, width: 100, height: 100)
            self.loader.frame = CGRect(x: (self.baseView.frame.width/2)-30, y: (self.baseView.frame.height/2)-30, width: 60, height: 60)
        }
    }
}


