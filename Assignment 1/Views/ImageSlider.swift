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

struct ImageSlider: View {
    let images: [String]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}
