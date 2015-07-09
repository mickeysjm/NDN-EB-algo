%% Load Data
X = load('totalAccuarcy_PLP_SVM.mat');
TA_PLP_SVM = X.totalAccuarcy;
X = load('totalAccuarcy_MFCC_SVM.mat');
TA_MFCC_SVM = X.totalAccuarcy;
X = load('totalAccuarcy_PLP_LR.mat');
TA_PLP_LR = X.totalAccuarcy;
X = load('totalAccuarcy_MFCC_LR.mat');
TA_MFCC_LR = X.totalAccuarcy;

X = load('Accuracy_PLP_SVM.mat');
Accuracy_PLP_SVM = X.Accuracy;
X = load('Accuracy_PLP_LR.mat');
Accuracy_PLP_LR = X.Accuracy;
X = load('Accuracy_MFCC_SVM.mat');
Accuracy_MFCC_SVM = X.Accuracy;
X = load('Accuracy_MFCC_LR.mat');
Accuracy_MFCC_LR = X.Accuracy;

%% Visualization for CA ALL
x = 1:25;
plot(x,Accuracy_MFCC_SVM,'g-s',...
    x,Accuracy_MFCC_LR,'r-x',...
    x,Accuracy_PLP_SVM,'b-d',...
    x,Accuracy_PLP_LR,'m-^')
title('Classification Accuarcy of each clip for different features & models','FontSize',16,'FontWeight','bold')
xlabel('Clip id','FontSize',14,'FontWeight','bold')
ylabel('Accuarcy (in percentage)','FontSize',14,'FontWeight','bold')
legend('MFCC+SVM','MFCC+LR','PLP+SVM','PLP+LR','Location','southeast')
axis([0,26,30,100])
ax = gca;
ax.XGrid = 'on';
ax.YGrid = 'on';

%% Visualization for TA all
y1 = [TA_MFCC_SVM,0,0,0]*100;
y2 = [0,TA_MFCC_LR,0,0]*100;
y3 = [0,0,TA_PLP_SVM,0]*100;
y4 = [0,0,0,TA_PLP_LR]*100;
str = {'MFCC+SVM';'MFCC+LR';'PLP+SVM';'PLP+LR'};
bar(y1,'b')
hold on
bar(y2,'r')
hold on
bar(y3,'m')
hold on
bar(y4,'y')

title('Overall Accent Classification Accuarcy for different features & models','FontSize',16,'FontWeight','bold')
ylabel('Accuarcy (in percentage)','FontSize',14,'FontWeight','bold')
xlabel('Method','FontSize',14,'FontWeight','bold')
ylim([60,100])
set(gca, 'XTickLabel',str, 'XTick', 1:4)
grid on 

%% Visualization for one techniques
x = 1:25;
plot(x,Accuracy_MFCC_SVM,'r-s')
title('Classification Accuarcy of each clip using MFCC+SVM','FontSize',16,'FontWeight','bold')
xlabel('Clip id','FontSize',14,'FontWeight','bold')
ylabel('Accuarcy (in percentage)','FontSize',14,'FontWeight','bold')
legend('MFCC+SVM')
axis([0,26,30,100])
grid minor
set(gca,'XMinorTick','on')

%% Visualization for grid-search
% X = load('1.dat');
