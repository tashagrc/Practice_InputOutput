//
//  ProfilePresenter.swift
//  Practice_InputOutput
//
//  Created by Natasha Radika on 11/07/25.
//

import Foundation

final class ProfilePresenter: ProfileViewOutput {
    weak var view: ProfileViewInput?
    var interactor: ProfileInteractorInput?
    
    func viewDidLoad() {
        interactor?.fetchUser()
    }
}

extension ProfilePresenter: ProfileInteractorOutput {
    func didFetchUser(_ user: User) {
        view?.display(username: user.username)
    }
}
