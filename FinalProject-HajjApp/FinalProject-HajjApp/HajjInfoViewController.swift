//
//  HajjInfoViewController.swift
//  FinalProject-HajjApp
//
//  Created by Abeer Pr on 21/05/1442 AH.
//

import UIKit
import Firebase
import SDWebImage


class HajjInfoViewController: UIViewController {
    
    @IBOutlet var healthConditionView: DesignableView!
    @IBOutlet var additionalInfoView: UIView!
    @IBOutlet var campaignView: UIView!
    
    @IBOutlet var hajjPermitNumber: UILabel!
    
    @IBOutlet var barcodeView: UIImageView!
    
    @IBOutlet var hajjPic: UIImageView!
    
    @IBOutlet var hajjName: UILabel!
    
    @IBOutlet var hajjNationality: UILabel!
    
    @IBOutlet var hajjLanguage: UILabel!
    
    @IBOutlet var hajjAge: UILabel!
    @IBOutlet var hajjGender: UILabel!
    
    @IBOutlet var hajjBloodType: UILabel!
    
    @IBOutlet var campaignName: UILabel!
    
    @IBOutlet var campaignLocation: UILabel!
    
    @IBOutlet var hajjPhoneNumber: UILabel!
    
    @IBOutlet var hajjOtherLanguges: UILabel!
    
    @IBOutlet var hajjChronicDiseases: UILabel!
    

    @IBOutlet var barcodePressed: UIImageView!
    
    
    var hajj: Hajj?
    
    override func viewDidLoad() {
        healthConditionView.roundCorners(corners: [.topLeft,.topRight], radius: 30)
        
        additionalInfoView.roundCorners(corners: [.topLeft,.topRight], radius: 30)
        campaignView.roundCorners(corners: [.topLeft,.topRight], radius: 30)
        fetchUserName()
        
//        FirebaseConstants.picStorageRef.downloadURL(completion: { (url, error) in
//        print("Image URL: \((url?.absoluteString)!)")
//
////        self.writeDatabaseCustomer(imageUrl: (url?.absoluteString)!)
//        })
    }
    
    
    func fetchUserName() {
        
        if let userId = FirebaseConstants.userID?.uid {
            FirebaseConstants.users.getDocuments { (snapshot, err) in
                if let err = err {
                    print("Error getting user's name: \(err)")
                } else {
                    
                    if let currentUserDoc = snapshot?.documents.first(where: { ($0["uid"] as? String) == userId }) {
                        let getName = currentUserDoc["fullName"] as! String
                        let getAge = currentUserDoc["age"] as! Int
                        let getBloodType = currentUserDoc["bloodType"] as! String
                        let getCampaign = currentUserDoc["campaign"] as! String
                        let getChronicDisseases = currentUserDoc["chronicDiseases"] as! String
                      //  let getcurrentLocation = currentUserDoc["fullName"] as! String
                        let getGender = currentUserDoc["gender"] as! String
                        let getMainLanguage = currentUserDoc["mainLanguage"] as! String
                        let getNationality = currentUserDoc["nationality"] as! String
                        let getOtherLanguages = currentUserDoc["otherLanguages"] as! String
                        let getPermitNumber = currentUserDoc["permitNumber"] as! String
                        let getPhoneNumber = currentUserDoc["phoneNumber"] as! Int
                        let getPicURL = currentUserDoc["picture"]
                        
                        self.hajjName.text = getName
                        self.hajjPermitNumber.text = getPermitNumber
                        self.hajjNationality.text = getNationality
                        self.hajjLanguage.text = getMainLanguage
                        self.hajjAge.text = String(getAge)
                        self.hajjPermitNumber.text = getPermitNumber
                        self.hajjGender.text = getGender
                        self.hajjBloodType.text = getBloodType
                        self.campaignName.text = getCampaign
                       // self.campaignLocation.text =
                        self.hajjPhoneNumber.text = String(getPhoneNumber)
                        self.hajjOtherLanguges.text = getOtherLanguages
                        self.hajjChronicDiseases.text = getChronicDisseases
//                        self.hajjPic.sd_setImage(with: URL(string: "https://\(getPicURL)" ), completed: nil)


                        print(getName)
                    }
                }
            }
        }
    }
    
}



