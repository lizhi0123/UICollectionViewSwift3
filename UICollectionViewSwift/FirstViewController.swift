//
//  FirstViewController.swift
//  UICollectionViewSwift
//
//  Created by SunnyZhang on 17/2/23.
//  Copyright © 2017年 Sunny. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    

    @IBOutlet weak var firstView: UILabel!

    @IBOutlet weak var loadLbl: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
   // var coll:UICollectionView? = UICollectionView();
    var collectionID:String! = "collecionID";
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initCollectionView();
        
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//MARK: ------  uicollectionView datasource --------

extension FirstViewController :UICollectionViewDataSource,UICollectionViewDelegate{
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 10;
    }
    
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionID, for: indexPath)
        cell.backgroundColor = UIColor.red;
        
        return cell;
    }
}

//MARK: ------  Private Method --------

extension FirstViewController{
    fileprivate func initCollectionView(){
        let flowLayout = UICollectionViewFlowLayout();
        flowLayout.itemSize = CGSize(width: 50, height: 60);
        collectionView.collectionViewLayout = flowLayout;
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: collectionID)
    }
}

