//
//  contacts.swift
//  terra
//
//  Created by Varun Satheesh on 26/03/22.
//

import SwiftUI

struct contacts: View {
   @State var rooms:[Room]=[]
    var body: some View {
        
        
        NavigationView{
            VStack{
                Button(action: {rooms.append(Room(name:"New1", number :"xxxxxxxxxxx", image: "contact1"))})
            {Text("Add Contact")}
            List(rooms) { room in
                
                if room.hasPic{
                    HStack(alignment: .center){
                        Image("contact1" )
                            .resizable()
                            .scaledToFit()
                            
                            .cornerRadius(8)
                            .padding(15)
                    VStack(alignment:
                            .leading) {
                        
                            
                        Text(room.name)
                            .font(.system(size: 50))
                        Text("\(room.number) ").foregroundColor(.secondary)
                            .font(.system(size: 30))
                    
                    
                }
                    }
                }
                else{
                    HStack(alignment: .center){
                        Image(systemName: room.image )
                            .alignmentGuide(.bottom) { d in d[.bottom] * 0.5 }
                            .cornerRadius(8)
                            .padding(50)
                    VStack(alignment:
                            .leading) {
                        
                            
                        Text(room.name)
                            .font(.system(size: 50))
                        Text("\(room.number) ").foregroundColor(.secondary)
                            .font(.system(size: 30))
                    
                    
                }
                    }
                }
            
                
                
            
        }
        .navigationBarTitle(Text("Contacts"))
            
            
            }
        }
    }
}

#if DEBUG
struct contacts_Previews: PreviewProvider {
    static var previews: some View {
        contacts(rooms: testData)
.previewInterfaceOrientation(.portrait)
    }
}
#endif