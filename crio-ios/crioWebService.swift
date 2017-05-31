//
//  crioWebService.swift
//  crio-ios
//
//  Created by Neil Philip on 5/28/17.
//  Copyright © 2017 Home. All rights reserved.
//

//
//  callWebService.swift
//  crio-ios
//
//  Created by Neil Philip on 5/21/17.
//  Copyright © 2017 Home. All rights reserved.
//
/*
 import Foundation
 
 public class callWebService {
 
 /*
 open func crioWebService(){
 var url : String = "http://10.0.0.11:8080/crio/api"
 var request : NSMutableURLRequest = NSMutableURLRequest()
 request.url = URL(string: url)
 request.httpMethod = "GET"
 NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue(), completionHandler:{ (response:URLResponse!, data: Data!, error: NSError!) -> Void in
 var error: AutoreleasingUnsafeMutablePointer<NSError?>? = nil
 let jsonResult: NSDictionary! = JSONSerialization.JSONObjectWithData(data, options:JSONSerialization.ReadingOptions.mutableContainers, error: error) as? NSDictionary
 
 if (jsonResult != nil) {
 // process jsonResult
 } else {
 // couldn't load JSON, look at error
 }
 
 
 } as! (URLResponse?, Data?, Error?) -> Void)
 
 
 
 }
 }
 */
 
 open func crioWebService(){
 print(getJSONFromDatabase())
 
 }
 
 open func getJSONFromDatabase() -> String  {
 let url = URL(string: "http://10.0.0.11:8080/crio/api")
 _ = URLSession.shared.dataTask(with: url!) {(data,response, error) in
 return NSString(data:data!, encoding: String.Encoding.utf8.rawValue)}
 }
 
 }
 */

import UIKit
import Foundation
import OrderedDictionary
import EVReflection

//consider implementing Gzip

public class crioWebService {
    
    let baseWebServiceUrl = "http://localhost:8080/crio/api"
    
    open func callWebService<T>(endpointUrl : String, jsonRequestObject: AnyObject?) -> T {
        var accURL : URL? = URL(string: baseWebServiceUrl + endpointUrl)
        var params : MutableOrderedDictionary = MutableOrderedDictionary()
        
        if (jsonRequestObject != nil)
        {
            var jsonRequest : String = jsonRequestObject!.toJsonString()
            params.setObject(jsonRequest, forKey: "json")
        }
        
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
        return T(json: dataString!)

        }


    open func login(username: String, password: String) -> LoginResponse
    {
        var request: LoginRequest = LoginRequest()
        request.setUsername(username)
        request.setPassword(password)
        
        return callWebService(endpointUrl: "/login", jsonRequestObject: request)
    }
    
        
        
        
    }
    
    /*
     open func crioWebService(){
     var url : String = "http://10.0.0.11:8080/crio/api"
     var request : NSMutableURLRequest = NSMutableURLRequest()
     request.url = URL(string: url)
     request.httpMethod = "GET"
     NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue(), completionHandler:{ (response:URLResponse!, data: Data!, error: NSError!) -> Void in
     var error: AutoreleasingUnsafeMutablePointer<NSError?>? = nil
     let jsonResult: NSDictionary! = JSONSerialization.JSONObjectWithData(data, options:JSONSerialization.ReadingOptions.mutableContainers, error: error) as? NSDictionary
     
     if (jsonResult != nil) {
     // process jsonResult
     } else {
     // couldn't load JSON, look at error
     }
     
     
     } as! (URLResponse?, Data?, Error?) -> Void)
     
     
     
     }
     }
     */
    
   /*
    
    open func getJSONFromDatabase() -> Void  {
        print("hello!")
        //let urlPath = "http://10.0.0.11:8080/crio/login?username=raymond&password=test"
        
        let urlPath = "http://10.0.0.11:8080/crio/login?username=raymond&password=test"
        let escapedPath = urlPath.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        let url1 = URL(string:escapedPath!)!
        
        let request = URLRequest(url: url1)
        
        let session = URLSession.shared
        
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
        
    }
}

*/






