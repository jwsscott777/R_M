//
//  RMCharacterViewController.swift
//  R_M
//
//  Created by JWSScott777 on 12/27/22.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    private let rmCharacterListView = RMCharacterListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        title = "Characters"

        view.addSubview(rmCharacterListView)
        NSLayoutConstraint.activate([
            rmCharacterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rmCharacterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            rmCharacterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            rmCharacterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])

       
    }
    


}
