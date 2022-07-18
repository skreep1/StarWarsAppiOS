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
    
    var people: People?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
    
    }
    
    private func setupLabel() {
        self.heightLabel.text = people?.height
        self.nameLabel.text = people?.name
        self.weightLabel.text = people?.weight
        self.genderLabel.text = people?.gender
        self.birthdayLabel.text = people?.birth
    }
    

}
