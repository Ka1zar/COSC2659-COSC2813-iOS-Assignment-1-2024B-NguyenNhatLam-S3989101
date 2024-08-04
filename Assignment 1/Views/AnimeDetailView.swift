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
import MapKit

struct AnimeDetailView: View {
    let anime: Anime

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(anime.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(anime.name)
                    .font(.largeTitle)
                    .padding(.top)
                
                HStack {
                    ForEach(0..<anime.reviewStars) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
                .padding(.vertical)
                
                Text(anime.fullDescription)
                    .padding(.bottom)
                
                Text("Address: \(anime.address)")
                    .padding(.bottom)
                
                MapView(coordinate: CLLocationCoordinate2D(latitude: anime.latitude, longitude: anime.longitude))
                    .frame(height: 200)
                    .cornerRadius(8)
                    .padding(.bottom)
                
                ImageSlider(images: anime.images)
                    .frame(height: 200)
                    .cornerRadius(8)
            }
            .padding()
        }
        .navigationTitle(anime.name)
    }
}
