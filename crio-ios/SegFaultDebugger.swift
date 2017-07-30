//
//  SegFaultDebugger.swift
//  crio-ios
//
//  Created by Neil Philip on 6/1/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation
import OrderedDictionary
import EVReflection



extension crioWebService {
    
    
    open func callWebService<T>(endpointUrl : String, jsonRequestObject: Any) -> T {
        var accURL : URL? = URL(string: baseWebServiceUrl + endpointUrl)
        var params : MutableOrderedDictionary = MutableOrderedDictionary()
      
        
            var jsonReqObjCast : EVNetworkingObject? = jsonRequestObject as? EVNetworkingObject
            var jsonRequest : String = ""
            if (jsonReqObjCast != nil){
                jsonRequest = jsonReqObjCast!.toJsonString()
            }
        
            params.setObject(jsonRequest, forKey: "json")
        

        
        //prepare post data
        var postData : String = ""
        for para in params {
            if(postData != "") { postData.append("&") }
            postData += String(describing: para.key).addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
            postData.append("=")
            postData += (String(describing: para.value).addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed))!
        }
        
        var request = URLRequest(url: accURL!)
        let session = URLSession.shared
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue(String(describing: postData.lengthOfBytes(using: String.Encoding.utf8)), forHTTPHeaderField: "Content-Length")
        //request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = postData.data(using: String.Encoding.utf8)
        
        
        let dataTask = session.dataTask(with: request, completionHandler: {(data, response, error) in
            //print(data!)
            //print(response!)
            //print(error!)
            print(data?.count)
            
            let dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print(dataString!)
            print("wtf")
            
        })
        
        dataTask.resume()
        return (T as NSObject)(json: dataString!)
        
    }


}
