//
//  PersonCell.swift
//  AgingPeopleRandomly
//
//  Created by Hajar Alomari on 06/12/2021.
//

import UIKit

class PersonCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    func setPersonData(person: PersonData){
        nameLabel.text = person.name
        ageLabel.text = person.age
    }
}
