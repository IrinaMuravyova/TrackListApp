//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by Irina Muravyeva on 06.02.2024.
//

import UIKit

class TrackListViewController: UITableViewController {
    
    //var - тк наш функционал позволяет перемешивать элементы нашего трек листа, следовательно меняется и местоположение в массиве
    private var trackList = Track.getTrackList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "track", for: indexPath)
        let track = trackList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = track.song
        content.secondaryText = track.artist
        content.image = UIImage(named: track.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? TrackDetailsViewController
        //здесь извлекаем через guard потому что не можем опциональное значение передать в индекс массива
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        detailsVC?.track = trackList[indexPath.row]
    }
}
    // MARK: - UITableViewDelegate
    extension TrackListViewController {
        // отключаю delete section
        override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            .none
        }
        //убираю смещение ячеек при переходе в режим редактирования
        override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
            false
        }
        
        override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
            //удаляю данные по индексу из массива с сохранением
            let track = trackList.remove(at: sourceIndexPath.row)
            //вставляю удаленный ранее трэк по другому индексу
            trackList.insert(track, at: destinationIndexPath.row)
        }
        
    }

