//
//  AlertView.swift
//  ConstantFramework
//
//  Created by Apple on 01/12/17.
//

import Foundation
import UIKit

public class AlertViewController : NSObject{
    
    public static let instance = AlertViewController()
    
    public func showOkCancelAlertView(title : String , Message : String, okActionTitle : String, cancleActionTitle : String, okAction: @escaping (_ action :UIAlertAction) -> Void , cancelAction: @escaping (_ action :UIAlertAction) -> Void) -> UIAlertController{
        let dialogMessage = UIAlertController(title: title, message: Message , preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: okActionTitle, style: .default, handler: okAction)
        // Create Cancel button with action handler
        let cancel = UIAlertAction(title: cancleActionTitle, style: .cancel,handler: cancelAction)
        //Add OK and Cancel button to dialog message
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        return dialogMessage
    }
    
    public func showOkAlertView(title : String , Message : String, okActionTitle : String, okAction: @escaping (_ action :UIAlertAction) -> Void) -> UIAlertController{
        let dialogMessage = UIAlertController(title: title, message: Message , preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: okActionTitle, style: .default, handler: okAction)
        //Add OK button to dialog message
        dialogMessage.addAction(ok)
        return dialogMessage
    }
    
}

