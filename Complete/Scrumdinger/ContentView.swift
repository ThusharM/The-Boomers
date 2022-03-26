//
//  ContentView.swift
//  terra
//
//  Created by Varun Satheesh on 25/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            VStack {
                HStack {
                    NavigationLink(destination: contacts()) {
                    Button(action: {}) {
                        Image(systemName: "phone.circle.fill")
                            .foregroundColor(Color.black)
                            
                        
                            .font(.system(size: 56.0))
                    }
                    
                    .padding(50)
                    .background(Color.orange)
                    .clipShape(Rectangle())
                    .cornerRadius(12)
                    }
                    
                    NavigationLink(destination: emergency()) {
                    Button(action: {}) {
                        Image(systemName: "exclamationmark.circle.fill")
                            .foregroundColor(Color.black)
                            .font(.system(size: 56.0))
                    }.padding(50)
                        .background(Color.orange)
                        .clipShape(Rectangle())
                        .cornerRadius(12)
                    }
                }.padding()
                
                
                HStack {
                    
                    Button(action: {}) {
                        Image(systemName: "line.3.horizontal.circle.fill")
                            .foregroundColor(Color.black)
                            .font(.system(size: 56.0))
                   
                    }.padding(50)
                        .background(Color.orange)
                        .clipShape(Rectangle())
                        .cornerRadius(12)
                    
                    
                    Button(action: {}) {
                        Image(systemName: "apps.iphone")
                            .foregroundColor(Color.black)
                            .font(.system(size: 56.0))
                            .padding(0.5)
                    }.padding(50)
                        .background(Color.orange)
                        .clipShape(Rectangle())
                        .cornerRadius(12)
                }.padding()
                NavigationLink(destination: NewMeet(trans: ""))
                {
                    
                    Button(action: {}) {
                        Image(systemName: "person.wave.2")
                            .foregroundColor(Color.white)
                            .font(.system(size: 56.0))
                    }.padding(20)
                        .background(Color.black)
                        .clipShape(Rectangle())
                        .cornerRadius(12)
                }
                
            }
            .navigationBarTitle(Text("Boomer"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
