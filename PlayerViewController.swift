//
//  PlayerViewController.swift
//  Kirket Buzz
//
//  Created by Mohammad Shariq on 23/06/21.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet var playerTableView: UITableView!
    @IBOutlet var playerSearchBar: UISearchBar!

    var viewModel: PlayerViewModel = PlayerViewModel()
    var modelArray: [PlayerModel] = []
    let reuseIdentifier: String = "PlayerCell"
    var filterArray: [PlayerModel] = []
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTableView.delegate = self
        playerTableView.dataSource = self
        playerSearchBar.delegate = self
        modelArray = viewModel.getData()
    }
}
extension PlayerViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = (filterArray.count == 0) ? viewModel.modelArray.count : filterArray.count
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! PlayerTableViewCell
        let array: [PlayerModel] = (filterArray.count == 0) ? viewModel.modelArray : filterArray
        let perLevel:CGFloat = CGFloat(1.0) / CGFloat(self.modelArray.count)

        cell.backgroundColor = UIColor.init(red: 180/255.0, green: 200/255.0, blue: 20/255.0, alpha: (perLevel + CGFloat(indexPath.row) * perLevel))
        cell.playerImageView.image = UIImage(named: array[indexPath.row].PlayerImageView)
        cell.playerName.text = array[indexPath.row].PlayerName
        cell.countryImageView.image = UIImage(named: array[indexPath.row].CountryImageView)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PlayerDetailViewController") as! PlayerDetailViewController
        vc.delegate = self
        vc.row = indexPath.row
        vc.data = viewModel.modelArray[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            playerTableView.beginUpdates()
            viewModel.modelArray.remove(at: indexPath.row)
            playerTableView.deleteRows(at: [indexPath], with: .fade)
            playerTableView.endUpdates()
    }
}
}
extension PlayerViewController: UpdatePlayerName {
    func updatePlayer(row: Int, updatedName: String) {
        modelArray[row].PlayerName = updatedName
        playerTableView.reloadData()
    }
    
    func addedNewaRow() {
       let model1 = PlayerModel(countryImageView: "IND", playerImageView: "irfan", playerName: "Irfan Pathan", playerT20Career: "T20Career: M-24, Run-172", playerTestCareer: "TestCareer: M-29, Run-1105", playerODICareer: "ODICareer: M-120, Run-1544")
        let model2 = PlayerModel(countryImageView: "IND", playerImageView: "bumra", playerName: "Jaspreet Bumra", playerT20Career: "T20Career: M-49, Run-8", playerTestCareer: "TestCareer: M-20 ,Run-43", playerODICareer: "ODICareer: M-67, Run-19")
        viewModel.modelArray.append(model1)
        viewModel.modelArray.append(model2)
        playerTableView.reloadData()
    }
}
extension PlayerViewController: UISearchBarDelegate {
 
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterArray =  viewModel.modelArray.filter { $0.PlayerName.contains(searchText)}
        playerTableView.reloadData()
    }
}

