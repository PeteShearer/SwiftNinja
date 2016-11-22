import Foundation

// Dynamic Parameters
func dynamicSumming(addends: Int...) -> Int {
    var sum = 0
    
    for addend in addends {
        sum += addend
    }
    
    return sum;
}

print(dynamicSumming(addends: 7))
print(dynamicSumming(addends: 1,2))
print(dynamicSumming(addends: 7777,8888,9999))


// Tuples as return types
func getAvailableSizes() -> (String, String, String, String, String) {
    return ("Short", "Tall", "Grande", "Venti", "Trenta")
}

var starbucksSizes = getAvailableSizes()

// Access them via an "indexed property" of sorts
print(starbucksSizes.0)
print(starbucksSizes.4)

// error: value of tuple type '(String, String, String, String, String)' has no member '5'
// print(starbucksSizes.5)

// A function that returns another function with the signature that takes 2 Integers and returns an Integer
func createSummingFunction() -> (Int, Int) -> Int {
    // Declare a function inside this function
    func sumIt(addend1: Int, addend2: Int) -> Int {
        return addend1 + addend2;
    }
    
    // and then I can just return it by name
    return sumIt
}

// Now we can treat assign this function to a local variable and then use the function variable as the function
var localSummer = createSummingFunction()
print(localSummer(42, 77)) // <-- Oddly, no need to name parameters

// Functions can be variables, can they be parameters? Yes
func applyPricing(initialPrices: [Double], pricingFunction: (Double) -> Double) -> [Double] {
    var customerPricing = [Double]()
    
    for price in initialPrices {
        let customerPrice = pricingFunction(price)
        customerPricing.append(customerPrice)
    }
    
    return customerPricing
}


func retailPrice (price: Double) -> Double {
    return price
}

// Note: I included "import Foundation" at the top to use "round"
func tenPercentOff (price: Double) -> Double {
    let customerPrice = price * 0.9
    let roundedPrice = round(customerPrice / 0.01) * 0.01
    return roundedPrice
}

// a "shopping cart" of prices
var cart = [44.96, 7.24, 29.07]

var standardCustomerCart = applyPricing(initialPrices: cart, pricingFunction: retailPrice)
var favoredCustomerCart = applyPricing(initialPrices: cart, pricingFunction: tenPercentOff)



