
import UIKit

import XCPlayground // <-- This is just for the playground
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true // <-- And so is this, so it will continue to execute so we can get our results back

let url = "http://reqres.in/api/users"
let session = NSURLSession.sharedSession()

let request = NSMutableURLRequest(URL: NSURL(string: url)!)
request.HTTPMethod = "POST"

let paramString = "username=Voltron&role=Defender of the Universe"
request.HTTPBody = paramString.dataUsingEncoding(NSUTF8StringEncoding)

let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
    if let jsonData = data {
        let options = NSJSONReadingOptions()
        do {
            let jsonArray = try NSJSONSerialization.JSONObjectWithData(jsonData, options: options) as! [String:AnyObject]
            
            if let userId = jsonArray["id"], username = jsonArray["username"], role = jsonArray["role"], createDate = jsonArray["createdAt"] {
                print("The id was \(userId), the username was \(username), the role was \(role), and the record was created on \(createDate)")
            }
            else {
                print("Failed batch parsing")
            }
        }
        catch {
            print("Failed to parse JSON from response")
        }
    }
    else {
        print ("We didn't get back data")
    }
})

task.resume()
