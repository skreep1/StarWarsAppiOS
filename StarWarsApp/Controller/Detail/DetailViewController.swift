//
//  DetailViewController.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 18.07.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var skinLabel: UILabel!
    @IBOutlet weak var eyeLabel: UILabel!
    
    
    var people: People?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupText()
    
    }
    
    private func setupText() {
        self.heightLabel.text = people?.height
        self.nameLabel.text = people?.name
        self.weightLabel.text = people?.weight
        self.genderLabel.text = people?.gender
        self.birthdayLabel.text = people?.birth
        self.hairLabel.text = people?.hair
        self.skinLabel.text = people?.skin
        self.eyeLabel.text = people?.eye
    }
    

}
