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

import Foundation

struct Anime: Identifiable, Codable {
    let id: UUID
    let name: String
    let imageName: String
    let shortDescription: String
    let fullDescription: String
    let reviewStars: Int
    let address: String
    let latitude: Double
    let longitude: Double
    let images: [String]
}
