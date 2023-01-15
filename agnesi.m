function y= agnesi(x,a,rgb)
  %Define Agnesi function
  y = 8*a.^3./(x.^2+4*a.^2);
  txt = ['a = ', num2str(a)];
  h = plot(x, y, 'linewidth', 2.5, 'color', rgb,'DisplayName',txt);
  xlabel('x')
  ylabel('y')
  set(get(gca,'ylabel'),'rotation',0)
  legend('location', 'eastoutside', 'fontsize', 12);
  %Define a circle with radius = a
  hold on
  x0 = 0;
  y0 = a;
  r = a;
  hc = drawCircle(x0, y0, r, 'color', rgb, 'HandleVisibility','off');
  %plot configurations
  axis([-40 40 0 max(y)*1.1]);
  daspect ([1 1]);
