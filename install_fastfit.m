if strcmp(version('-release'),'2006b')
  mex -largeArrayDims pochhammer.c ../lightspeed/util.obj -I../lightspeed
  mex -largeArrayDims di_pochhammer.c ../lightspeed/util.obj -I../lightspeed
else
  mex pochhammer.c ../lightspeed/util.obj -I../lightspeed
  mex di_pochhammer.c ../lightspeed/util.obj -I../lightspeed
  %mex tri_pochhammer.c ../lightspeed/util.obj -I../lightspeed
  %mex s_derivatives.c ../lightspeed/util.obj -I../lightspeed
end
