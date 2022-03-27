//
//  contacts.swift
//  terra
//
//  Created by Varun Satheesh on 26/03/22.
//

import SwiftUI

struct contacts: View {
    struct Room:Identifiable{
        var id=UUID()
        var name:String
        var number:String
        var hasPic:Bool=false
        var image:String
        
        
    }

    @State var testData=[
        Room(name:"Tarun", number:"9880828499",hasPic: true, image: "contact1"),
        Room(name:"Son", number:"9880828939",hasPic: false, image: ""),
        Room(name:"Daughter", number:"3434343439",hasPic: true, image: "daughter"),
        Room(name:"TunTun Aunty", number:"9880844699",hasPic: true, image: "GF"),
        Room(name:"Himadhith", number:"9856565765",hasPic: false, image: ""),
        Room(name:"Vanshika", number:"9886565656",hasPic: true, image: "vans"),
        Room(name:"Taher", number:"9880545445",hasPic: true, image: "taher"),
        Room(name:"Vibhav", number:"9880778877",hasPic: false, image: ""),
        
    ]
    
    var body: some View {
        
        
            VStack{
                Button(action: {testData.append(Room(name:"New1", number :"xxxxxxxxxxx", image: ""))})
                {Text("Add Contact")
                        .foregroundColor(.orange)
                }
            List(testData) { room in
                
                if room.hasPic{
                    HStack(alignment: .center){
                        Image(room.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80.0, height: 80.0)
                            .cornerRadius(8)
                            .padding(10)
                    VStack(alignment:
                            .leading) {
                        
                            
                        Text(room.name)
                            .font(.system(size: 40))
                        Text("\(room.number) ").foregroundColor(.secondary)
                            .font(.system(size: 30))
                    
                    
                }
                    }.onTapGesture
                    {
                        let telephone = "tel://"
                        let formattedString = telephone + room.number
                        guard let url = URL(string: formattedString) else { return }
                        UIApplication.shared.open(url)
                    }
                }
                else{
                    HStack(alignment: .center){
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80.0, height: 80.0)
                            .cornerRadius(8)
                            .padding(10)
                    VStack(alignment:
                            .leading) {
                        
                            
                        Text(room.name)
                            .font(.system(size: 40))
                        Text("\(room.number) ").foregroundColor(.secondary)
                            .font(.system(size: 30))
                    
                    
                }
                    }.onTapGesture
                    {
                        let telephone = "tel://"
                        let formattedString = telephone + room.number
                        guard let url = URL(string: formattedString) else { return }
                        UIApplication.shared.open(url)
                    }
                }
            
                
                
            
        }
        .navigationBarTitle(Text("Contacts"))
            
            
            }
        
    }
}

#if DEBUG
struct contacts_Previews: PreviewProvider {
    static var previews: some View {
        contacts()
.previewInterfaceOrientation(.portrait)
    }
}
#endif
