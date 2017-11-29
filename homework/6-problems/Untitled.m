load('./data3D.mat');

nrows = round(sqrt(data(1,1,:)));
ncols = nrows;

marginTop = 0.06;
marginBottom = 0.08;
marginLeft = 0.08;
marginRight = 0.1;
subplotInterspace = 0.03; % space between subplots
mainPlotPositionX = 0.05;
mainPlotPositionY = 0.05;
mainPlotWidth = 1 - marginRight - mainPlotPositionX;
mainPlotHeight = 1 - 0.05 - mainPlotPositionY;
mainPlotTitleFontSize = 13;
mainPlotAxisFontSize = 13;
subplotWidth = (1-marginLeft-marginRight)/ncols - subplotInterspace;
subplotHeight = (1-marginTop-marginBottom)/nrows - subplotInterspace;
colorbarPositionX = 1-marginRight; %+subplotInterspace; % x position of colorbar
%colorbarPositionY = 1-marginBottom; % x position of colorbar
colorbarWidth = 0.03;
colorbarHeight = nrows*(subplotHeight+subplotInterspace)-subplotInterspace; %1-marginTop-marginBottom-subplotInterspace;
colorbarFontSize = 13;

mainPlot = axes( 'position' ...
               , [mainPlotPositionX mainPlotPositionY mainPlotWidth mainPlotHeight] ...
               , 'Xlim',[0 1], 'Ylim',[0 1] ...
               , 'Color', 'none' ...
               );
