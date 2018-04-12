clear
clc
load('sphCVr1.mat')


    
    fig = figure;
    R=corrcoef(latFFArray, PredArray);
    scatter(latFFArray,PredArray,'MarkerEdgeColor',[0 .4 1]);
    
%     RWRF=corrcoef(latFFArray, PWRFArray);
%        
%      hold on;
%     scatter(latFFArray,PWRFArray,'r');
    P=polyfit(latFFArray,PredArray,1);
    yfit=P(1)*latFFArray+P(2);
    
%     PWRF=polyfit(latFFArray,PWRFArray,1);
%     yfitWRF=PWRF(1)*latFFArray+PWRF(2);
%     
%     hold on;
%     plot(latFFArray,yfit,'-g');
%     
     
     hold on;
    plot(latFFArray,yfit,'Color',[0 .4 1]);
%     hold on;
%     plot(latFFArray,yfitWRF,'-r');
    hold on
    refX=[axisMin:axisMax];
refY=[axisMin:axisMax];
   line(refX,refY,'Color','k') 
%    fd=TimeCell{1}
 %   firstDay=cell2mat(fd)
    % titlestring=['y=',num2str(P(1)),'x+',num2str(P(2)),' R^2=',num2str(R(1,2))];
    % title(titlestring);
    line1 ='RK LOOCV vs. KF Expected Residuals10% Storm History';
    %['Station ID:  ',(STelim{j,1}),' ','Storm:  ', firstDay(1:8)]
%     line2 =['UK RMSE (m/s)=',num2str(rmse)];
%     line3=['UK Mean Bias (m/s)=',num2str(meanBias)];
%     line4=['UK R^2=',num2str(R(1,2))];
 line2 =['UK RMSE (m/s)=',num2str(rmse)];
    line3=['UK Bias (m/s)=',num2str(meanBias)];
    line4=['UK R^2=',num2str(R(1,2))];
    lines ={line1,line2,line3,line4};
    
   % title(line1);
    axis([axisMin axisMax axisMin axisMax]);
    xlabel('KF Expected Residual (m/s)');
    ylabel('R1(Sph) Estimated Residual (m/s)');
    
    %gcf=.pdf';
    %pname=[ statname{1,plottick +2}, '.pdf' ];
    
    
    
    theString = sprintf('y = %.2f x + %.2f', P(1),P(2));
%      theWRFString = sprintf('y = %.2f x + %.2f', PWRF(1),PWRF(2));
    %text((1),axisMax, theString, 'FontSize', 10);
    legend('R1(Sph) CV',theString, ...
        '1:1 Reference Line','Location','southeast');
    
    
    hold off;
       
     NEUS=['GCKM32D.png'];
        %NEUSFo=fullfile(BySTatFo,NEUS)
        saveas(fig,NEUS);
%     save('sphCVr1.mat')

