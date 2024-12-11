//
//  UserService.swift
//  Sesion06
//
//  Created by DAMII on 10/12/24.
//

import Foundation
import Alamofire

class UserService {
    static let shared = UserService()
    private let baseUrl = "https://jsonplaceholder.typicode.com/users"
    
    func fetchUsers() async throws -> [User] {
        try await withCheckedThrowingContinuation { continuation in
            AF.request(baseUrl)
                .validate()
                .responseDecodable(of: [User].self) { response in
                    switch response.result {
                    case .success(let users):
                        continuation.resume(returning: users)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                    }
                }
        }
    }
}
