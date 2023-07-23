//
//  ProfileHeaderView.swift
//  PleshakovNV_HW_2.1
//
//  Created by nikita pleshakov on 12.06.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private let imageButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
//    @objc func buttonPressed(_ sender: UIButton) {
//        let statusText = imageButton.setTitle("My first status", for: .normal)
//        print(label.text)
//        }
    
    @objc func buttonPressed() {
        print(imageLabel.text)
    }
    
    private let imageLabel: UILabel = {
        let label = UILabel()
        label.text = "Hipster Cat"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    private let textView: UITextField = {
        let text = UITextField()
        text.text = "Waiting for something..."
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .gray
        text.font = .systemFont(ofSize: 14, weight: .regular)
        
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var imageView: UIImageView = {
        var image = UIImageView()
        image.backgroundColor = .systemPink
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.borderWidth = 3
        image.image = UIImage(named: "avatarImage")
        return image
    }()
    
    func setupUI() {
        backgroundColor = .lightGray
        addSubview(imageView)
        addSubview(imageLabel)
        addSubview(textView)
        addSubview(imageButton)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.widthAnchor.constraint(equalToConstant: 100),
        ])
        NSLayoutConstraint.activate([
            imageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            imageLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20),
//            imageLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            imageLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20)
        ])
        NSLayoutConstraint.activate([
//            imageButton.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 16),
            imageButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            imageButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            imageButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
//             imageButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            imageButton.heightAnchor.constraint(equalToConstant: 50),
//            imageButton.widthAnchor.constraint(equalToConstant: 100),
        ])
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: imageButton.topAnchor, constant: -34),
            textView.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20),
//            textView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
//            textView.bottomAnchor.constraint(equalTo: imageButton.bottomAnchor, constant: 34),
        ])
    }
}

