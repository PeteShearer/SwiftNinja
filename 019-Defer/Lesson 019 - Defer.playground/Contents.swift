import UIKit

// This function has to cleanup any time we go to return, duplicating code
func multipleCleanups(arg:Int) {
    print ("Doing some initial work")
    
    if (arg == 1){
        print("Some pretend cleanup tasks")
        return
    }
    
    print ("Some further work")
    
    print("Some pretend cleanup tasks")
    return
}

//multipleCleanups(0)
//multipleCleanups(1)

// This function can declare the cleanup once
func singleCleanup(arg:Int) {
    defer {
        print("Some pretend cleanup tasks")
    }
    
    print ("Doing some initial work")
    
    if (arg == 1){
        return
    }
    
    print ("Some further work")
    
    return
}

//singleCleanup(0)
//singleCleanup(1)

// Other times, the cleanup tasks can build.  You only need to cleanup an object or resource after you declare it.

func selectiveCleanup(arg:Int) {
    defer {
        print ("Function Level Cleanup")
    }
    
    if (arg == 0) {
        return;
    }
    
    let bundle = NSBundle.mainBundle()
    defer {
        print("Cleaning up after the bundle call")
    }
    
    print ("Bundle path is \(bundle.bundlePath)")
    
    if (arg == 1) {
        return
    }
    
    var distantPast = NSDate.distantPast()
    defer {
        print("Cleaning up after the NSDate call")
    }
    
    print ("Distant Past is \(distantPast)")
    
    return
}

//selectiveCleanup(0)
//selectiveCleanup(1)
selectiveCleanup(2)
