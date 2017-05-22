//
//  CrioSite.swift
//  crio-ios
//
//  Created by Neil Philip on 5/22/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation

public class CrioSite{
    internal var siteKey: Int64 = 0
    open func getSiteKey() -> Int64 {
        return siteKey
    }
    
    open func setSiteKey(setKey: Int64) -> Void {
        siteKey = setKey
    }
    
    internal var organizationName: String = ""
    open func getOrganizationName() -> String {
        return organizationName
    }
    
    open func setOrganizationName(orgName : String) -> Void {
        organizationName = orgName
    }
    
    internal var name: String = ""
    open func getName() -> String {
        return name
    }
    
    open func setName(setNM : String) -> Void {
        name = setNM
    }
    
}
