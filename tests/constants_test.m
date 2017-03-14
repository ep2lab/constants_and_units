%{
Compendium of all constants tests. You can run the tests by executing
runtests. You must add the package to your path first.

%----------------------------------------------------------------------
Author: Mario Merino
Date: 20170314
%----------------------------------------------------------------------
%}
function tests = constants_test
    tests = functiontests(localfunctions);
end

%----------------------------------------------------------------------
%----------------------------------------------------------------------
%----------------------------------------------------------------------
 
function test_constants_creation(t)
    h = constants_and_units.constants;
end
function test_calling_conversion_methods(t)    
    constants_and_units.constants.eV2J(1);
    constants_and_units.constants.J2eV(1);
    constants_and_units.constants.eV2K(1);
    constants_and_units.constants.K2eV(1);
end




