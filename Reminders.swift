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
        
        NavigationView{
            
            VStack{
                
                NavigationLink(destination: RemMeet(trans: ""))
                {
                
                    Text("Add")
                        .foregroundColor(Color.orange)
                
                }
                List {
                               ForEach(users, id: \.self) { rem in
                                   Text(rem)
                               }
                               .onDelete(perform: delete)
                           }
                           .navigationTitle("Reminders")
            }.onAppear()
            {
                users.append(room)
            }
                    
                        
        
    
              
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

