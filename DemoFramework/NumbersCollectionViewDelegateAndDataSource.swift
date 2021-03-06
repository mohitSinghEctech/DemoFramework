//
//  NumbersCollectionViewDelegateAndDataSource.swift
//  DemoFramework
//
//  Created by Mohit Kumar Singh on 22/02/22.
//

import UIKit

class NumbersCollectionViewDelegateAndDataSource: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {

    let numbers: [Int]
    
    override init() {
        var nums: [Int] = []
        for i in 0...99 {
            nums.append(i)
        }
        self.numbers = nums
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! NumbersCollectionViewCell
        cell.label.text = String(numbers[indexPath.row])
        return cell
    }
    
}



