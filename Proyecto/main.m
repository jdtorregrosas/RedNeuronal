datos = load ('data.mat');
p=Y(1:104,1:35);
t=Y(1:104,36);
%net=newff(p',t',26,{'tansig','purelin'},'trainscg');
net = newff(p',t',20);
net.divideFcn='';
net.trainParam.goal=0;
net.trainParam.epochs=5000;
net=train(net,p',t');
net=train(net,p',t');
net=train(net,p',t');
save('net.mat','net');
save('p.mat','p');
%p'
%t'
