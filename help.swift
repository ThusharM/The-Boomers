//
//  help.swift
//  Scrumdinger
//
//  Created by Varun Satheesh on 27/03/22.
//

import SwiftUI

struct help: View {
    var body: some View {
        NavigationView{
            
            VStack{
                
                NavigationLink(destination: eng()){
                Button(action: {
                }) {
                    Text(" English  ")
                        .foregroundColor(Color.black)
                        .font(.system(size: 65.0))
                        .padding()
               
                }.padding(50)
                    .background(Color.orange)
                    .clipShape(Rectangle())
                    .cornerRadius(12)
                }
                NavigationLink(destination: kan()){
                Button(action: {}) {
                    Text("Kannada")
                        .foregroundColor(Color.black)
                        .font(.system(size: 65.0))
                        .padding()
               
                }.padding(50)
                    .background(Color.orange)
                    .clipShape(Rectangle())
                    .cornerRadius(12)
                }
                NavigationLink(destination: hin()){
                Button(action: {}) {
                    Text("Hindi       ")
                        .foregroundColor(Color.black)
                        .font(.system(size: 65.0))
                        .padding()
               
                }.padding(50)
                    .background(Color.orange)
                    .clipShape(Rectangle())
                    .cornerRadius(12)
                }
            }
            .navigationBarTitle("Help")
        }
    }
}

struct help_Previews: PreviewProvider {
    static var previews: some View {
        help()
    }
}
