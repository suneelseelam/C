//
//  NetworkReachability.swift
//  ConstantFramework
//
//  Created by Apple on 05/12/17.
//

import Foundation
import UIKit
import ReachabilitySwift

public class Reachablilityswift {
    
    public static let _instance              = Reachablilityswift()
    
    let reachability                          = Reachability()
    
    var networkConnectionBool                 : Bool = true
    
   public static var Instance                       : Reachablilityswift {
        return _instance
    }
    
    //MARK:- Call Internet Connection
    
  public func callInternetConnection() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.reachabilityChanged),name: ReachabilityChangedNotification,object: reachability)
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
                                                  name: ReachabilityChangedNotification,
                                                  object: reachability)
    }
    
    @objc func reachabilityChanged(note: Notification) {
        
        let reachability = note.object as! Reachability
        
        if reachability.isReachable {
            if reachability.isReachableViaWiFi {
                print("Reachable via WiFi")
            } else {
                print("Reachable via Cellular")
            }
            
            networkConnectionBool = true
        } else {
            print("Network not reachable")
            
            networkConnectionBool = false
        }
    }
}


