//
//  Women's.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 27/09/22.
//

import UIKit

struct itemData: Codable {
    
    var name: String
    var img : String
}

class Women_s: UIViewController {

    @IBOutlet weak var womensLabel: UILabel!
   
    @IBOutlet weak var womensCollectionView: UICollectionView!
    
    let clothType1 = ["Traditional","Formal","Casual","Business attire","Italien","Sports"]
    let clothImg1 = ["Traditional","Formal","Casual","Business attire","Italien","Sports"]
    
  //  let clothType2 = ["e","r","f","v s","s","v"]
  //  var clothImg2 = ["Formal","Traditional","Casual","Business attire","Italien","Sports"]
    
    var array = [String]()
    
    var label = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        womensCollectionView.delegate = self
        womensCollectionView.dataSource = self
        
//        array.append(itemData(name: "Traditional", img: "Traditional"))

        womensLabel.text = label
    }
    
}
extension Women_s: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  array.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell4 = womensCollectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CustomCVC4
            cell4.labelcell4.text = array[indexPath.row]
            cell4.imgcell4.image = UIImage(named: array[indexPath.row])
  
      
        cell4.layer.cornerRadius = 20
        cell4.imgcell4.layer.cornerRadius = 15
        
        
        return cell4
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.width - 20 ) / 1 )
        let height = ((collectionView.frame.height - 25 ) / 4 )
        
         
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    

}

