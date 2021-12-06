//
//  ViewController.swift
//  AgingPeopleRandomly
//
//  Created by Hajar Alomari on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PeopleTableView: UITableView!
    
    
    var dataList: [PersonData] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dataList = createList()
        
        PeopleTableView.dataSource = self
        PeopleTableView.delegate = self
    }

    func createList() -> [PersonData]{
        var tempList: [PersonData] = []
        tempList.append(PersonData(name: "Mark", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Sara", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "James", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Maha", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Khalid", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Noor", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Ahmad", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Jack", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Ali", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Max", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Layla", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Fahad", age: String(Int.random(in: 0...95))))
        tempList.append(PersonData(name: "Lucy", age: String(Int.random(in: 0...95))))
        
        return tempList
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = dataList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! PersonCell
        
        cell.setPersonData(person: person)
        return cell
    }
}

