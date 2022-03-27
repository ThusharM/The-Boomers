//
//  NewHistory.swift
//  Scrumdinger/Users/ujwal_nischal/Desktop/boomers /TranscribingSpeechToTextPristine/Complete/Scrumdinger/MeetingView.swift
//
//  Created by Ujwal on 26/03/22.
//

import SwiftUI

struct NewHistory: View {
    let history: String
    var body: some View {
        let transcript = history
        VStack{
            Text("Transcript")
                .font(.headline)
                .padding(.top)
            Text(transcript)
        }
        if transcript.lowercased().contains("ambulance")
                {
                    Text("ambulance")
                    emergency()
                }
                else if transcript.lowercased().contains("fire")
                {
                    Text("fire")
                    emergency()
                }
                else if transcript.lowercased().contains("police")
                {
                    Text("police")
                    emergency()
                }
                else if transcript.lowercased().contains("emergency")
                {
                    Text("emergency")
                    emergency()
                }
                else if transcript.lowercased().contains("contact")
                    
                {
                   contacts()
                }
                else if transcript.lowercased().contains("reminder")
                {
                    
                }
        
    }
}

struct NewHistory_Previews: PreviewProvider {
    static var history: String =
         ""
    
    static var previews: some View {
        NewHistory(history: history)
    }
}
