Experiment Result Analysis
===


Experiment 1: 从Rate Graph来说收敛的时间，简单看一下throughput
---
1. Figure' Caption: 针对Consumer节点0
2. 发现在有CS的时候，用Fixed 明显outinterest多
3. 稳定时间对于有CS的而言比对于没有CS的长 <-  注意图的x轴范围
4. 所有我们针对有CS的：选用timeInterval: 80s-95s / 没有CS的：选用timeInterval: 15s-30s


Experiment 2: with CS, Zipf; exp min=100,beta=2,max=500; 
---
####证明在有CS情况下Exp比Fix好
####比较EXP V.S. FIX in scenario with CS
####仿真150秒,0.5s间隔，比较fixed strategies和exp strategies在有CS情况下的结果

发现在80s的时候网络差不多稳定，选择发送时间为80s~95s之间的pkts

Exp:
TotalDelay: Mean = 16.9700s ;  std = 16.5946s
TotalRetransmitTimes: 51.2425

Fix:
TotalDelay: Mean = 19.8005s; std = 21.9884s
TotalRetransmitTimes: 58.6491

说明:
1. 这里的Hop是最后一次收到data对应的interest的跳数，如果多次重传的话，只计算了最后一次interest pkt的跳数

结论:
// 1. 无论Exp还是Fix的, 无论几条(除非本地CS里拿)，重传次数都非常大，说明网络拥塞非常的厉害
*2. (solid)我们发现用Exp的总delay比Fix的总delay小
*3. (solid)我们发现用Exp的总retransmit次数比Fix的总次数少
// 4. 无论Exp还是Fix的, 跳数增加后反而delay下来了，可能一些retransmit次数大，delay长的pkts无法在仿真结束(150s)之前回来，所以会出现这种情况
// 5. (key,non-solid)我们发现Exp相比Fix在hop<3以下的情况下performance更好(delay更小, 重传次数也更少)


出图:
1. 每种Hop对应的delay
2. 每种Hop对应的retransimit times
3. 每种Hop在{-1,1,2,3,4,5,6}中的比重
*4. 出一张rate图说明收敛性* 


Experiment 3: no CS, CBR; exp min=100,beta=2,max=500; 
---
####证明在没有CS情况下EXP比FIX 
####比较EXP V.S. FIX in scenario without CS
####仿真60秒,0.5s间隔，比较fixed strategies和exp strategies在无CS情况下的结果

发现在15s的时候网络差不多稳定，选择发送时间为15s~30s之间的pkts，发现所有回来的都是hop=4(因为没有CS)

Exp:
TotalDelay: Mean = 16.9504s ; std = 11.9592
TotalRetransmitTimes: 5.94575

Fix:
TotalDelay: Mean = 23.5548s ; std = 16.4305
TotalRetransmitTimes: 9.89324

结论:
直接可以发现exp方法比fix的好很多，而且retransmit的次数也少


Experiment2&3 -> fig2
---
1. 无论是有CS还是没CS，EB的delay的均值和标准差（抖动）都小于Fixed
2. 









