//
//  RMCharacterCollectionViewCell.swift
//  R_M
//
//  Created by JWSScott777 on 12/29/22.
//

import UIKit

/// Single cell
final class RMCharacterCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "RMCharacterCollectionViewCell"

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()

    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textColor = .label
        nameLabel.font = .systemFont(ofSize: 18, weight: .medium)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()

    private let statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.textColor = .secondaryLabel
        statusLabel.font = .systemFont(ofSize: 18, weight: .regular)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()

    // Mark: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubViews(imageView, nameLabel, statusLabel)
        addConstraints(<#[NSLayoutConstraint]#>)
    }

    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }

    private  func addConstraint() {
        NSLayoutConstraint.activate([
            statusLabel.heightAnchor.constraint(equalToConstant: 50),
            nameLabel.heightAnchor.constraint(equalToConstant: 50),

            statusLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
        ])
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        nameLabel.text = nil
        statusLabel.text = nil
    }

    public func configure(with viewModel: RMCharacterCollectionViewCellViewModel) {

    }
}
