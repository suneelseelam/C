//
//  NetworkReachability.swift
//  ConstantFramework
//
//  Created by Apple on 05/12/17.
//

import Foundation
import UIKit
import Reachability

public class Reachablilityswift {
    
    public static let _instance              = Reachablilityswift()
    
    let reachability                          = Reachability()
    
    public var networkConnectionBool          : Bool = true
    
   public static var Instance                 : Reachablilityswift {
        return _instance
    }
    
    //MARK:- Call Internet Connection
    
  public func callInternetConnection() {
        
    NotificationCenter.default.addObserver(self, selector: #selector(self.reachabilityChanged),name: NSNotification.Name.reachabilityChanged,object: reachability)
        do{
            try reachability?.startNotifier()
        }catch{
            print("could not start reachability notifier")
        }
    }
    
    //MARK:- Stop Call Internet Connection
    
  public  func stopCallInternetConnection(){
    reachability?.stopNotifier()
        NotificationCenter.default.removeObserver(self,
                                                  name: NSNotification.Name.reachabilityChanged,
                                                  object: reachability)
    
    
    }
    
    @objc func reachabilityChanged(note: Notification) {
      
        let reachability = note.object as! Reachability
        if reachability.connection == .wifi{
              print("Reachable via WiFi")
               networkConnectionBool = true
        }else if reachability.connection == .cellular{
              print("Reachable via Cellular")
               networkConnectionBool = true
        }else{
             networkConnectionBool = false
        }
    }
}


