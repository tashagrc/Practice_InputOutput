//
//  ProfileViewController.swift
//  Practice_InputOutput
//
//  Created by Natasha Radika on 11/07/25.
//

import UIKit

protocol ProfileViewInput: AnyObject {
    func display(username: String)
}

protocol ProfileViewOutput: AnyObject {
    func viewDidLoad()
}

final class ProfileViewController: UIViewController, ProfileViewInput {
    
    var output: ProfileViewOutput?
    private let usernameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        output?.viewDidLoad()
    }
    
    private func setupUI() {
        view.addSubview(usernameLabel)
        usernameLabel.text = "Test"
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.textAlignment = .center
        usernameLabel.font = .systemFont(ofSize: 30, weight: .bold)
        
        NSLayoutConstraint.activate([
            usernameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usernameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func display(username: String) {
        usernameLabel.text = "Hi, \(username)!"
    }
}
