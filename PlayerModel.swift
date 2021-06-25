//
//  PlayerModel.swift
//  Kirket Buzz
//
//  Created by Mohammad Shariq on 23/06/21.
//

import Foundation
class PlayerModel {
    
    var CountryImageView: String
    var PlayerImageView: String
    var PlayerName: String
    var PlayerT20Career: String
    var PlayerTestCareer: String
    var PlayerODICareer: String
    
    init(countryImageView: String, playerImageView: String, playerName: String, playerT20Career: String, playerTestCareer: String, playerODICareer: String) {
        
        self.CountryImageView = countryImageView
        self.PlayerImageView = playerImageView
        self.PlayerName = playerName
        self.PlayerT20Career = playerT20Career
        self.PlayerTestCareer = playerTestCareer
        self.PlayerODICareer = playerODICareer
        
    }
}
