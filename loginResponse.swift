//
//  loginResponse.swift
//  crio-ios
//
//  Created by Neil Philip on 5/21/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation
import Mapper


public class LoginResponse: Mappable {
    
    
    
    open var securityToken : String = ""
    open func getSecurityToken() -> String {
        return securityToken;
    }
    
    open func setSecurityToken(secToken: String) -> Void {
        securityToken = secToken;
    }
    
    open CrioUser user;
    public CrioUser getUser() {
        return user;
    }
    public void setUser(CrioUser user) {
        this.user = user;
    }
    
    open static func createFromJson(json: String) -> LoginResponse {
        return new LoginResponse().gson().fromJson(json, LoginResponse.class);
    }
    
}
