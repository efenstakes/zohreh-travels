//
//  product.swift
//  zohreh-travels
//
//  Created by MAC on 10/23/21.
//

import Foundation
import UIKit



struct Destination: Identifiable {
    let id: UUID = UUID()
    var name: String
    var image: String
    var country: String
    var city: String
}


var categories = [
    DestinationCategory(image: "globe", title: "Trips"),
    DestinationCategory(image: "camp", title: "Camping"),
    DestinationCategory(image: "plane", title: "Transport"),
    DestinationCategory(image: "hotel", title: "Hotel"),
]

var destinations: [Destination] = [

    Destination(name: "Eiffel Tower", image: "3", country: "France", city: "Paris"),
    Destination(name: "Paris", image: "4", country: "France", city: "Paris"),
    Destination(name: "Laza Cathedral", image: "5", country: "France", city: "Paris"),
    Destination(name: "New Pyra", image: "6", country: "United States", city: "New York"),
    Destination(name: "Eiffel Tower", image: "7", country: "France", city: "Paris"),
    Destination(name: "Eiffel Tower", image: "8", country: "France", city: "Paris"),
    Destination(name: "Eiffel Tower", image: "9", country: "France", city: "Paris"),
    Destination(name: "Eiffel Tower", image: "10", country: "France", city: "Paris"),
    Destination(name: "Eiffel Tower", image: "11", country: "France", city: "Paris"),
    
]
