//
//  CollcetionCategoriesVC.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 19/09/22.
//

import UIKit

class CollcetionCategoriesVC: UIViewController {

    @IBOutlet weak var bellimg: UIImageView!
    @IBOutlet weak var voiceimgaview: UIImageView!
    @IBOutlet weak var dragview: UIImageView!
    @IBOutlet weak var textimgview: UIImageView!
    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var labelview: UIView!
    @IBOutlet weak var collectionview: UICollectionView!
    
    @IBOutlet weak var collectionView2: UICollectionView!
    
    @IBOutlet weak var collectionView3: UICollectionView!
    
    var LabelName1 = ["Women","Men","Kids","Electronics","Beauty"]
  //  var ImgName1 = ["Women","Men","Kids","Electronics","Beauty"]
    
    var labelName2 = ["Laptops","Mobiles","Handbags","Electronics"]
    var imgName2 = ["Laptops","Mobiles","Handbags","Electronics"]
    
    var labelName3 = ["Combo Watch","shoes","Mobile Covers","Kids Clothes","Tops","Men's Watches","Sofa Set","Bags","Hair Oil","Book","Deo","Car Air freshaners","Sandels","Beauty Products"]
    
    var ImgName3 = ["Combo Watch","Shoes","Mobile Covers","Kids Clothes","Tops","Men's Watches","Sofa Set","Bags","Hair Oil","Book","Deo","Car Air freshaners","Sandels","Beauty Products"]
    
    
    
    
    let clothType1 = ["Traditional","Formal","Casual","Business attire","Italien","Sports"]
    let clothImg1 = ["Traditional","Formal","Casual","Business attire","Italien","Sports"]
    
    let clothType2 = ["e","r","f","v s","s","v"]
  //  var clothImg2 = ["Formal","Traditional","Casual","Business attire","Italien","Sports"]
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
 
        collectionview.delegate = self
        collectionview.dataSource = self
        
        collectionView2.dataSource = self
        collectionView2.delegate = self
        
        collectionView3.dataSource = self
        collectionView3.delegate = self
        
        
    }
    
    @IBAction func view1btnTapped(_ sender: UIButton) {
        
        let d = storyboard?.instantiateViewController(withIdentifier: "view1VC") as! view1VC
        self.navigationController?.pushViewController(d, animated: true)
    }
    
    
    @IBAction func view2BtnTapped(_ sender: UIButton) {
    }
    
    
    
    
}
extension CollcetionCategoriesVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       if (collectionView == collectionview) {
            return LabelName1.count
        }
        else if (collectionView == collectionView2)
        {
            return labelName2.count
        }
        return labelName3.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCVC
        
        if (collectionView == collectionView2){
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CustomCVC2
            cell2.labelcell2.text = labelName2[indexPath.row]
            cell2.imgviewcell2.image = UIImage(named: imgName2[indexPath.row])
            cell2.layer.cornerRadius = 10
            cell2.imgviewcell2.layer.cornerRadius = 10
            return cell2
            
          
            
        } else if (collectionView == collectionView3) {
            let cell3 = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CustomCVC3
            cell3.labelcell3.text = labelName3[indexPath.row]
            cell3.imgcell3.image = UIImage(named: ImgName3[indexPath.row])
            cell3.imgcell3.layer.cornerRadius = 10
            cell3.layer.cornerRadius = 10
            return cell3
        }
        
        cell.labelcell1.text = LabelName1[indexPath.row]
        cell.layer.cornerRadius = 10
       return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == collectionView3) {
            let weigth = ((collectionView.frame.width - 15 ) / 2 )
            let height = ((collectionView.frame.height - 15) / 2 )
            
            return CGSize(width: weigth, height: height)
        }
        let weigth = ((collectionView.frame.width - 20 ) / 3 )
        let heigth = ((collectionView.frame.width - 10) / 1 )
        
        return CGSize(width: weigth, height: heigth)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            if let headerview = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headercell", for: indexPath) as? headerCRV
            {
                headerview.headerLabel.text = "Recommended"
                
                return headerview
            }
        default:
            return UICollectionReusableView()
        }
        return UICollectionReusableView()
}
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (collectionView == collectionview) {
        let e = storyboard?.instantiateViewController(withIdentifier: "Women_s") as! Women_s
        
        e.label = LabelName1[indexPath.row]
            if (indexPath.row == 0) {
                e.array = clothType1
            } else if (indexPath.row == 1) {
                e.array = clothType2
            }
        
            self.navigationController?.pushViewController(e, animated: true)
        }
    }
   
}
