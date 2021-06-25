//
//  PlayerDetailViewController.swift
//  Kirket Buzz
//
//  Created by Mohammad Shariq on 23/06/21.
//

import UIKit

protocol UpdatePlayerName {
    func updatePlayer(row: Int, updatedName: String)
    func addedNewaRow()
}

class PlayerDetailViewController: UIViewController {

    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var playerNametextField: UITextField!
    @IBOutlet weak var playerT20CareerLabel: UILabel!
    @IBOutlet weak var playerTestCareerLabel: UILabel!
    @IBOutlet weak var playerODICareerLabel: UILabel!
    
    var data: PlayerModel!
    var didTap = true
    var row = 0
    
    var delegate: UpdatePlayerName?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryImageView.image = UIImage(named: data.CountryImageView)
        playerImageView.image = UIImage(named: data.PlayerImageView)
        playerNametextField.text = data.PlayerName
        playerT20CareerLabel.text = data.PlayerT20Career
        playerTestCareerLabel.text = data.PlayerTestCareer
        playerODICareerLabel.text = data.PlayerODICareer
        
        playerNametextField.isEnabled = false
    }
    @IBAction func updateClicked(_ sender: UIButton) {
        if sender.tag == 0 {
            playerNametextField.isEnabled = true
            sender.setTitle("update", for: .normal)
            sender.tag = 1
            playerNametextField.backgroundColor = .white
        } else if sender.tag == 1 {
            playerNametextField.isEnabled = false
            sender.setTitle("Edit", for: .normal)
            sender.tag = 0
           delegate?.updatePlayer(row: row, updatedName: playerNametextField.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func addClicked(_ sender: UIButton) {
        delegate?.addedNewaRow()
        playerNametextField.backgroundColor = UIColor.clear
        self.navigationController?.popViewController(animated: true)
    }
    
}
