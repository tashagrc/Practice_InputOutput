//
//  ProfileRouter.swift
//  Practice_InputOutput
//
//  Created by Natasha Radika on 11/07/25.
//

import UIKit

final class ProfileRouter {
    static func build() -> UIViewController {
        let view = ProfileViewController()
        let presenter = ProfilePresenter()
        let interactor = ProfileInteractor()
        
        view.output = presenter
        presenter.view = view
        presenter.interactor = interactor
        interactor.output = presenter
        
        return view
    }
}
