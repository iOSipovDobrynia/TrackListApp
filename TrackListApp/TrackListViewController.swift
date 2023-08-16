//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by Goodwasp on 15.08.2023.
//

import UIKit

class TrackListViewController: UITableViewController {
    // MARK: - Private prop
    private var trackList = Track.getTrackList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
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
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let track = trackList[indexPath.row]

        performSegue(withIdentifier: "showTrackDetails", sender: track)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let trackDetailsVC = segue.destination as? TrackDetailsViewController else {
            return
        }
//        guard let indexPath = tableView.indexPathForSelectedRow else { return }
//        trackDetailsVC.track = trackList[indexPath.row]
        trackDetailsVC.track = sender as? Track
    }
}
