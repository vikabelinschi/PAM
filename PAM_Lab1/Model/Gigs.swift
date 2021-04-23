//
//  Gigs.swift
//  PAM_Lab1
//
//  Created by Victoria Belinschi on 4/23/21.
//

import Foundation

struct Gigs: Codable {
    var name: String
    var payment: String?
}

let dataItems = [
    Gigs(name: "Nanny job for 2 hours  with two 5 year old boys", payment: "5$"),
    Gigs(name: "Dog walker", payment: "15$"),
    Gigs(name: "Summer Camp english teacher for 10 days",payment: "15$"),
    Gigs(name: "Yard Work",payment: "15$" ),
    Gigs(name: "Pet sitting",payment: "15$"),
    Gigs(name: "House sitting while we are on vacation",payment: "15$"),
    Gigs(name: "Set up my new TV",payment: "15$"),
    Gigs(name: "In need of a math tutor for my 13 year old daughter",payment: "15$"),
    Gigs(name: "Excel work for one  day",payment: "15$"),
    Gigs(name: "Social media associate",payment: "15$"),
    Gigs(name: "Telemarketer",payment: "15$"),
    Gigs(name: "Call Center Representative",payment: "15$"),
    Gigs(name: "Dishwasher",payment: "15$"),
    Gigs(name: "Waiter for a wedding",payment: "15$"),
    Gigs(name: "Ice Cream Clerk",payment: "15$"),
    Gigs(name: "To Go Order Taker",payment: "15$"),
    Gigs(name: "Game tester",payment: "15$"),
    Gigs(name: "Box Office Ticket Seller",payment: "15$"),
    Gigs(name: "Escape Room Attendant",payment: "15$"),
    Gigs(name: "Library Shelver",payment: "15$"),
    Gigs(name: "Cleaner/Maid for new house",payment: "15$"),
    Gigs(name: "Book Sorter",payment: "15$"),
    Gigs(name: "Nanny for 3 months old baby",payment: "15$"),
    Gigs(name: "Fill Out Surveys Online",payment: "15$"),
    Gigs(name: "Pet Care  for a week",payment: "15$"),
    Gigs(name: "Lawn Mowing",payment: "15$"),
    Gigs(name: "Delivery",payment: "15$"),
    Gigs(name: "Car Washer",payment: "15$"),
    Gigs(name: "In need of a house cleaner",payment: "15$"),
    Gigs(name: "Need a boy for helping me to carry my stuff for moving out",payment: "15$"),
    Gigs(name: "Camp counselor for 3 days",payment: "15$")

]
