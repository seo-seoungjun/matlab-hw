function sub(n,airavg,ylable,color)
subplot(6,1,n);
plot(airavg,'LineWidth',1,'Color',color,"Marker",".",'MarkerSize',9);
xticks([1:12]); %x축 눈금 간격 설정
xticklabels({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'}); %x축 눈금값 설정
xlim([1 12]); %x축 범위 제한
ylabel(ylable);
end