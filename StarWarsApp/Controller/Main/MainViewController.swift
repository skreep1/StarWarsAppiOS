//
//  MainViewController.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 17.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var mainCV: UICollectionView!
    @IBOutlet weak var segmented: UISegmentedControl!
    
    let peopleRequst = PeopleRequest()
    var peoples = [People]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        peopleRequst.fetchPeople { data in self.peoples = data
        DispatchQueue.main.async { self.mainCV.reloadData()}}
        
        self.mainCV.dataSource = self
        self.mainCV.delegate = self
        
    }
    
    @IBAction func segmentedAction(_ sender: Any) {
        switch segmented.selectedSegmentIndex {
        case 0: loadData()
        case 1: sortedByWeight()
            reloadCollectionView()
        case 2: sortedByHeight()
            reloadCollectionView()
        default:
            break
        }
    }
    
}


extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        peoples.count
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
    // MARK: сортировки
    private func sortedByHeight() {peoples.sort { $0.height > $1.height}}
    private func sortedByWeight() {peoples.sort { $0.weight > $1.weight}}
    private func reloadCollectionView() {mainCV.reloadSections(IndexSet(integer: 0))}
    
    //MARK: Загрузка данных
    private func loadData() {
        peopleRequst.fetchPeople { data in self.peoples = data
        DispatchQueue.main.async { self.mainCV.reloadData()}}
    }
    
    }
    
    

