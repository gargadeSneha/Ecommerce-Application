//
//  SliderVC.swift
//  Activity Indicator
//
//  Created by TryCatch Classes on 06/07/1944 Saka.
//

import UIKit

class SliderVC: UIViewController {

    
    @IBOutlet weak var sliderPageControl: UIPageControl!
    
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    
    let team = [UIImage(named: "Sale ad 1"),
                UIImage(named: "Sale ad 2"),
                UIImage(named: "Sale ad 3")]
    
    var timer = Timer()
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        sliderCollectionView.delegate = self
        sliderCollectionView.dataSource = self
        
        sliderPageControl.numberOfPages = team.count
        sliderPageControl.currentPage = 0
       
    }
    
    @IBAction func continueBtnTapped(_ sender: UIButton) {
        let slider = storyboard?.instantiateViewController(withIdentifier: "CollcetionCategoriesVC") as! CollcetionCategoriesVC
        self.navigationController?.pushViewController(slider, animated: true)
    }
  
}
extension SliderVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return team.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Slidercell", for: indexPath) as! SliderCVC
        cell.sliderImgView.image = team[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: sliderCollectionView.frame.width, height: sliderCollectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scrollpage = scrollView.contentOffset.x / view.frame.width
        sliderPageControl.currentPage = Int(scrollpage)
   }
   @objc func slider() {
       let index = IndexPath(item: counter, section: 0)
         if counter < team.count {
             sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            counter += 1
         }else{
            counter = 0
             sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            counter = 1
        }
    }
 
}
