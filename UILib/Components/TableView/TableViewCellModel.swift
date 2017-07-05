//
//  TableViewCellModel.swift
//  UILib
//
//  Created by Benji Encz on 4/29/16.
//  Copyright © 2016 Benjamin Encz. All rights reserved.
//

import UIKit

typealias CommitEditingClosure = (IndexPath) -> Void

struct TableViewCellModel: Component {
    let cellIdentifier: String
    let canEdit: Bool
    let commitEditingClosure: CommitEditingClosure
    let applyViewModelToCell: (UITableViewCell) -> Void

    init(
        cellIdentifier: String,
        componentIdentifier: String,
        applyViewModelToCell: @escaping (UITableViewCell) -> Void,
        commitEditingClosure: @escaping CommitEditingClosure
    ) {
        self.cellIdentifier = cellIdentifier
        self.applyViewModelToCell = applyViewModelToCell
        self.commitEditingClosure = commitEditingClosure
        self.canEdit = true
        self.componentIdentifier = componentIdentifier
    }

    var componentIdentifier: String
}
