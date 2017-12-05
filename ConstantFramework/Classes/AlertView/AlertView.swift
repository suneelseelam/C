//
//  AlertView.swift
//  ConstantFramework
//
//  Created by Apple on 01/12/17.
//

import Foundation
import UIKit

public class AlertView : NSObject{
    
    public static let instance = AlertView()
    
    public func showAlertView(title : String , Message : String,  okAction: @escaping (_ action :UIAlertAction) -> Void , cancelAction: @escaping (_ action :UIAlertAction) -> Void) -> UIAlertController{
        let dialogMessage = UIAlertController(title: title, message: Message , preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: okAction)
        // Create Cancel button with action handler
        let cancel = UIAlertAction(title: "Cancel", style: .cancel,handler: cancelAction)
        //Add OK and Cancel button to dialog message
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        return dialogMessage
    }
}

