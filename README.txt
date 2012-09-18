This is a high-level overview of the files available within this package. It is based on the Perez sky model [Perez et al., 1993]. For more information, please follow our IJCV 2009 paper available here: 

http://graphics.cs.cmu.edu/projects/sky/

=== TEST FILE ===

Use the file 'synthesizeSky.m' as a starting point. 

=== SKY MODEL ===

These files synthesize the sky model based on camera parameters as inputs:
- exactSkyModel.m: Synthesizes the full sky model;
- exactGradientModel.m: Synthesizes only the "gradient" part of the sky model;
- exactSunModel.m: Synthesizes only the "sun" part of the sky model.

These files synthesize the sky model based on angles as inputs (Perez sky model):
- perezSkyModel.m: Synthesizes the full sky model;
- perezGradientModel.m: Synthesizes only the "gradient" part of the sky model;
- perezSunModel.m: Synthesizes only the "sun" part of the sky model.

Useful files that convert from pixel coordinates to angles:
- pixelAzimuthAngle.m: Converts from pixels to azimuth angle;
- pixelZenithAngle.m: Converts from pixels to zenith angle.

=== TURBIDITY ===

These files deal with converting the turbidity to the Perez weather coefficients (in 3 channels in xyY color space, as in [Preetham et al., 1999]):
- convertTurbidityToSkyParams.m: Converts turbidity to the weather coefficients;
- getTurbidityMapping.m: Returns the turbidity mapping between the weather coefficients in each channel.

=== CHANGELOG ===

09/21/11: Added missing file 'exactGradientModelRatio.m'. Thanks to A. Ravichandran for pointing this out!