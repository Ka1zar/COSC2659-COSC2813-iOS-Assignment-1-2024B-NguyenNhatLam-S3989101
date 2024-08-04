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

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image("app_logo.png")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Text("Favorite Anime List")
                .font(.largeTitle)
                .padding()
            
            Text("Discover the best anime of all time!")
                .font(.subheadline)
                .padding()
            
            NavigationLink(destination: AnimeListView()) {
                Text("View List")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                // Show author info
            }) {
                Image(systemName: "info.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding()
            }
        }
    }
}
