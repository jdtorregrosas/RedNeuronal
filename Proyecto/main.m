datos = load ('data.mat');
p=Y(1:78,1:7);
t=Y(1:78,8);
net=newff(p',t',26,{'tansig','purelin'},'trainscg');
net.divideFcn='';
net.trainParam.goal=0;
net.trainParam.epochs=10000;
net=train(net,p',t');
save('net.mat','net');
save('p.mat','p');
%p'
%t'
