datos = load ('data.mat');
p=Y(1:104,1:7);
t=Y(1:104,8);
net=newff(p',t',7,{'tansig','purelin'},'trainscg');
net.divideFcn='';
net.trainParam.goal=0;
net.trainParam.epochs=10000;
net=train(net,p',t');
p'
t'