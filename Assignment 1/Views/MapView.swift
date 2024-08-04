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

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        view.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
        view.setRegion(region, animated: true)
    }
}
