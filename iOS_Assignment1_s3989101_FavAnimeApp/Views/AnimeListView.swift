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

struct AnimeListView: View {
    @State private var searchText = ""
    @State private var isDarkMode = false
    let anime = loadAnime()

    var filteredAnime: [Anime] {
        anime.filter { anime in
            searchText.isEmpty || anime.name.localizedCaseInsensitiveContains(searchText)
        }
    }

    var body: some View {
        List(filteredAnime) { anime in
            NavigationLink(destination: AnimeDetailView(anime: anime)) {
                HStack {
                    Image(anime.imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading) {
                        Text(anime.name)
                            .font(.headline)
                        Text(anime.shortDescription)
                            .font(.subheadline)
                            .lineLimit(2)
                    }
                }
            }
        }
        .navigationTitle("Anime List")
        .toolbar {
            ToolbarItem(placement: .principal) {
                TextField("Search", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    isDarkMode.toggle()
                }) {
                    Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
                }
            }
        }
        .environment(\.colorScheme, isDarkMode ? .dark : .light)
    }
}
