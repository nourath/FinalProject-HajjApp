//
//  HajjInfoViewController.swift
//  FinalProject-HajjApp
//
//  Created by Abeer Pr on 21/05/1442 AH.
//

import UIKit

class HajjInfoViewController: UIViewController {
    
    @IBOutlet var healthConditionView: DesignableView!
    @IBOutlet var additionalInfoView: UIView!
    @IBOutlet var campaignView: UIView!
    
    @IBOutlet var hajjPermitNumber: UILabel!
    
    @IBOutlet var barcodeView: UIImageView!
    
    @IBOutlet var hajjPic: UIImageView!
    
    @IBOutlet var hajjName: UILabel!
    
    @IBOutlet var hajjNationality: UILabel!
    
    @IBOutlet var hajjLanguage: UIView!
    
    @IBOutlet var hajjAge: UILabel!
    @IBOutlet var hajjGender: UILabel!
    
    @IBOutlet var hajjBloodType: UILabel!
    
    @IBOutlet var compaignName: UILabel!
    
    @IBOutlet var compaignLocation: UILabel!
    
    @IBOutlet var hajjPhoneNumber: UILabel!
    
    @IBOutlet var hajjOtherLanguge: UILabel!
    
    @IBOutlet var hajjChronicDiseases: UILabel!
    
    
    
    @IBOutlet var barcodePressed: UIImageView!
    
    override func viewDidLoad() {
        healthConditionView.roundCorners(corners: [.topLeft,.topRight], radius: 30)
        
        additionalInfoView.roundCorners(corners: [.topLeft,.topRight], radius: 30)
        campaignView.roundCorners(corners: [.topLeft,.topRight], radius: 30)
    }
    
}



