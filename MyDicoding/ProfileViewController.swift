//
//  ViewController.swift
//  MyDicoding
//
//  Created by Osmartin Pardomuan Siregar on 06/04/23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var followedButton: UIButton!
    @IBOutlet weak var academy: UILabel!
    @IBOutlet weak var challenge: UILabel!
    @IBOutlet weak var event: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCircleImageView()
        profileImageView.image = UIImage(named: "LogoChallenge")
        name.text = "Siregar Martin"
        job.text = "Mobile Developer"
        academy.text = "30 Kelas Akademi"
        challenge.text = "0 Challenge"
        event.text = "26 Event dihadiri"
        
        followedButton.setTitle("Follow", for: .normal)
        
        print(followedButton.titleLabel?.text ?? "Tidak mendapatkan text")
    }
    
    private func setupCircleImageView() {
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
        
    }

    private var totalFollower = 0;
    private var isFollow = false
    
    @IBAction func setFollowed(_ sender: UIButton) {
//        totalFollower += 1
//        newButton.setTitle("Follow \(totalFollower)", for: .normal)
        isFollow = !isFollow
        followedButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
        print("Follow : \(isFollow)")
    }
}

