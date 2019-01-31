//
//  CustomCollectionView.swift
//  SignIn&SignUp
//
//  Created by sowah on 1/31/19.
//  Copyright © 2019 sowah. All rights reserved.
//

import UIKit

class CustomCollectionView: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    //var posts = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        var height: CGFloat = 40 + 8 + 8
//        height += view.frame.width
//        height += 50
//        height += 60
//
//        return CGSize(width: view.frame.width, height: height)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // how many cell for each row
        let numberOfCell: CGFloat = 3
        let reduceSpace: CGFloat = numberOfCell - 1
        
        let width = (view.frame.width - reduceSpace) / numberOfCell
        return CGSize(width: width, height: width)
    }
    
    
}
