%% Visualization for TA all
subplot(121)
expWithCS = [16.97,0,0,0];
fixWithCS = [0,19.8005,0,0];
expWithoutCS = [0,0,16.9504,0];
fixWithoutCS = [0,0,0,23.5548];
str = {'EB with CS';'Fixed with CS';'EB without CS';'Fixed without CS'};
bar(expWithCS,'b')
hold on
bar(fixWithCS,'c')
hold on
bar(expWithoutCS,'m')
hold on
bar(fixWithoutCS,'y')

title('Everage Delay in Four Scenarios','FontSize',16,'FontWeight','bold')
ylabel('Time(s)','FontSize',14,'FontWeight','bold')
xlabel('Scenario','FontSize',14,'FontWeight','bold')
ylim([15,25])
set(gca, 'XTickLabel',str, 'XTick', 1:4)
grid on

%%
subplot(122)
expWithCS2 = [16.5946,0,0,0];
fixWithCS2 = [0,21.9884,0,0];
expWithoutCS2 = [0,0,11.9592,0];
fixWithoutCS2 = [0,0,0,16.4305];
str = {'EB with CS';'Fixed with CS';'EB without CS';'Fixed without CS'};
bar(expWithCS2,'b')
hold on
bar(fixWithCS2,'c')
hold on
bar(expWithoutCS2,'m')
hold on
bar(fixWithoutCS2,'y')

title('Standard Deviation of Delay in Four Scenarios','FontSize',16,'FontWeight','bold')
ylabel('Time(s)','FontSize',14,'FontWeight','bold')
xlabel('Scenario','FontSize',14,'FontWeight','bold')
ylim([10,25])
set(gca, 'XTickLabel',str, 'XTick', 1:4)
grid on
