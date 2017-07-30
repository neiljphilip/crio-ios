//
//  InformedConsentDocument.swift
//  crio-ios
//
//  Created by Neil Philip on 6/25/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation

public class InformedConsentDocument {
    
    internal var documentKey : Int64 = 0
    open func getDocumentKey() -> Int64 { return documentKey }
    open func setDocumentKey(myDK : Int64) -> Void { documentKey = myDK }
    
    internal var version : String = ""
    open func getVersion() -> String { return version }
    open func setVersion(myV : String) -> Void { version = myV }
    
    internal var versionDate : Date = Date()
    open func getVersionDate() -> Date { return versionDate }
    open func setVersionDate(myVD : Date) -> Void { versionDate = myVD }
    
    internal var approvalDate : Date = Date()
    open func getApprovalDate() -> Date { return approvalDate }
    open func setApprovalDate(myAD : Date) -> Void { approvalDate = myAD }
    
    
}
