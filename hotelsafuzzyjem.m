net = newff(minmax(P'), [10 1], {'tansig', 'purelin'});

net.trainParam.goal = 0;  
net.trainParam.show = 10;    
net.trainParam.epochs = 200;
[net,tr]=train(net,P',T');       
gensim(net);
