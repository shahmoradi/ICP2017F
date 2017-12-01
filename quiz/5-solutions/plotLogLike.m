close all;
d = importdata('chain.txt');

plot( d.data(:,4) ...
    , 'color', 'red' ...
    , 'linewidth', 2 ...
    );
set(gca,'xscale','log');
xlabel('Sample Number');
ylabel('LogLikelihood');
set(gca,'color','none');
saveas(gcf,'GrowthRate.png');
