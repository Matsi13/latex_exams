x = 1:100;
y = [ones(1,49),zeros(1,51)];
plot(x,y)
hold on
ylim([0,2])
yticks([0,1,2]);yticklabels ({'0','1','2'});
xlim([1,100])
xticks([1,2,3])
xticklabels('a')
