// Took this code from Lesson 015
import UIKit

import PlaygroundSupport // <-- This is just for the playground
PlaygroundPage.current.needsIndefiniteExecution = true // <-- And so is this, so it will continue to execute so we can get our results back

let url = "http://jsonplaceholder.typicode.com/posts/1" // <-- Succeeds
// If you want to test a failing URL, use one of the following lines and comment out the one above
// let url = "http://jsonplaceholder.typicodeooo.com/posts/1" // <-- Fails with "We didn't get back data"
// let url = "http://jsonplaceholder.typicode.com/posts/-1" // <-- Fails with "Failed batch parsing"
// let url = "http://jsonplaceholder.typicode.com/" //<-- Fails with "We did not succeed parsing the JSON Object With Data"
let request = NSMutableURLRequest(url: NSURL(string: url)! as URL)

let session = URLSession.shared

let task = session.dataTask(with: request as URLRequest, completionHandler: {data, response, error -> Void in
    if let jsonData = data {
        let options = JSONSerialization.ReadingOptions()
        do {
            let jsonArray = try JSONSerialization.jsonObject(with: jsonData, options: options) as! [String:AnyObject]
        
            if let userId = jsonArray["userId"], let id = jsonArray["id"], let body = jsonArray["body"], let title = jsonArray["title"] {
                print("The id was \(id), the title was \(title), the body was \(body) and the userId associated was \(userId)")
            }
            else {
                print("Failed batch parsing")
            }
        }
        catch {
            print ("We did not succeed parsing the JSON Object With Data")
        }
    }
    else {
        print ("We didn't get back data")
    }
})
task.resume()

