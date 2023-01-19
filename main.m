pkg install "https://downloads.sourceforge.net/project/octave/Octave%20Forge%20Packages/Individual%20Package%20Releases/matgeom-1.2.3.tar.gz"
pkg load matgeom
close all; clear all; clc
%Define the vector of a
a = [1:7];
%Define the colormap
colmap = jet(length(a));
%Open new figure
fig = figure(1)
for i = 1:length(a)
  x = linspace(-12*a(i),12*a(i),250);
  agnesi(x, a(i), colmap(i,:));
end
print (fig, "Agnesi_curves.png","-S1000,500");
