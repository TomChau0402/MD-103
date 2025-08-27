import UIKit

import UIKit

var q2 = [1,2,3,4,5];
q2.remove(at: 3);

if q2.contains(4) {
    print ("true")
} else {
    print("false")
}

//Q4
var countries: [String: String] = [
    "Canada":"Ontario",
        "France":"Paris",
    "swedend":"Stockholm",
    "italy":"Rome"
]
countries["inida"] = "New Delhi"
print (countries.values)
