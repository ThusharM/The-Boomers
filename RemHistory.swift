//
//  RemHistory.swift
//  Boomer
//
//  Created by Varun Satheesh on 27/03/22.
//
import SwiftUI

struct RemHistory: View {
    let history: String
    @State var rooms:[String]=[]
    var body: some View {
        let transcript = history
        VStack(alignment: .center){
            
            Text("Transcript")
                
                .font(.system(size: 30.0))
                .font(.headline)
                
                .padding(.top)
            
            
            Text(transcript)
            NavigationLink(destination: Reminders(room: transcript)){
            
            Image(systemName: "checkmark.circle")
                    .foregroundColor(Color.black)
                    
                
                    .font(.system(size: 56.0))
            
            }
        }
        
        
                
        
    }

}
struct RemHistory_Previews: PreviewProvider {
    static var history: String =
         ""
    static var previews: some View {
        RemHistory(history: history)
    }
}

