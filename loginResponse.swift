//
//  loginResponse.swift
//  crio-ios
//
//  Created by Neil Philip on 5/21/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation
import EVReflection



public class LoginResponse : EVObject {
    
    open var securityToken : String = ""
    open func getSecurityToken() -> String {
        return securityToken;
    }
    
    open func setSecurityToken(secToken: String) -> Void {
        securityToken = secToken;
    }
    
    open var user: CrioUser = CrioUser()
    open func getUser() -> CrioUser {
        return user;
    }
    
    open func setUser(usr: CrioUser) -> Void {
        user = usr;
    }
    /*
    required public init(map: Mapper) throws {
        try{
            self.securityToken = map.from("securityToken")
            self.user = map.from("user")
        }
    }
     */
    
    open static func createFromJson(JSON: NSDictionary) -> LoginResponse {
        
        return LoginResponse(dictionary: JSON)
    }

  
    
}
