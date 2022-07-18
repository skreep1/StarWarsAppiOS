//
//  PeopleCell.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 17.07.2022.
//

import UIKit

class PeopleCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    
    func setupPeopleCell(people: People) {
        nameLabel.text = people.name
        birthLabel.text = people.birth
    }
}
