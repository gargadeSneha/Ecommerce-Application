//
//  view1VC.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 06/07/1944 Saka.
//

import UIKit

class view1VC: UIViewController {
    
    
    @IBOutlet weak var view1Collectionview: UICollectionView!
    
    var mainLable = ["APPLE iphone 12","APPLE iphone 11","OnePlue 9","OnePlue 9 pro","OnePlue 10T","OnePlue N100","OnePlue Nord2T","OPPO A93","OPPO Reno6","Vivo S1 pro","Vivo Y21T"]
    
    var mainImg = ["APPLE iphone 12","APPLE iphone 11","OnePlue 9","OnePlue 9 pro","OnePlue 10T","OnePlue N100","OnePlue Nord2T","OPPO A93","OPPO Reno6","Vivo S1 pro","Vivo Y21T"]
    
    var detailLable = ["(Purple,64 GB)","(Red,128 GB)","(Blue,128 GB)","(Green,128 GB)","(Black, 128 GB)","(Gery, 64 GB)","(White, 128 GB)","(Blue,64 GB)","(Gary, 128 GB)","(Blue, 64 GB)","(Black, 128 GB)"]
    
    var newRs = ["$53,990","$41,990","$35,799","$38,990","$36,900","$57,880","$35,709","$39,200","$58,000","$39,600","$35,999"]
    
    var oldRs = ["$59,900","$48,900","$36,999","$40,999","$38,990","$59,500","$37,854","$40,6099","$60,769","$412,808","$38,800"]
     
    var ratingLable = ["(1,82,877)","(1,18,709)","(234)","(899)","(1,200)","(30,990)","(6,500)","(67,900)","(56,434)","(30,4900)","(78,986)"]
    
    var discountLable = ["9% off","14% off","10% off","15% off","9% off","14% off","10% off","8% off","12% off","9% off","15% off"]
    
    var deliveryLable = ["Delivery by 11 PM, Tomorrow","Delivery by 1 PM, Today","Delivery by 3 PM, Wed","Delivery by 5 PM, Tomorrow","Delivery by 9 PM, Fri","Delivery by 9 AM, Sun","Delivery by 11 PM, Today","Delivery by 4 PM, Thu","Delivery by 11 PM, Sun","Delivery by 1 PM, Wed","Delivery by 7 PM, Sat"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view1Collectionview.delegate = self
        view1Collectionview.dataSource = self
        
    }
   
}
extension view1VC: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainLable.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let view1cell = view1Collectionview.dequeueReusableCell(withReuseIdentifier: "view1cell", for: indexPath) as! View1CVC
   //     view1cell.
        view1cell.mainImgview1.image = UIImage(named: mainImg[indexPath.row])
        view1cell.headerLabelview1.text = mainLable[indexPath.row]
        view1cell.newRsview1.text = newRs[indexPath.row]
        view1cell.detailLableview1.text = detailLable[indexPath.row]
        view1cell.oldRsview1.text = oldRs[indexPath.row]
        view1cell.discountLableview1.text = discountLable[indexPath.row]
        view1cell.nosOfRatingLableView1.text = ratingLable[indexPath.row]
        view1cell.deliveryLableview1.text = deliveryLable[indexPath.row]
        
        view1cell.ratingImgview1.image = UIImage(named: "rating star")
        
        view1cell.layer.cornerRadius = 20
        view1cell.mainImgview1.layer.cornerRadius = 20
        
        
        return view1cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.width - 30 ) / 2)
        let height = ((collectionView.frame.height - 30 ) / 2)
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailcell = storyboard?.instantiateViewController(withIdentifier: "DetailsVC1") as! DetailsVC1
        
        
             detailcell.img = UIImage(named: mainImg[indexPath.row])!
             detailcell.label_name = mainLable[indexPath.row]
             detailcell.detail_Mob = detailLable[indexPath.row]
             detailcell.new_pri = newRs[indexPath.row]
             detailcell.old_pri = oldRs[indexPath.row]
             detailcell.dis = discountLable[indexPath.row]
             
        
        self.navigationController?.pushViewController(detailcell, animated: true)
    }
   
       
}
