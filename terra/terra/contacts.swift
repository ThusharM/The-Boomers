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
                Button(action: {rooms.append(Room(name:"New1", number :"xxxxxxxxxxx", image: ""))})
            {Text("Add Contact")}
            List(rooms) { room in
                
                if room.hasPic{
                    HStack(alignment: .center){
                        Image(systemName: "photo" )
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50.0, height: 50.0)
                            .cornerRadius(8)
                            .padding(10)
                    VStack(alignment:
                            .leading) {
                        
                            
                        Text(room.name)
                            .font(.system(size: 40))
                        Text("\(room.number) ").foregroundColor(.secondary)
                            .font(.system(size: 30))
                    
                    
                }
                    }
                }
                else{
                    HStack(alignment: .center){
                        Image(room.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50.0, height: 50.0)
                            .cornerRadius(8)
                            .padding(10)
                    VStack(alignment:
                            .leading) {
                        
                            
                        Text(room.name)
                            .font(.system(size: 40))
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
