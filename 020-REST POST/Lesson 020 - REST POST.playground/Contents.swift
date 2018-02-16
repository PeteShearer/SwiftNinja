
import UIKit

import PlaygroundSupport // <-- This is just for the playground
PlaygroundPage.current.needsIndefiniteExecution = true // <-- And so is this, so it will continue to execute so we can get our results back

var request = URLRequest(url: URL(string:"https://reqres.in/api/users")!)
request.httpMethod = "POST"
request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

let paramString = "username=Voltron&role=Defender of the Universe"
request.httpBody = paramString.data(using: .utf8)

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)
let task = session.dataTask(with: request) { (data, response, responseError) in
    if let jsonData = data {
        let options = JSONSerialization.ReadingOptions()
        do {
            let jsonArray = try JSONSerialization.jsonObject(with: jsonData, options: options) as! [String:AnyObject]
            
            if let userId = jsonArray["id"],  let username = jsonArray["username"], let role = jsonArray["role"], let createDate = jsonArray["createdAt"] {
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
}
task.resume()
