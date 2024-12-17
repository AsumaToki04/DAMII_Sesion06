//
//  UserViewModel.swift
//  Sesion06
//
//  Created by DAMII on 10/12/24.
//

import Foundation

@MainActor
class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    func requestUser() {
        Task {
            do {
                isLoading = true
                errorMessage = nil
                users = try await UserService.shared.fetchUsers()
            } catch {
                errorMessage = "Ocurrió un error: \(error.localizedDescription)"
            }
            isLoading = false
        }
    }
    
    func requestUser2() {
        Task {
            do {
                isLoading = true
                errorMessage = nil
                users = try await UserService2.shared.fetchUsers()
            } catch {
                errorMessage = "Ocurrió un error: \(error.localizedDescription)"
            }
            isLoading = false
        }
    }
}
