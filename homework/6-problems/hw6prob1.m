close all;
load('data3D.mat');

nrow = round(sqrt(length(data(1,1,:)))); % number of subplots to be created in the y direction
ncol = nrow; % number of subplots to be created in the x direction

figHandle = figure(); % create a new figure
figHandle.Position = [0, 0, 900, 1350]; % set the position and size of the figure
figHandle.Visible = 'on'; % set the visibility of figure in MATLAB
figHandle.Color = [0.9400    0.9400    0.9400]; % set the background color of the figure to MATLAB default. You could try other options, such as 'none' or color names 'red',...


% main plot specifications
mainPlotMarginTop = 0.06; % top margin of the main axes in figure
mainPlotMarginBottom = 0.12; % bottom margin of the main axes in figure
mainPlotMarginLeft = 0.08; % bottom margin of the main axes in figure
mainPlotMarginRight = 0.1; % right margin of the main axes in figure
mainPlotPositionX = 0.05; % the x coordinate of the bottom left corner of the main axes in figure
mainPlotPositionY = 0.08; % the y coordinate of the bottom left corner of the main axes in figure
mainPlotWidth = 1 - mainPlotMarginRight - mainPlotPositionX; % the width of the main axes in figure
mainPlotHeight = 1 - mainPlotMarginTop - mainPlotPositionY; % the height of the main axes in figure
mainPlotTitleFontSize = 12;
mainPlotAxisFontSize = 12;

mainPlot = axes(); % create a set of axes in this figure. This main axes is needed in order to add the x and y labels and the color bar for the entire figure.
mainPlot.Color = 'none'; % set color to none
mainPlot.Position = [ mainPlotPositionX mainPlotPositionY mainPlotWidth mainPlotHeight ]; % set position of the axes
mainPlot.XLim = [0 1]; % set X axis limits
mainPlot.YLim = [0 1]; % set Y axis limits
mainPlot.XLabel.String = 'Voxel Number in X Direction'; % set X axis label
mainPlot.YLabel.String = 'Voxel Number in Y Direction'; % set Y axis label
mainPlot.XTick = []; % remove the x-axis tick marks
mainPlot.YTick = []; % remove the y-axis tick marks
mainPlot.XAxis.Visible = 'off'; % hide the x-axis line, because we only want to keep the x-axis label
mainPlot.YAxis.Visible = 'off'; % hide the y-axis line, because we only want to keep the y-axis label
mainPlot.XLabel.Visible = 'on'; % make the x-axis label visible, while the x-axis line itself, has been turned off;
mainPlot.YLabel.Visible = 'on'; % make the y-axis label visible, while the y-axis line itself, has been turned off;
mainPlot.Title.String = ['A beautiful design of ',sprintf('%0.1f',nrow),' x ',sprintf('%0.1f',ncol),' subplots using MATLAB']; % set the title of the figure
mainPlot.FontSize = 11; % set the main plot font size
mainPlot.XLabel.FontSize = mainPlotAxisFontSize; % set the font size for the x-axis in mainPlot
mainPlot.YLabel.FontSize = mainPlotAxisFontSize; % set the font size for the y-axis in mainPlot
mainPlot.Title.FontSize = mainPlotTitleFontSize; % set the font size for the title in mainPlot

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADD COLORBAR TO THE FIGURE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% specifications of the color bar to the figure
    
    colorbarPositionX = 1 - mainPlotMarginRight; % the x-position of the color bar
    colorbarPositionY = mainPlotMarginBottom; % the y-position of the color bar
    colorbarWidth = 0.03; % the width of the color bar
    colorbarHeight = 1 - 2*colorbarPositionY; % the height of the color bar
    colorbarFontSize = 13; % the font size of the color bar
    colorLimits = [0,max(max(max(data(:,:,:))))]; % the color bar limits, the dataset contains numbers between 0 and some large number.

% now add the color bar to the figure

    axes(mainPlot); % focus on the mainPlot axes, because this is where we want to add the colorbar
    caxis(colorLimits); % set the colorbar limits
    cbar = colorbar; % create the color bar!
    ylabel(cbar,'Number of Tumor Cells'); % now add the color bar label to it
    cbar.Position = [ colorbarPositionX ... Now reset the position for the colorbar, to bring it to the rightmost part of the plot
                      colorbarPositionY ...
                      colorbarWidth ...
                      colorbarHeight ...
                    ];
    cbar.FontSize = colorbarFontSize; % set the fontsize of the colorbar

saveas(gcf,'currentPlot.png'); % save the figure