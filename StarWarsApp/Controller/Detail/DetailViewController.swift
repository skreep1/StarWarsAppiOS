//
//  DetailViewController.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 18.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hair: UILabel!
    @IBOutlet weak var birth: UILabel!
    @IBOutlet weak var skin: UILabel!
    @IBOutlet weak var eye: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    var people: People?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupText()
    
    }
    
    private func setupText() {
        self.height.text = people?.height
        self.nameLabel.text = people?.name
        self.weight.text = people?.weight
//        self.genderLabel.text = people?.gender
        self.birth.text = people?.birth
        self.hair.text = people?.hair
        self.skin.text = people?.skin
        self.eye.text = people?.eye
    }

}
