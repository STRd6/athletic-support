[![Build Status](https://travis-ci.org/STRd6/athletic-support.png?branch=master)](https://travis-ci.org/STRd6/athletic-support)

AthleticSupport
===============

Providing the comfort and protection your node so sorely needs.

AthleticSupport is a meta package that extends loads of core components and prototypes.

The goal of this package is to require smaller independent packages and pollute them into the global namespace and native prototypes to create a firm foundation for your node or browser experience.

The only functionality this package will ever implement directly is polluting an existing package into the global namespace or extending methods on to built in prototypes. This allows the functionality providers to be good citizens while at the same time allowing for easy modification of the runtime environment from those who so choose by simply requiring AthleticSupport.

Programming is a contact sport, athletic support is required.

    require "athletic-support"
