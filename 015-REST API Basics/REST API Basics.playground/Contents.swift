import UIKit

import XCPlayground // <-- This is just for the playground
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true // <-- And so is this, so it will continue to execute so we can get our results back

let url = "http://jsonplaceholder.typicode.com/posts/1"
// If you want to test a failing URL, use the following line and comment out the one above
// let url = "http://jsonplaceholder.typicodeooo.com/posts/1"
let request = NSMutableURLRequest(URL: NSURL(string: url)!)

let session = NSURLSession.sharedSession()

let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
    if let jsonData = data {
        let options = NSJSONReadingOptions()
        let jsonArray = try! NSJSONSerialization.JSONObjectWithData(jsonData, options: options) as! [String:AnyObject]
        
        if let userId = jsonArray["userId"], id = jsonArray["id"], body = jsonArray["body"], title = jsonArray["title"] {
            print("The id was \(id), the title was \(title), the body was \(body) and the userId associated was \(userId)")
        }
        else {
            print("Failed batch parsing")
        }
    }
    else {
        print ("We didn't get back data")
    }
})
task.resume()
