function y = agnesi(x,a,rgb)
  %Define Agnesi function
  y = 8*a.^3./(x.^2+4*a.^2);
 plot(x,y, 'color', rgb)
  hold on
  x0 = 0;
  y0 = a;
  r = a;
  h = drawCircle(x0,y0,r, 'color', rgb)
axis([min(x) max(x) 0 max(y)]);
daspect ([1 1])
