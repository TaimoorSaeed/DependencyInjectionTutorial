//
//  YahooAssembly.swift
//  DInjection
//
//  Created by Evgeniy Antonov on 4/21/17.
//  Copyright © 2017 Evgeniy Antonov. All rights reserved.
//

import Typhoon

class YahooAssembly: TyphoonAssembly {
    open dynamic func viewController() -> AnyObject {
        return TyphoonDefinition.withClass(ViewController.self, configuration: { (definition) in
            definition!.injectProperty("serviceTitle", with: "Yahoo example")
        }) as AnyObject
    }
}
