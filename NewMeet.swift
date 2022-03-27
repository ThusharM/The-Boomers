//
//  NewMeet.swift
//  Scrumdinger
//
//  Created by Ujwal on 26/03/22.
//

import SwiftUI
import AVFoundation

struct NewMeet: View {
    @State var trans: String
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State private var isRecording = false
    private var player: AVPlayer { AVPlayer.sharedDingPlayer }
    
    
    
    var body: some View {
        
        
        NavigationView{
            VStack{
                Text("Listening...")
                    .font(.system(size: 60))
                    .padding(30)
            NavigationLink(destination: NewHistory(history:trans))
            {
                Text("Stop")
                    .font(.system(size: 40))
            }
            .onAppear {
                
                speechRecognizer.reset()
                speechRecognizer.transcribe()
                isRecording = true
               
            }
            .onDisappear {
                
                speechRecognizer.stopTranscribing()
                isRecording = false
                trans=speechRecognizer.transcript
            }
            
        }
    }
    
    }
}

struct NewMeet_Previews: PreviewProvider {
    static var previews: some View {
        NewMeet(trans: "")
    }
}
