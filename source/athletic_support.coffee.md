AthleticSupport is a meta package that extends loads of core components.

The goal of this package is to require smaller independent packages and pollute them into the global namespace and native prototypes to create a firm foundation for your node or browser experience.

AthleticSupport provides the comfort and support that you so sorely need.

Implementation
--------------

Here we require Conerstone to provide the bulk of native prototype extensions.

    require('cornerstone-js')

Inflecta brings some additional and better string extensions.

    require('inflecta').pollute()

    # TODO: Move this to external lib
    global.Base64 = require('./base64')

    global.Deferred = require("deferred")
