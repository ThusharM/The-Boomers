//
//  Reminders.swift
//  Boomer
//
//  Created by Varun Satheesh on 27/03/22.
//

import SwiftUI

struct Reminders: View {
    @State private var users = ["Take tablets", "Meeting", "Golf","Post Office work"]
    let room:String
    
    

    var body: some View {
        
        
            
            VStack(alignment: .leading){
                
                NavigationLink(destination: RemMeet(trans: ""))
                {
                
                    Text("Add")
                        .foregroundColor(Color.orange)
                        .font(.system(size: 25))
                        .padding(.leading,30)
                }
                List {
                               ForEach(users, id: \.self) { rem in
                                   Text(rem)
                                       .font(.system(size: 35))
                                       
                               }
                               .onDelete(perform: delete)
                           }
                           .navigationTitle("Reminders")
            }.onAppear()
            {
                users.append(room)
            }
                    
                        
        
    
              
}
        
    func delete(at offsets: IndexSet) {
            users.remove(atOffsets: offsets)
        }
    }
    
struct Reminders_Previews: PreviewProvider {
    static var previews: some View {
        Reminders(room: "helo")
    }
}

