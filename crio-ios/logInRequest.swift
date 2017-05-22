//
//  logInRequest.swift
//  crio-ios
//
//  Created by Neil Philip on 5/21/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation

open class LoginRequest{
    
    open var username : String = ""
    open func getUsername() -> String {
        return username;
    }
    open func setUsername(_ enterName: String) -> Void {
        username = enterName;
    }
    
    open var password : String = "";
    open func getPassword() -> String{
        return password;
    }
    open func setPassword(_ pword: String) -> Void {
        password = pword;
    }
    
    
}

