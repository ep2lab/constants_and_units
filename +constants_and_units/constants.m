%{
This class contains physical constants, unit conversion factors, and
methods for unit conversion.

All constants are in SI units.

%----------------------------------------------------------------------
Author: Mario Merino
Date: 20170314
%----------------------------------------------------------------------
%}
classdef constants < handle 
%----------------------------------------------------------------------
    properties (Constant = true) % Fundamental physical magnitudes in SI
        qe = 1.60217646e-19;        % Electron charge [C]
        me = 9.10938188e-31;        % Electron mass [kg]
        kB = 1.3806503e-23;         % Boltzmann Constant [J/K]
        eps0 = 8.854187817e-12;     % Permittivity of vacuum [F/m]
        mu0 = 4*pi*1e-7;            % Permeability of vacuum [N/A^2]
    end
%----------------------------------------------------------------------    
    properties (Dependent = true) % Derived quantities
        c0;                         % Speed of light [m/s]
    end
%----------------------------------------------------------------------
    methods % Constructor, set/get, etc
        function v = get.c0(h)
            v = 1/sqrt(h.eps0*h.mu0);
        end
    end     
%----------------------------------------------------------------------
    methods (Static = true) % Unit conversion
        function out = eV2J(in)
            % Energy: eV to J
            out = in * constants_and_units.constants.qe;
        end
        function out = J2eV(in)
            % Energy: J to eV
            out = in / constants_and_units.constants.qe;
        end
        function out = eV2K(in)
            % Energy/temperature: eV to K
            out = in * constants_and_units.constants.qe / constants_and_units.constants.kB;
        end
        function out = K2eV(in)
            % Energy/temperature: K to eV
            out = in / constants_and_units.constants.qe * constants_and_units.constants.kB;
        end
    end
%----------------------------------------------------------------------
end

