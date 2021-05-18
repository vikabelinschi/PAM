//
//  ViewController.swift
//  PAM_Lab1
//
//  Created by Victoria Belinschi on 2/4/21.
//import UIKit

import UIKit


enum Section {
    case first
    case second
}


class FirstViewController: UIViewController, UICollectionViewDelegate,  UICollectionViewDataSource {
  
    var indexPath: IndexPath = [0]
    var demoCellCount = 30
    
   
    @IBOutlet var collectionView: UICollectionView!
    
  //  var dataSource: UICollectionViewDiffableDataSource<Section, String>!

       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Gigs"
       collectionView.dataSource = self
        collectionView.delegate = self
        self.collectionView!.register(MyCell.self, forCellWithReuseIdentifier: "ViewCell")
      //  self.collectionView.register(UINib(nibName: "ViewCell", bundle: nil), forCellWithReuseIdentifier: "ViewCell")
       }
    
    
    
    
           func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
               return demoCellCount
           }

           
    func collectionView( _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
               let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewCell", for: indexPath) as! MyCell
       
        cell.label?.text = dataItems[indexPath.item].name
        cell.label2?.text = dataItems[indexPath.item].payment
        
               return cell
           }
       

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         print(indexPath.row)
         if indexPath.row == demoCellCount - 1
         {
             print(indexPath.row)
         }
     }
     
//    func sendDataToFirstViewController(myData: String) {
    //    self.labelF?.text = "New message: \(myData)"

        
        
  //    }
    
    
    
 
    

}


