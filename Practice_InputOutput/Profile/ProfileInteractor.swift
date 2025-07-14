//
//  ProfileInteractor.swift
//  Practice_InputOutput
//
//  Created by Natasha Radika on 11/07/25.
//

protocol ProfileInteractorInput: AnyObject {
    func fetchUser()
}

protocol ProfileInteractorOutput: AnyObject {
    func didFetchUser(_ user: User)
}

final class ProfileInteractor: ProfileInteractorInput {
    
    weak var output: ProfileInteractorOutput?
    
    func fetchUser() {
        let user = User(username: "natasha")
        output?.didFetchUser(user)
    }
}
