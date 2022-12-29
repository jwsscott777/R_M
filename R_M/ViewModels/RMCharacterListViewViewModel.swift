//
//  CharacterListViewViewModel.swift
//  R_M
//
//  Created by JWSScott777 on 12/28/22.
//

import UIKit

final class RMCharacterListViewViewModel: NSObject  {
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetCharacterResponse.self) { result in
            switch result {
                case .success(let model):
                   print (
                    "Total: "+String(model.info.count)
                    )
                    print("Page result: "+String(model.results.count))
                case .failure(let error):
                    print(
                        "Failure \(error)"
                    )
            }
        }
    }
}

extension RMCharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier, for: indexPath) as? RMCharacterCollectionViewCell else {
            fatalError("Unsupported cell")
        }
        let viewModel = RMCharacterCollectionViewCellViewModel(characterName: "James", characterStatus: .alive, characterImageUrl: nil)
        cell.configure(with: viewModel)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30) / 2
        return CGSize(width: width, height: width * 1.5)
    }


}
