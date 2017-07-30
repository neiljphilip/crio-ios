//
//  GetAppointmentInfo.swift
//  
//
//  Created by Neil Philip on 6/25/17.
//
//

import Foundation

public class GetAppointmentInfo{
    
    internal var appointments : Array<Appointment> = []
    open func getAppointments() -> Array<Appointment> { return appointments }
    open func setAppointments(myAppt : Array<Appointment>) -> Void { appointments = myAppt }
    
}
