%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function lum = exactSkyModel(a, b, c, d, e, f, up, vp, vh, phi, phiSun, thetaSun)
%  Synthesizes the full sky model.
% 
% Input parameters:
%  - a, b, c, d, e: Perez sky model parameters
%  - f: camera focal length (in pixels)
%  - up: x-coordinates of pixels in image
%  - vp: y-coordinates of pixels in image
%  - theta: camera zenith angle
%  - phi: camera azimuth angle (in radians)
%  - phiSun: sun azimuth angle (in radians)
%  - thetaSun: sun zenith angle (in radians)
%
% Output parameters:
%  - lum: luminance map in image coordinates (same dimensions as up and up)
%   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function lum = exactSkyModel(a, b, c, d, e, f, up, vp, theta, phi, phiSun, thetaSun)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright 2006-2009 Jean-Francois Lalonde
% Carnegie Mellon University
% Do not distribute
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% product of sun and gradient luminance
% vh = tan(theta-pi/2).*f;
lum = exactGradientModel(a, b, f, up, vp, theta) .* exactSunModel(c, d, e, f, up, vp, theta, phi, phiSun, thetaSun);

