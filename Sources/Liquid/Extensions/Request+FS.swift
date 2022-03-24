//
//  Request+FS.swift
//  Liquid
//
//  Created by Tibor Bodecs on 2021. 03. 06..
//

public extension Request {

    /// returns the file storage for a given identifier
    func fs() async -> FileStorage {
        await application.fileStorages.fileStorage(nil, logger: logger, on: eventLoop)!
    }
}
