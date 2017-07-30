//
//  CrioSubject.swift
//  crio-ios
//
//  Created by Neil Philip on 6/9/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation

public class CrioSubject {
    
    let S_STATUS_SCREENING = 10;
    let S_STATUS_ENROLLED = 11;
    let S_STATUS_SCREEN_FAIL = 12;
    let S_STATUS_DISCONTINUED = 13;
    let S_STATUS_COMPLETED = 20;
    
    open func getStatusAsString() -> String {
        if (S_STATUS_SCREENING == getStatus()){ return "Screening";}
        if (S_STATUS_ENROLLED == getStatus()) {return "Enrolled";}
        if (S_STATUS_SCREEN_FAIL == getStatus()) {return "Screen Fail";}
        if (S_STATUS_DISCONTINUED == getStatus()) {return "Discontinued";}
        if (S_STATUS_COMPLETED == getStatus()) {return "Completed";}
        return "";
    }
    
    open func getIsStatusScreening() -> Bool{
        return (S_STATUS_SCREENING == getStatus())
    }
    open func getIsStatusEnrolled() -> Bool{
        return (S_STATUS_ENROLLED == getStatus())
    }
    open func getIsStatusCompleted() -> Bool{
        return (S_STATUS_COMPLETED == getStatus())
    }
    open func getIsStatusDiscontinued() -> Bool{
        return (S_STATUS_DISCONTINUED == getStatus())
    }
    open func getIsStatusScreenFail() -> Bool{
        return (S_STATUS_SCREEN_FAIL == getStatus())
    }
   
    internal var subjectKey : Int64 = 0
    open func getSubjectKey() -> Int64 { return subjectKey }
    open func setSubjectKey(mySK : Int64) -> Void { subjectKey = mySK }
    
    internal var studyKey : Int64 = 0
    open func getStudyKey() -> Int64 { return studyKey }
    open func setStudyKey(myStK : Int64) -> Void { studyKey = myStK }
    
    internal var status : Int = 0
    open func getStatus() -> Int { return status }
    open func setStatus(myStat : Int) { status = myStat }
    
    open func hasStatusChange() -> Bool {
        if(getOriginalStatus() == nil) { return false}
        return !(getOriginalStatus() == getStatus())
    }
    
    open func changeStatus(userKey: Int64, newStatus: Int, statusDetails: String) -> Void {
        
        if (newStatus == status) { return }
        
        setStatusChangeUserKey(userKey)
        setStatusChangeReasonDetails(statusDetails.trim())
        
        if (getOriginalStatus() == null) { setOriginalStatus(getStatus()) }
        setStatus(myStat: newStatus)
        
    }
    
    internal var originalStatus : Int? = 0
    open func getOriginalStatus() -> Int? { return originalStatus }
    open func setOriginalStatus(myOS : Int?) -> Void { originalStatus = myOS }
    
    internal var statusChangeUserKey : Int64 = 0
    open func getStatusChangeUserKey() -> Int64 { return statusChangeUserKey }
    open func setStatusChangeUserKey(mySCUK : Int64) -> Void { statusChangeUserKey = mySCUK }
    
    internal var statusChangeReasonDetails : String = ""
    open func getStatusChangeReasonDetails() -> String { return statusChangeReasonDetails }
    open func setStatusChangeReasonDetails(mySCRD : String) -> Void { statusChangeReasonDetails = mySCRD }
    
    internal var patientId : String = ""
    open func getPatientId() -> String { return patientId }
    open func setPatientId(myPID : String) -> Void { statusChangeReasonDetails = myPID }
    
    internal var initials : String = ""
    open func getInitials() -> String { return initials }
    open func setInitials(myInitials : String) -> Void { initials = myInitials }
    
    internal var firstName : String = ""
    open func getFirstName() -> String { return firstName }
    open func setFirstName(myFN : String) -> Void { firstName = myFN }
    
    internal var lastName : String = ""
    open func getLastName() -> String { return lastName }
    open func setLastName(myLN : String) -> Void { lastName = myLN }
    
}
    
    
    
    
    
    
    
    
    
    
}

