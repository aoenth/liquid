//
//  Application+FS.swift
//  Liquid
//
//  Created by Tibor Bodecs on 2021. 03. 06..
//

public extension Application {

    /// returns the available file storages
    var fileStorages: FileStorages {
        liquid.storage.fileStorages
    }

    /// returns the file storage for a given identifier
    var fs: FileStorage {
        fileStorages.fileStorage(nil, logger: logger, on: eventLoopGroup.next())!
    }
}
