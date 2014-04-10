#!/bin/csh

rm -f ./xconvolve

gfortran -o ./xconvolve convolve_jeroen.f90

foreach file ( PAS.CI.*.sem.ascii )

./xconvolve < $file > ${file}.convolved

end

rm -f ./xconvolve

