/*
  RMIT University Vietnam
  Course: COSC2659|COSC2813 iOS Development
  Semester: 2024B
  Assessment: Assignment 1
  Author: Nguyen Nhat Lam
  ID: S3989101
  Created  date: 15/07/2024
  Last modified: 04/08/2024
  Acknowledgement: I acknowledge the work as my own. 
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Display the app's logo
                Image("app_logo.png")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Text("Favorite Anime")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: AnimeListView()) {
                    Text("Go to Anime List")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                // Info button to show app details
                Button(action: {
                    // Action to show app details
                }) {
                    Image(systemName: "info.circle")
                        .font(.title)
                        .padding()
                }
            }
            .navigationTitle("Welcome")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
