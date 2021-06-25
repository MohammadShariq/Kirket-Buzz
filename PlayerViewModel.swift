//
//  PlayerViewModel.swift
//  Kirket Buzz
//
//  Created by Mohammad Shariq on 23/06/21.
//

import Foundation

class PlayerViewModel {
    var modelArray: [PlayerModel] = []
    func getData() -> [PlayerModel] {
        modelArray.append(PlayerModel(countryImageView: "IND", playerImageView: "kohli", playerName: "Virat Kohli", playerT20Career: "T20 Career: M-89, Run-3159", playerTestCareer: "Test Career: M-92, Run-7545", playerODICareer: "ODICareer: M-254, Run-12169"))
        
        modelArray.append(PlayerModel(countryImageView: "PAK", playerImageView: "afridi", playerName: "Shahid Afridi", playerT20Career: "T20 Career: M-99, Run-1416", playerTestCareer: "Test Career: M-27, Run-1716", playerODICareer: "ODICareer: M-398, Run-8064"))
        
        modelArray.append(PlayerModel(countryImageView: "ENG", playerImageView: "stokes", playerName: "Ben Stokes", playerT20Career: "T20 Career: M-34, Run-442", playerTestCareer: "Test Career: M-71, Run-4631", playerODICareer: "ODICareer: M-98, Run-2817"))
        
        modelArray.append(PlayerModel(countryImageView: "SA", playerImageView: "abd", playerName: "AB Devilliars", playerT20Career: "T20 Career: M-78, Run-1672", playerTestCareer: "Test Career: M-114, Run-8765", playerODICareer: "ODICareer: M-228, Run-9577"))
        
        modelArray.append(PlayerModel(countryImageView: "BANG", playerImageView: "sakib", playerName: "Sakib Ul Hassan", playerT20Career: "T20 Career: M-76, Run-1567", playerTestCareer: "Test Career: M-57, Run-3930", playerODICareer: "ODICareer: M-212, Run-6455"))
        
        modelArray.append(PlayerModel(countryImageView: "SL", playerImageView: "malinga", playerName: "Lasit Malinga", playerT20Career: "T20 Career: M-83, Run-136", playerTestCareer: "Test Career: M-30, Run-275", playerODICareer: "ODICareer: M-226, Run-567"))
        
        modelArray.append(PlayerModel(countryImageView: "IND", playerImageView: "msd", playerName: "MS Dhoni", playerT20Career: "T20 Career: M-98, Run-1617", playerTestCareer: "Test Career: M-90, Run-4867", playerODICareer: "ODICareer: M-350, Run-10773"))
        
        modelArray.append(PlayerModel(countryImageView: "IND", playerImageView: "rohit", playerName: "Rohit Sharma", playerT20Career: "T20 Career: M-111, Run-2864", playerTestCareer: "Test Career: M-39, Run-2679", playerODICareer: "ODICareer: M-272, Run-9205"))
        
        modelArray.append(PlayerModel(countryImageView: "ENG", playerImageView: "moeen", playerName: "Moeen Ali", playerT20Career: "T20 Career: M-34, Run-392", playerTestCareer: "Test Career: M-61, Run-2831", playerODICareer: "ODICareer: M-109, Run-1849"))
        
        modelArray.append(PlayerModel(countryImageView: "PAK", playerImageView: "baaber", playerName: "Baber Azam", playerT20Career: "T20 Career: M-54, Run-2035", playerTestCareer: "Test Career: M-33, Run-2169", playerODICareer: "ODICareer: M-80, Run-3808"))
        
        modelArray.append(PlayerModel(countryImageView: "SL", playerImageView: "sanga", playerName: " Kumar Sangakkara", playerT20Career: "T20 Career: M-56, Run-1382", playerTestCareer: "Test Career: M-134, Run-12400", playerODICareer: "ODICareer: M-404, Run-14234"))
        
        return modelArray
    }
    func fetchData(row: Int) -> PlayerModel {
        return modelArray[row]
}
}


