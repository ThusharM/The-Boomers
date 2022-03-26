//
//  emergency.swift
//  terra
//
//  Created by Varun Satheesh on 26/03/22.
//

import SwiftUI

struct emergency: View {
   @State var rooms:[Room]=[]
    var body: some View {
        
        
        NavigationView{
            VStack(alignment: .center){
                
                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + "100"
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                   }) {
                   Image("contact2")
                       
                   }
                   
                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + "108"
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                   }) {
                   Image("contact3")
                }
                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + "109"
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                   }) {
                   Image("contact4")
                }
                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + "100"
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                   }) {
                       Image("fire")
                   }
                
            }
            
    }
    }
}

#if DEBUG
struct emergency_Previews: PreviewProvider {
    static var previews: some View {
        emergency(rooms: testData)
.previewInterfaceOrientation(.portrait)
    }
}
#endif
