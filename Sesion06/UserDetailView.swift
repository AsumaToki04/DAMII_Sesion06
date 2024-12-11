//
//  UserDetailView.swift
//  Sesion06
//
//  Created by DAMII on 10/12/24.
//

import SwiftUI

struct UserDetailView: View {
    var user: User
    
    var body: some View {
        VStack {
            Text("User Info")
            List {
                Text("ID: \(user.id)")
                Text("Name: \(user.name)")
                Text("Email: \(user.email)")
                Text("Phone: \(user.phone)")
                Text("Website: \(user.website)")
            }
            .padding()
            Text("User Adress")
            List {
                Text("Street: \(user.address.street)")
                Text("Suite: \(user.address.suite)")
                Text("City: \(user.address.city)")
                Text("Zipcode: \(user.address.zipcode)")
            }
        }
        .navigationTitle(user.name)
    }
}
