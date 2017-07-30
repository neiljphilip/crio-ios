//
//  CrioStudyUser.swift
//  crio-ios
//
//  Created by Neil Philip on 7/30/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation

public class CrioStudyUser {
    
    internal var userKey : Int64 = 0
    open func getUserKey() -> Int64 { return userKey }
    open func setUserKey(myUK : Int64) -> Void { userKey = myUK }
    
    internal var firstName : String = ""
    open func getFirstName() -> String { return firstName }
    open func setFirstName(myFN : String) -> Void { firstName = myFN }
    
    internal var lastName : String = ""
    open func getLastName() -> String { return firstName }
    open func setLastName(myLN : String) -> Void { lastName = myLN }
    
    internal var role : Int? = 0
    open func getRole() -> Int? { return role }
    open func setRole(myRole : Int?) { role = myRole }
    
    open func equals(o : AnyObject) -> Bool {
        return (getUserKey() == (o as! CrioStudyUser).getUserKey())
    }
    
    
    
    
    
    
}
