%%%% Exploratory Data Analysis
%% Load Data

SH_2014 = load('pm25_SH_2014.csv');
BJ_2014 = load('pm25_BJ_2014.csv');
GZ_2013 = load('pm25_GZ_2013.csv');
CD_2014 = load('pm25_CD_2014.csv');

data = [SH_2014, BJ_2014, GZ_2013, CD_2014];

%% Simple Analysis
count = zeros(7,4);

for j = 1:4
    cityData = data(:,j);
    count(1,j) = size(find(cityData <= 50),1);
    count(2,j) = size(find(cityData > 50 & cityData <= 100),1);
    count(3,j) = size(find(cityData > 100 & cityData <= 150),1);
    count(4,j) = size(find(cityData > 150 & cityData <= 200),1);
    count(5,j) = size(find(cityData > 200 & cityData <= 300),1);
    count(6,j) = size(find(cityData > 300 & cityData <= 500),1);
    count(7,j) = size(find(cityData > 500),1);
end

mean
%% Visualization : BarPlot
city2day = count'/24;

str = {'Shanghai';'Beijing';'Guangzhou';'Chengdu'};
bh = bar(city2day)
bh(1).FaceColor = 'g'
bh(2).FaceColor = 'y'
bh(3).FaceColor = 'c'
bh(4).FaceColor = 'r'
bh(5).FaceColor = 'm'
bh(6).FaceColor = 'b'
bh(7).FaceColor = 'k'

title('PM_{2.5} of Four Major Cites in China','FontSize',16,'FontWeight','bold')
ylabel('Number of Days','FontSize',16,'FontWeight','bold')
xlabel('Cities','FontSize',20,'FontWeight','bold')
legend('Good','Moderate','Unhealthy for Sensitive Groups','Unhealthy',...
    'Very Unhealthy','Hazardous','Beyond Index')
set(gca, 'XTickLabel',str, 'XTick', 1:4,'FontSize',16)
grid on 

%% Visualization : BoxPlot
boxplot(data)
title('PM_{2.5} Concentration of Four Major Cites in China','FontSize',16,'FontWeight','bold')
ylabel('PM_{2.5} Concentration Index','FontSize',16,'FontWeight','bold')
xlabel('Cities','FontSize',20,'FontWeight','bold')
set(gca, 'XTickLabel',str, 'XTick', 1:4,'FontSize',16)
grid minor