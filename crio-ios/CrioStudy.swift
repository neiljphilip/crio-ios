//
//  CrioStudy.swift
//  crio-ios
//
//  Created by Neil Philip on 7/27/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation

public class CrioStudy{
    
    internal var siteKey : Int64 = 0
    open func getSiteKey() -> Int64 { return siteKey }
    open func setSiteKey(mySK: Int64) -> Void { siteKey = mySK }
    
    internal var studyKey : Int64 = 0
    open func getStudyKey() ->  Int64 { return siteKey }
    open func setStudyKey(myStK : Int64) -> Void { studyKey = myStK }
    
    internal var statusAsString : String = ""
    open func getStatusAsString() ->  String { return statusAsString }
    open func setStatusAsString(mySAS : String) -> Void { statusAsString = mySAS }
    
    internal var protocolNumber : String = ""
    open func getProtocolNumber() ->  String { return protocolNumber }
    open func setProtocolNumber(myPN : String) -> Void { protocolNumber = myPN }
    
    internal var sponsorName : String = ""
    open func getSponsorName() ->  String { return sponsorName }
    open func setSponsorName(mySN : String) -> Void { sponsorName = mySN }
    
    internal var studyUsers : Array<CrioStudyUser> = []
    open func getStudyUsers() ->  Array<CrioStudyUser> { return studyUsers }
    open func setStudyUsers(mySU : Array<CrioStudyUser>) -> Void { studyUsers = mySU }
    
    //returns the role of the user for this study
    open func getUserRole(userKey : Int64) -> Int {
        for studyUser : CrioStudyUser in studyUsers
        {
            if (studyUser.getRole() == nil) { continue }
            
            if (studyUser.getUserKey() == (userKey)) {
                return studyUser.getRole()!
            }
        }
        
        return SubjectBinder.S_ROLE_READ_ONLY
    }
    
    
}

