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
                    let formattedString1 = telephone + "100"
                    let formattedString2 = telephone + "101"
                    let formattedString3 = telephone + "6360644891"
                    let formattedString4 = telephone + "9353491927"
                    
                    guard let url = URL(string: formattedString1) else { return }
                    UIApplication.shared.open(url)
                    guard let url = URL(string: formattedString2) else { return }
                    UIApplication.shared.open(url)
                    guard let url = URL(string: formattedString3) else { return }
                    UIApplication.shared.open(url)
                    guard let url = URL(string: formattedString4) else { return }
                    UIApplication.shared.open(url)
                   }) {
                   Text("PANIC              ")
                           .font(.system(size: 40))
                           .padding(50)
                           .background(Color.red)
                           .foregroundColor(Color.black)
                           .clipShape(Rectangle())
                           .cornerRadius(12)
                           
                       
                   }
                
                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + "100"
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                   }) {
                   Image("contact2")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 150.0, height: 150.0)
                           .cornerRadius(8)
                           .padding(10)
                       
                   }
                
                   
                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + "108"
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                   }) {
                   Image("contact3")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 150.0, height: 150.0)
                           .cornerRadius(8)
                           .padding(10)
                }
                
                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + "100"
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                   }) {
                       Image("fire")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 150.0, height: 150.0)
                           .cornerRadius(8)
                           .padding(10)
                       
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
