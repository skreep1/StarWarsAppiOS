//
//  MainViewController.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 17.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var mainCV: UICollectionView!
    
    let network = Network()
    var peoples = [People]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        network.fetchPeople { data in self.peoples = data
        DispatchQueue.main.async { self.mainCV.reloadData()}}
        
        self.mainCV.dataSource = self
        self.mainCV.delegate = self
    }
}


extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return peoples.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PeopleCell
        cell.layer.cornerRadius = 10
        let people = peoples[indexPath.row]
        cell.setupPeopleCell(people: people)
        return cell
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UICollectionViewCell,
        let indexPath = self.mainCV.indexPath(for: cell) {
        let vc = segue.destination as! DetailViewController
            vc.people = peoples[indexPath.row]
                 
        }
    }
    
    
    }
    
    

