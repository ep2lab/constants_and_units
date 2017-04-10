CONSTANTS_AND_UNITS
===================

[![DOI](https://zenodo.org/badge/84933945.svg)](https://zenodo.org/badge/latestdoi/84933945)

A very simple class to hold physical and mathematical constants and unit
conversion methods.

## Installation

Installation requires simply that you 
[download CONSTANTS_AND_UNITS](https://github.com/mariomerinomartinez/constants_and_units/archive/master.zip) 
and add the base directory (the one that contains the `+constants_and_units` 
directory) to your Matlab path.

### Dependencies

A recent version of Matlab is needed to run the code. 
The code has been developed in Matlab 2016a Academic version. 
 
## Usage
 
A `constants` object is created and used as in the following simple example:

```Matlab
c = constants_and_units.constants; % Create the object
c.eV2J(3); % Convert 3 eV to J
```

### Testing

Unit tests are found in the `/test` subdirectory. After adding the package to
your Matlab path, you can run all tests by executing `runtests` from this 
subdirectory.

## Contributing

If you have any comments for improvement or 
are interested in contributing to the continued 
development of this or any of my other codes, you can contact me 
through my [personal website](http://mariomerino.uc3m.es/).
  
## License

Copyright (c) 2017 Mario Merino. The software is released as open 
source with the [MIT License](LICENSE.md).


