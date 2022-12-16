//
//  HeroHeaderUIView.swift
//  NetflixClone
//
//  Created by Liliana Porto Abdala on 02/12/22.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let playButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let heroImameView: UIImageView = {

        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
        
    }()
    
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImameView)
        addGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImameView.frame = bounds
        
    }
    required init?(coder: NSCoder) {
        fatalError()
        
    }
}
