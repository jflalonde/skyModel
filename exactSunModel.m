%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function lum = exactSunModel(c, d, e, f, up, vp, vh, phi, phiSun, thetaSun)
%  Synthesizes the sun contribution to the sky model
% 
% Input parameters:
%  - c, d, e: Perez sky model parameters
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
function lum = exactSunModel(c, d, e, f, up, vp, theta, phi, phiSun, thetaSun)

phic = phi;

thetap = pixelZenithAngle(theta, f, up, vp);
phip = pixelAzimuthAngle(theta, phic, f, up, vp);

deltaPhi = abs(phiSun - phip);
gamma = acos(cos(thetaSun) .* cos(thetap) + sin(thetaSun) .* sin(thetap) .* cos(deltaPhi));

% plug in Perez sky model
lum = perezSunModel(c, d, e, gamma);

