//
//  RemMeet.swift
//  Boomer
//
//  Created by Varun Satheesh on 27/03/22.
//

import SwiftUI
import AVFoundation

struct RemMeet: View {
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
            NavigationLink(destination: RemHistory(history:trans))
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

struct RemMeet_Previews: PreviewProvider {
    static var previews: some View {
        RemMeet(trans: "")
    }
}

