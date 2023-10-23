//
//  ViewController.swift
//  drag-and-drop-tutorial
//
//  Created by Derek Kim on 2023-10-23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    private var imageView: UIImageView!
    private var customView: UIView!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureViewController()
        configureUI()
    }
    
    // MARK: - Functions
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Drag & Drop Image"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func configureUI() {
        setupImageView()
        setupCustomView()
        setupConstraints()
    }
    
    private func setupImageView() {
        imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "placeholder")
        
        view.addSubview(imageView)
    }
    
    private func setupCustomView() {
        customView = UIView()
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.backgroundColor = .systemPink
        
        view.addSubview(customView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            
            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            customView.widthAnchor.constraint(equalToConstant: 200),
            customView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
