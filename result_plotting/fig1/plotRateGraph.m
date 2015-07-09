%%
subplot(221)
XexpWithCS = load('expWithCS.csv');
timeexpWithCS = XexpWithCS(1,:);
indataexpWithCS = XexpWithCS(2,:);
outinterestexpWithCS = XexpWithCS(3,:);
plot(timeexpWithCS,indataexpWithCS,'b-s',...
    timeexpWithCS,outinterestexpWithCS,'r-x',...
    'MarkerSize',3)
title('Rate Graph for EB algorithm with CS','FontSize',16,'FontWeight','bold')
xlabel('Time(s)','FontSize',14,'FontWeight','bold')
ylabel('Size(KiloBytes)','FontSize',14,'FontWeight','bold')
legend({'InData','OutInterest'},'Location','east','FontSize',14,'FontWeight','bold')
axis([-1,152,-1,300])
grid minor

%%
subplot(222)
XfixWithCS = load('fixWithCS.csv');
timefixWithCS = XfixWithCS(1,:);
indatafixWithCS = XfixWithCS(2,:);
outinterestfixWithCS = XfixWithCS(3,:);

plot(timefixWithCS,indatafixWithCS,'b-s',...
    timefixWithCS,outinterestfixWithCS,'r-x',...
    'MarkerSize',3)
title('Rate Graph for Fixed algorithm with CS','FontSize',16,'FontWeight','bold')
xlabel('Time(s)','FontSize',14,'FontWeight','bold')
ylabel('Size(KiloBytes)','FontSize',14,'FontWeight','bold')
legend({'InData','OutInterest'},'Location','east','FontSize',14,'FontWeight','bold')
axis([-1,152,-1,300])
grid minor

%%
subplot(223)
XexpWithoutCS = load('expWithoutCS.csv');
timeexpWithoutCS = XexpWithoutCS(1,:);
indataexpWithoutCS = XexpWithoutCS(2,:);
outinterestexpWithoutCS = XexpWithoutCS(3,:);

plot(timeexpWithoutCS,indataexpWithoutCS,'b-s',...
    timeexpWithoutCS,outinterestexpWithoutCS,'r-x',...
    'MarkerSize',3)
title('Rate Graph for EB algorithm without CS','FontSize',16,'FontWeight','bold')
xlabel('Time(s)','FontSize',14,'FontWeight','bold')
ylabel('Size(KiloBytes)','FontSize',14,'FontWeight','bold')
legend({'InData','OutInterest'},'Location','northeast','FontSize',14,'FontWeight','bold')
axis([-1,61,-1,300])
grid minor

%%
subplot(224)
XfixWithoutCS = load('fixWithoutCS.csv');
timefixWithoutCS = XfixWithoutCS(1,:);
indatafixWithoutCS = XfixWithoutCS(2,:);
outinterestfixWithoutCS = XfixWithoutCS(3,:);

plot(timefixWithoutCS,indatafixWithoutCS,'b-s',...
    timefixWithoutCS,outinterestfixWithoutCS,'r-x',...
    'MarkerSize',3)
title('Rate Graph for Fixed algorithm without CS','FontSize',16,'FontWeight','bold')
xlabel('Time(s)','FontSize',14,'FontWeight','bold')
ylabel('Size(KiloBytes)','FontSize',14,'FontWeight','bold')
legend({'InData','OutInterest'},'Location','northeast','FontSize',14,'FontWeight','bold')
axis([-1,61,-1,300])
grid minor