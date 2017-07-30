//
//  appointment.swift
//  crio-ios
//
//  Created by Neil Philip on 6/5/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation
import EVReflection

public class Appointment : EVObject {
    let S_NAME_DELIMITER = ";"
    
    open static func createFromJson(JSON: NSDictionary) -> Appointment {
        
        return Appointment(dictionary: JSON)
    }
    
    open var subject : CrioSubject = CrioSubject()
    open func getSubject() -> CrioSubject {
        return subject;
    }
    open func setSubject(mySub: CrioSubject) -> Void {
        subject = mySub;
    }
    
    open var subjectBinderLastUpdated : Date = Date()
    open func getSubjectBinderLastUpdated() -> Date {
        return subjectBinderLastUpdated;
    }
    open func setSubjectBinderLastUpdated(mySub: Date) -> Void {
         subjectBinderLastUpdated = mySub;
    }
    
    open var study : CrioStudy = CrioStudy()
    open func getStudy() -> CrioStudy {
        return study
    }
    open func setStudy(myStudy: CrioStudy) -> Void {
        study = myStudy
    }
    
    open var visit : Visit = Visit()
    open func getVisit() -> Visit {
        return visit;
    }
    open func setVisit(myVisit : Visit) -> Void {
        visit = myVisit
    }
    
    open var start: Date = Date()
    open func getStart() -> Date {
        return start
    }
    open func setStart(myStart : Date) -> Void {
        start = myStart
    }
    
    open var end: Date = Date()
    open func getEnd() -> Date {
        return end
    }
    open func setEnd(myEnd : Date) -> Void {
        end = myEnd
    }
    
    open var status : Int = 0
    open func getStatus() -> Int {
        return status
    }
    open func setStatus(myStat : Int) -> Void {
        status = myStat
    }
    
    //checkCLong type info
    open var userAppointmentKey : CLong = 0
    open func getUserAppointmentKey() -> CLong {
        return userAppointmentKey
    }
    open func setUserAppointment(myusrAppt : CLong) -> Void {
        userAppointmentKey = myusrAppt
    }
    
    open var assignedUsers : Array<CrioUser> = []
    open func getAssignedUsers() -> Array<CrioUser> {
        return assignedUsers
    }
    open func setAssignedUsers(myAU : Array<CrioUser>) -> Void {
        assignedUsers = myAU
    }
    
    open func getTotalAssignedUsers() -> Int {
        return assignedUsers.count
    }
    
    open func getAssignedUsernames() -> Array<String> {
        var assignedUsernames : Array<String> = []
        for user in getAssignedUsers() {
            let nx = user.getFirstName() + " " + user.getLastName()
            assignedUsernames.append(nx)
        }
        return assignedUsernames
        
    }
    
    
}
