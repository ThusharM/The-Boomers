//
//  sata.swift
//  terra
//
//  Created by Varun Satheesh on 26/03/22.
//

import Foundation
import SwiftUI

struct Room:Identifiable{
    var id=UUID()
    var name:String
    var number:String
    var hasPic:Bool=false
    var image:String
    
    
}
#if DEBUG
let testData=[
    Room(name:"Varun", number:"9880828499",hasPic: true, image: "contact1"),
    Room(name:"Tanish", number:"98808283439",hasPic: false, image: ""),
    Room(name:"Ujwal", number:"343434343439",hasPic: true, image: "contact2"),
    Room(name:"Thushar", number:"988084465699",hasPic: true, image: "contact3"),
    Room(name:"Himadhith", number:"985656565",hasPic: false, image: ""),
    Room(name:"Vanshika", number:"9886565656",hasPic: true, image: "contact4"),
    Room(name:"Taher", number:"988054545445",hasPic: true, image: "contact5"),
    Room(name:"Vibhav", number:"98807787877",hasPic: false, image: ""),
    
]
#endif
