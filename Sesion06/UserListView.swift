//
//  UserListView.swift
//  Sesion06
//
//  Created by DAMII on 10/12/24.
//

import SwiftUI

struct UserListView: View {
    @StateObject private var viewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading {
                    ProgressView("Cargando usuarios...")
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                } else {
                    List {
                        ForEach(viewModel.users) { item in
                            NavigationLink(destination: UserDetailView(user: item)) {
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.headline)
                                    Text(item.email)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Usuarios")
            .onAppear {
                //viewModel.requestUser()
                viewModel.requestUser2()
            }
        }
    }
}
