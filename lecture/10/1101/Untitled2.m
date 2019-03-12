x = linspace(1.0e-5,1.0e-1,10000)';
y = lognpdf(x,log(percentProliferating),1.0);

figure;
plot(x,y)
set(gca,'XScale','log')