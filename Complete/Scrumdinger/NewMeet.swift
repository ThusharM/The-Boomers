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
            NavigationLink(destination: NewHistory(history:trans))
            {
                Text("Show")
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

struct NewMeet_Previews: PreviewProvider {
    static var previews: some View {
        NewMeet(trans: "")
    }
}
