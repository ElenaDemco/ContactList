//
//  DataStoreViewController.swift
//  ContactList
//
//  Created by Yelena Demchenko on 18.04.2023.
//
import UIKit

final class DataStore {
    
    static let shared = DataStore()
    
    private init() {}
    
    let names = [
        "Dylan",
        "Ryan",
        "Brice",
        "Anna",
        "Harley",
        "Casey",
        "Glen",
        "Dane",
        "Kit",
        "Morgan"
    ]
    
    let surnames = [
        "Adams",
        "Sutton",
        "Fisher",
        "Hoover",
        "Ross",
        "Ryan",
        "Russell",
        "Dillon",
        "Lyons",
        "Leblanc"
    ]
    
    let phones = [
        "+1 756 780 3453",
        "+1 830 921 4031",
        "+1 986 883 5216",
        "+1 686 914 5650",
        "+1 278 700 2750",
        "+1 180 921 4331",
        "+1 306 893 4216",
        "+1 676 954 9650",
        "+1 431 522 4011",
        "+1 580 089 5236"
    ]
    
    let emails = [
        "star@gmail.com",
        "cosmos@gmail.com",
        "universe@gmail.com",
        "comet@gmail.com",
        "jupiter@gmail.com",
        "venus@gmail.com",
        "saturn@gmail.com",
        "neptune@gmail.com",
        "ajeles@gmail.com",
        "alpha@gmail.com"
    ]
}
