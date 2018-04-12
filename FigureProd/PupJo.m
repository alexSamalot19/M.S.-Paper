clear
clc

STCVname='FC24JS.txt';
STCVID=fopen(STCVname,'r');
timnam = 1;
while(~feof(STCVID));
    
    InputText =textscan(STCVID, '%s',1,'delimiter', ',');
    TimeCell{timnam,1} = InputText{1};
    timnam = timnam+1;
    
end
fclose(STCVID);

filename = 'MetCRno.csv';
fileID = fopen(filename, 'r');
RefLis=1;
while(~feof(fileID));
    
    InputText =textscan(fileID, '%s',5,'delimiter', ',');
    CRlist{RefLis,1} = InputText{1};
    if size(InputText{1}) > 0;
        RefLis = RefLis+1;
    end
end
fclose(fileID);

for Dimi=2:4%1:6
for stations=59%:134
    clearvars -except CRlist  TimeCell stations Dimi
    
    %All KF operator outputs>
   % name='M2D2'
    name1='DJD2'
%     staFi=[name,num2str(stations),'.txt'];%,num2str(stations)
%     if  Dimi<3 || Dimi>4
     staFi=[name1,num2str(stations),'.txt']   
%     end
    
    M2D2AG=dlmread(fullfile('F:',['M2DFP',num2str(Dimi)],staFi));
    %<
    
    %Modeltom_filt>>
    KFwiFi=['modeltom_filt',num2str(stations),'.txt'];
    KFwi=dlmread(fullfile('F:',['M2DFP',num2str(Dimi)],KFwiFi));
    
    WRFwiFi=['ModTom',num2str(stations),'.txt'];
    WRFwi=dlmread(fullfile('F:',['M2DFP',num2str(Dimi)],WRFwiFi));
    
    ObsFi=['Obs',num2str(stations),'.txt'];
    Obs=dlmread(fullfile('F:',['M2DFP',num2str(Dimi)],ObsFi));
    
    % %<
    
    %Determine the useable hours of analysis>
    % %Hours covered by the Station>>
    LocOutFi=['LocOut',num2str(stations),'.txt'];
    LocOut=dlmread(fullfile('F:',['M2DFP',num2str(Dimi)],LocOutFi));
    % %<<
    siloc=size(LocOut);
    siloc1=siloc(1);
    KF=KFwi(1:siloc1-24,1);
    WRFB=WRFwi(1:siloc1-24,1);
    % %<
    xtick2=0;
    for time=1:siloc1
        KGmat(time,1:Dimi)=M2D2AG(time,1:Dimi);
    Trace(time,1)=M2D2AG(time,5)+M2D2AG(time,8);
        UTC00=[1:24:4872];
        siUTC00=size(UTC00);
        test=LocOut(time)
        for itUTC00=1:siUTC00(2)
            if test==UTC00(itUTC00)
                xtick2=xtick2+1;
                filebeg=cell2mat(TimeCell{test,1})
                filebeg2=filebeg(1,3:8)
                xTitle2(1,xtick2)={num2str(filebeg2)}
                AxAr(1,xtick2)=time
                %         if xtick2==3
                %         error('check variable class')
                %         end
            end
        end
    end
    
     fig=figure
     timeA=[1:siloc1];
     TimeT=timeA';
    colArr={[0 0 0], [0 0 1],[.2 .8 .2], [.8 .2 .2], [0.5 0.5 0], [1 0.5 1], [0 .8 0]};
    legendArr={'KG(0)','KG(1)','KG(2)','KG(3)','KG(4)','KG(5)'}
    for Dimi2=1:Dimi
    %plot(TimeT,KGmat(:,Dimi2),colArr{1,Dimi2})
    %plot(TimeT,KGmat(:,Dimi2),colArr{1,Dimi2})
    plot(TimeT,KGmat(:,Dimi2),'Color',colArr{1,Dimi2});
    hold on
     %line([150 150], [0 20],'color', 'r')
%     hold on
%     line([0 2000], [0.13 0.13],'color', 'r')
%     hold on
    xlabel('Hour in History');
    ylabel('Kalman Gain Element Weight');
    namehold=CRlist{stations}
    %title(['M2 Kalman Filter Elements ',namehold{1,1}]);
    end
    legend(legendArr{1,1:Dimi2},'Location','northeast');    
    %<
    hold off
    
     if Dimi==2
    
    axisMax=max(Trace)
    fig=figure
    plot(TimeT,Trace(1:siloc1,1))
%     hold on
%     line([120 120], [0 20],'color', 'r')
    %      set(gca,'XTick',AxAr)
    %     set(gca,'XTickLabel', xTitle2)
    axis([1 siloc1 0 axisMax+0.3]);
    xlabel('Hour in History');
    ylabel('Trace of P ^a')
    namehold=CRlist{stations}
   % title(['Trace System Covariance Matrix (P^+) ',namehold{1,1}])
    end
   fig=figure;
%     Plot the assocaited KF output
    plot(TimeT(1:siloc1-24,1),KF(1:siloc1-24,1)) 
    hold on
     plot(TimeT(1:siloc1-24,1),WRFB(1:siloc1-24,1),'r');
      hold on
     plot(TimeT(1:siloc1-24,1),Obs(1:siloc1-24,1),'g');
%     
%     hold on
%     plot(TimeT(1:siloc1-24,1),WRFB(1:siloc1-24,1),'r')
% %     plot(KF(1:72,1),WRFB(1:72,1),'r')
% %     
%     xlabel('Time (UTC)');
%     namehold=CRlist{stations}
%     title(['M2 Kalman Filter Elements ',namehold{1,1}]);%,'Dim=',num2str(Dimi)]
%     % %
%     
%     
    
end
end
