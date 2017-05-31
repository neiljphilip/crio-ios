//
//  CrioUser.swift
//  crio-ios
//
//  Created by Neil Philip on 5/21/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation
import EVReflection


public class CrioUser {
    
    
    internal var userKey: Int64 = 0
    open func getUserKey() -> Int64 {
        return userKey
    }
    
    open func setUserKey(useKey: Int64) -> Void {
        userKey = useKey
    }
    
    internal var sites: Array<CrioSite>  = []
    open func getSites() -> Array<CrioSite> {
        return sites
    }
    
    open func setSites(mySite : Array<CrioSite>) -> Void {
        sites = mySite
    }
    
    open func getDefaultSite() -> CrioSite {
        return sites[0]
    }
    
    internal var username: String = ""
    open func getUsername() -> String {
        return username
    }
    
    open func setUsername(setUNM : String) -> Void {
        username = setUNM
    }
    
    internal var firstName: String = ""
    open func getFirstName() -> String {
        return firstName
    }
    
    open func setFirstName(setFM : String) -> Void {
        firstName = setFM
    }

    internal var lastName: String = ""
    open func getLastName() -> String {
        return lastName
    }
    
    open func setLastName(setLM : String) -> Void {
        lastName = setLM
    }
    
    internal var photoSmallUrl: String = ""
    open func getphotoSmallUrl() -> String {
        return photoSmallUrl
    }
    
    open func setPhotoSmallUrl(setPSU : String) -> Void {
        photoSmallUrl = setPSU
    }
    
    internal var photoMedUrl: String = ""
    open func getphotoMedUrl() -> String {
        return photoMedUrl
    }
    
    open func setPhotoMedUrl(setPMU : String) -> Void {
        photoMedUrl = setPMU
    }

    internal var photoLargeUrl: String = ""
    open func getphotoLargeUrl() -> String {
        return photoLargeUrl
    }
    
    open func setPhotoLargeUrl(setPLU : String) -> Void {
        photoLargeUrl = setPLU
    }

    open func equals(o : AnyObject) -> BooleanLiteralType{
        return (getUserKey() == (o as? CrioUser)!.getUserKey())
    }
    
     /*required public init(map: Mapper) throws {
            self.userKey = map.from("userKey", transformation: <#(Any) throws -> T#>)
            self.sites = map.from("sites", transformation: <#(Any) throws -> T#>)
            self.username =  map.from("username")
            self.firstName = map.from("firstName")
            self.lastName = map.from("lastName")
            self.photoSmallUrl = map.from("photoSmallUrl")
            self.photoMedUrl = map.from("photoMedUrl")
            self.photoLargeUrl = map.from("photoLargeUrl")
    }
     
     */
    open static func createFromJson(JSON: NSDictionary) -> CrioUser {
        
        return CrioUser(dictionary: JSON)
    }
  
    
}
