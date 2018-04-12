% clear
% clc
% 
% cd ..
% fprintf('Actually Ran')
% mkdir('DimKF')
% 
% DimAn=[1:6]
% 
% MinDA=min(DimAn);
% MaxDA=max(DimAn);
% % %Reading output Workspaces from ___.m and making matrix according to 
% % %Dimensional Study>>
% for Dimi=MinDA:MaxDA
%     DimInpFo=['KrIC',num2str(Dimi)];
%     DimInpFo2=['ICD',num2str(Dimi)];
%     DimWksp='fin111grv4.mat'
%     
%     load(fullfile(DimInpFo,DimInpFo2,DimWksp))
%     clearvars -except MinDA MaxDA Dimi BTKal BTwrf BTpKal BTsqKal BTsqwrf BTsqpKal ...
%         DRDsqKal DRDsqpKal DRDsqwrf DRDKal DRDpKal DRDwrf DRKal DRwrf ...
%         DRpKal DRlatFFArray DRKal DRwrf DRpKal DRlatFFArray ...
%         matBTKal matBTwrf matBTpKal matBTsqKal matBTsqwrf matBTsqpKal ...
%         matDRDsqKal matDRDsqpKal matDRDsqwrf matDRDKal matDRDpKal matDRDwrf matDRKal matDRwrf ...
%         matDRpKal matDRlatFFArray matDRKal matDRwrf matDRpKal matDRlatFFArray ...
%         ABTKal ABTwrf ABTpKal ABTsqKal ABTsqwrf ABTobs ...
%         matABTKal matABTwrf matABTpKal matABTsqKal matABTsqwrf matABTobs
%     
%         %possible error due to accidental deleting one of the letters in the variable
%     
% 
% sizeBT=size(BTKal);
% sizeDR=size(DRKal);
% 
% % %BT B3 Stats>>
% matBTKal(1:sizeBT(1),Dimi)=BTKal(1:sizeBT(1));
% matBTwrf(1:sizeBT(1),Dimi)=BTwrf(1:sizeBT(1));
% matBTpKal(1:sizeBT(1),Dimi)=BTpKal(1:sizeBT(1));
% matBTsqKal(1:sizeBT(1),Dimi)=BTsqKal(1:sizeBT(1));
% matBTsqwrf(1:sizeBT(1),Dimi)=BTsqwrf(1:sizeBT(1));
% matBTsqpKal(1:sizeBT(1),Dimi)=BTsqpKal(1:sizeBT(1));
% % %<<
% 
% % %TD (BT) Stats>>
% matABTKal(1:sizeBT(1),Dimi)=ABTKal(1:sizeBT(1));
% matABTwrf(1:sizeBT(1),Dimi)=ABTwrf(1:sizeBT(1));
% matABTpKal(1:sizeBT(1),Dimi)=ABTpKal(1:sizeBT(1));
% % matABTsqKal(1:sizeBT(1),Dimi)=ABTsqKal(1:sizeBT(1));
% % matABTsqwrf(1:sizeBT(1),Dimi)=ABTsqwrf(1:sizeBT(1));
% matABTobs(1:sizeBT(1),Dimi)=ABTobs(1:sizeBT(1));
% % %<<
% 
% % %DR B3 Stats>>
% matDRDsqKal(1:sizeDR(1),Dimi)=DRDsqKal(1:sizeDR(1));
% matDRDsqpKal(1:sizeDR(1),Dimi)=DRDsqpKal(1:sizeDR(1));
% matDRDsqwrf(1:sizeDR(1),Dimi)=DRDsqwrf(1:sizeDR(1));
% matDRDKal(1:sizeDR(1),Dimi)=DRDKal(1:sizeDR(1));
% matDRDpKal(1:sizeDR(1),Dimi)=DRDpKal(1:sizeDR(1));
% matDRDwrf(1:sizeDR(1),Dimi)=DRDwrf(1:sizeDR(1));
% matDRKal(1:sizeDR(1),Dimi)=DRKal(1:sizeDR(1));
% matDRwrf(1:sizeDR(1),Dimi)=DRwrf(1:sizeDR(1));
% matDRpKal(1:sizeDR(1),Dimi)=DRpKal(1:sizeDR(1));
% matDRlatFFArray(1:sizeDR(1),Dimi)=DRlatFFArray(1:sizeDR(1));
% matDRKal(1:sizeDR(1),Dimi)=DRKal(1:sizeDR(1));
% matDRwrf(1:sizeDR(1),Dimi)=DRwrf(1:sizeDR(1));
% matDRpKal(1:sizeDR(1),Dimi)=DRpKal(1:sizeDR(1));
% matDRlatFFArray(1:sizeDR(1),Dimi)=DRlatFFArray(1:sizeDR(1));
% % %<<
% 
% error('is this the source?')
% 
% 
% 
% end
% % % %<<
% % save(fullfile('DimKF','MatStat.mat'));
  cd ..


clear
clc

folder='SphD2'
load(fullfile(folder,'fin111grv4.mat'));

% 
% 
% load(fullfile('DimKF','MatStat.mat'));
% error('Is Fimet in a Variable')
% hist(matDRDKal(:,1))
% error('stop')
% %Graphing>>
%for Dimi=2%MinDA:MaxDA
%  clearvars -except Dimi MinDA MaxDA matBTKal matBTwrf matBTpKal matBTsqKal matBTsqwrf matBTsqpKal ...
%         matDRwrf ...
%         matDRpKal matDRlatFFArray matDRKal matDRwrf matDRpKal matDRlatFFArray ...
%         matKalTable matWRTable matRKTable wrfmatta RKmatta KFmatta ...
%     ABTKal ABTwrf ABTpKal ABTsqKal ABTsqwrf ABTobs ...
%         matABTKal matABTwrf matABTpKal matABTsqKal matABTsqwrf matABTobs
    

% %Stats%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DRDKalmb=mean(BTKal);
DRDwrfmb=mean(BTwrf);
DRDpKalmb=mean(BTpKal);
DRDsqKalrmse=sqrt(mean(BTsqKal));
DRDsqwrfrmse=sqrt(mean(BTsqwrf));
DRDsqpKalrmse=sqrt(mean(BTsqpKal));

PBTKal=signtest(BTKal,DRDKalmb);
PBTwrf=signtest(BTwrf,DRDwrfmb);
PBTpKal=signtest(BTpKal,DRDpKalmb);

MEDKal=median(BTKal);
MEDwrf=median(BTwrf);
MEDpKal=median(BTpKal);

STKalmb=mean(DRDKal);
STwrfmb=mean(DRDwrf);
STpKalmb=mean(DRDpKal);
STsqKalrmse=sqrt(mean(DRDsqKal));
STsqwrfrmse=sqrt(mean(DRDsqwrf));
STsqpKalrmse=sqrt(mean(DRDsqpKal));

PSTKal=signtest(DRDKal,STKalmb);
PSTwrf=signtest(DRDwrf,STwrfmb);
PSTpKal=signtest(DRDpKal,STpKalmb);

STMEDKal=median(DRDKal);
STMEDwrf=median(DRDwrf);
STMEDpKal=median(DRDpKal);

% dlmwrite('KalRMSE13.txt',DRDsqKal);
% dlmwrite('PkalRMSE13.txt',DRDsqpKal);
% dlmwrite('WRFrmse13.txt',DRDsqwrf);
% 
% dlmwrite('KalBIAS13.txt',DRDKal);
% dlmwrite('PkalBIAS13.txt',DRDpKal);
% dlmwrite('WRFbias13.txt',DRDwrf);


%Plots%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Axis>>
maxAx(1,1)=max(DRKal);
maxAx(2,1)=max(DRwrf);
maxAx(3,1)=max(DRpKal);
maxAx(4,1)=max(DRlatFFArray);
minAx(1,1)=min(DRKal);
minAx(2,1)=min(DRwrf);
minAx(3,1)=min(DRpKal);
minAx(4,1)=min(DRlatFFArray);
axisMin= min(minAx);
axisMax= max(maxAx);
% %<<


%Linear Fits>>
Rwrf=corrcoef(DRlatFFArray, DRwrf);
Rpkal=corrcoef(DRlatFFArray, DRpKal);
Rkal=corrcoef(DRlatFFArray, DRKal);

Pwrf=polyfit(DRlatFFArray, DRwrf,1);
yfitwrf=Pwrf(1)*DRlatFFArray+Pwrf(2);
Ppkal=polyfit(DRlatFFArray, DRpKal,1);
yfitpkal=Ppkal(1)*DRlatFFArray+Ppkal(2);
Pkal=polyfit(DRlatFFArray, DRKal,1);
yfitkal=Pkal(1)*DRlatFFArray+Pkal(2);
% %<<

BTRwrf=corrcoef(ABTobs, ABTwrf);
BTRpkal=corrcoef(ABTobs, ABTpKal);
BTRkal=corrcoef(ABTobs, ABTKal);

BTPwrf=polyfit(ABTobs, ABTwrf,1);
BTyfitwrf=BTPwrf(1)*ABTobs+BTPwrf(2);
BTPpkal=polyfit(ABTobs, ABTpKal,1);
BTyfitpkal=BTPpkal(1)*ABTobs+BTPpkal(2);
BTPkal=polyfit(ABTobs, ABTKal,1);
BTyfitkal=BTPkal(1)*ABTobs+BTPkal(2);


%Label wrf>>
line1 ='Prediction History 10% Storm Sample Corresponding WRF';
line2 =['WRF RMSE (m/s)=',num2str(DRDsqwrfrmse)];
line3=['WRF Bias (m/s)=',num2str(DRDwrfmb)];
line4=['WRF R^2=',num2str(Rwrf(1,2))];
lineswrf ={line1,line2,line3,line4};
axis([0 (axisMax +1) 0 (axisMax +1)]);
xlabel('Observed Wind Speed (m/s)');
ylabel('Estimated Wind Speed (m/s)');
WRFString = sprintf('y = %.2f x + %.2f', Pwrf(1),Pwrf(2));
% %<<

%Label pKal>>
line1 ='M2 of Kalman Filter (2D) Expected residuals 10% Storm Sample';
line2 =['M2 RMSE (m/s)=',num2str(DRDsqpKalrmse)];
line3=['M2 Bias (m/s)=',num2str(DRDpKalmb)];
line4=['M2 R^2=',num2str(Rpkal(1,2))];
linespkal ={line1,line2,line3,line4};
axis([0 (axisMax +1) 0 (axisMax +1)]);
xlabel('Observed Wind Speed (m/s)');
ylabel('Estimated Wind Speed (m/s)');
pkalString = sprintf('y = %.2f x + %.2f', Ppkal(1),Ppkal(2));
% %<<


%Label Kal>>
line1 ='Kalman Filter (2D) Expected residuals 10% Storm Sample';
line2 =['KF (2D) RMSE (m/s)=',num2str(DRDsqKalrmse)];
line3=['KF (2D) Bias (m/s)=',num2str(DRDKalmb)];
line4=['KF (2D) R^2=',num2str(Rkal(1,2))];
lineskal ={line1,line2,line3,line4};
axis([0 (axisMax +1) 0 (axisMax +1)]);
xlabel('Observed Wind Speed (m/s)');
ylabel('Estimated Wind Speed (m/s)');
kalString = sprintf('y = %.2f x + %.2f', Pkal(1),Pkal(2));
% %<<

% 
% 
% %Produce WRF Plot>>
% fig = figure;
% scatter(DRlatFFArray,DRwrf,'MarkerEdgeColor',[.8 .2 .2])
% hold on;
% plot(DRlatFFArray,yfitwrf,'Color',[.8 .2 .2]);
% %title(lineswrf);
% axis([0 (axisMax +1) 0 (axisMax +1)]);
% refX=[0:axisMax];
% refY=[0:axisMax];
% line(refX,refY,'Color','k')
% xlabel('Observed Wind Speed (m/s)');
% ylabel('Estimated Wind Speed (m/s)');
% legend('WRF',WRFString,'1:1 Reference Line', ...
%     'Location','southeast');
% 
% hold off
% % %<<

%Produce pKal Plot>>
fig = figure;
scatter(DRlatFFArray,DRpKal,'MarkerEdgeColor',[.2 .2 .2])
hold on;
plot(DRlatFFArray,yfitpkal,'Color',[.2 .2 .2]);
%title(linespkal)
axis([0 (axisMax +1) 0 (axisMax +1)]);
refX=[0:axisMax];
refY=[0:axisMax];
line(refX,refY,'Color','k')
xlabel('Observed Wind Speed (m/s)');
ylabel('Estimated Wind Speed (m/s)');
legend('RK(Sph)',pkalString,'1:1 Reference Line', ...
    'Location','southeast');
hold off
% %<<

% %Produce Kal Plot>>
% fig = figure;
% scatter(DRlatFFArray,DRKal,'MarkerEdgeColor',[0 0 0.3])
% hold on;
% plot(DRlatFFArray,yfitkal,'Color',[0 0 0.3]);
% %title(lines);
% axis([0 (axisMax +1) 0 (axisMax +1)]);
% refX=[0:axisMax];
% refY=[0:axisMax];
% line(refX,refY,'Color','k')
% xlabel('Observed Wind Speed (m/s)');
% ylabel('Estimated Wind Speed (m/s)');
% legend('KF',kalString,'1:1 Reference Line', ...
%     'Location','southeast');
% %title(lineskal);
% hold off
% %<<
% % 
% % 
% % 
% % %Combined Plotting (ALL)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %Produce WRF Plot>>
% % fig = figure;
% % %Label Comb>>
% % line1 ='KF, CV of KF, Corresponding WRF Predictions 10% Predicted History';
% % % %<<
% % scatter(DRlatFFArray,DRwrf,'MarkerEdgeColor',[.8 .2 .2])
% % hold on;
% % scatter(DRlatFFArray,DRpKal,'MarkerEdgeColor',[0 .8 0])
% % scatter(DRlatFFArray,DRKal,'MarkerEdgeColor',[0 0 0.3])
% % 
% % plot(DRlatFFArray,yfitwrf,'Color',[.8 .2 .2]);
% % plot(DRlatFFArray,yfitpkal,'Color',[0 .8 0]);
% % plot(DRlatFFArray,yfitkal,'Color',[0 0 0.3]);
% % 
% % title(line1);
% % axis([0 (axisMax +1) 0 (axisMax +1)]);
% % refX=[0:axisMax];
% % refY=[0:axisMax];
% % line(refX,refY,'Color','k')
% % xlabel('Observed Wind Speed (m/s)');
% % ylabel('Estimated Wind Speed (m/s)');
% % legend('WRF','CV','KF',WRFString,pkalString,kalString,'1:1 Reference Line', ...
% %     'Location','southeast');
% % 
% % hold off
% % % %<<
% % 
% % %Combined Plotting KAl & CV%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %Produce WRF Plot>>
% fig = figure;
% %Label Comb>>
% line1 ='KF, CV of KF, Corresponding WRF Predictions 10% Predicted History';
% % %<<
% 
% 
% scatter(DRlatFFArray,DRpKal,'MarkerEdgeColor',[0 .8 0])
% hold on;
% scatter(DRlatFFArray,DRKal,'MarkerEdgeColor',[0 0 0.3])
% 
% plot(DRlatFFArray,yfitpkal,'Color',[0 .8 0]);
% plot(DRlatFFArray,yfitkal,'Color',[0 0 0.3]);
% 
% %title(line1);
% axis([0 (axisMax +1) 0 (axisMax +1)]);
% refX=[0:axisMax];
% refY=[0:axisMax];
% line(refX,refY,'Color','k')
% xlabel('Observed Wind Speed (m/s)');
% ylabel('Estimated Wind Speed (m/s)');
% legend('RKFW','KF',pkalString,kalString,'1:1 Reference Line', ...
%     'Location','southeast');
% 
% % hold off
% % % %<<
% % 
% % %Combined Plotting CV and WRF%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %Produce WRF Plot>>
% % fig = figure;
% % %Label Comb>>
% % line1 ='CV of KF, Corresponding WRF Predictions 10% Predicted History';
% % % %<<
% % scatter(DRlatFFArray,DRwrf,'MarkerEdgeColor',[.8 .2 .2])
% % hold on;
% % scatter(DRlatFFArray,DRpKal,'MarkerEdgeColor',[0 .8 0])
% % 
% % 
% % plot(DRlatFFArray,yfitwrf,'Color',[.8 .2 .2]);
% % plot(DRlatFFArray,yfitpkal,'Color',[0 .8 0]);
% % 
% % 
% % title(line1);
% % axis([0 (axisMax +1) 0 (axisMax +1)]);
% % refX=[0:axisMax];
% % refY=[0:axisMax];
% % line(refX,refY,'Color','k')
% % xlabel('Observed Wind Speed (m/s)');
% % ylabel('Estimated Wind Speed (m/s)');
% % legend('WRF','CV',WRFString,pkalString,'1:1 Reference Line', ...
% %     'Location','southeast');
% % 
% % hold off
% % % %<<
Dimi=1
matKalTable(1,Dimi)=DRDKalmb;
matKalTable(2,Dimi)=PBTKal;%SIGN TEST
matKalTable(3,Dimi)=MEDKal
matKalTable(4,Dimi)=DRDsqKalrmse;
matKalTable(5,Dimi)=BTRkal(1,2);
matKalTable(6,Dimi)=BTPkal(1);
matKalTable(7,Dimi)=STKalmb;
matKalTable(8,Dimi)=PSTKal;%SIGN TEST
matKalTable(9,Dimi)=STMEDKal
matKalTable(10,Dimi)=STsqKalrmse;
matKalTable(11,Dimi)=Rkal(1,2);
matKalTable(12,Dimi)=Pkal(1);


matWRTable(1,Dimi)=DRDwrfmb;
matWRTable(2,Dimi)=PBTwrf;
matWRTable(3,Dimi)=MEDwrf;
matWRTable(4,Dimi)=DRDsqwrfrmse;
matWRTable(5,Dimi)=BTRwrf(1,2);
matWRTable(6,Dimi)=BTPwrf(1);
matWRTable(7,Dimi)=STwrfmb;
matWRTable(8,Dimi)=PSTwrf;%SIGN TEST
matWRTable(9,Dimi)=STMEDwrf
matWRTable(10,Dimi)=STsqwrfrmse;
matWRTable(11,Dimi)=Rwrf(1,2);
matWRTable(12,Dimi)=Pwrf(1);





matRKTable(1,Dimi)=DRDpKalmb;
matRKTable(2,Dimi)=PBTpKal;
matRKTable(3,Dimi)=MEDpKal;
matRKTable(4,Dimi)=DRDsqpKalrmse;
matRKTable(5,Dimi)=BTRpkal(1,2);
matRKTable(6,Dimi)=BTPpkal(1);
matRKTable(7,Dimi)=STpKalmb;
matRKTable(8,Dimi)=PSTpKal;%SIGN TEST
matRKTable(9,Dimi)=STMEDpKal
matRKTable(10,Dimi)=STsqpKalrmse;
matRKTable(11,Dimi)=Rpkal(1,2);
matRKTable(12,Dimi)=Ppkal(1);



ABTRwrf=corrcoef(ABTobs, ABTwrf)
ABTRpkal=corrcoef(ABTobs, ABTpKal)
ABTRkal=corrcoef(ABTobs, ABTKal)

ABTSTDobs=std(ABTobs);
ABTSTDwrf=std(ABTwrf);
ABTSTDpkal=std(ABTpKal);
ABTSTDkal=std(ABTKal);

NABTSTDobs=ABTSTDobs/ABTSTDobs
NABTSTDwrf=ABTSTDwrf/ABTSTDobs
NABTSTDpkal=ABTSTDpkal/ABTSTDobs
NABTSTDkal=ABTSTDkal/ABTSTDobs

%CRMSE calculation>>
siA=size(ABTwrf);





% %TD Calculation>>
ABTMAobs=mean(ABTobs);
ABTMAwrf=mean(ABTwrf);
ABTMApKal=mean(ABTpKal);
ABTMAKal=mean(ABTKal);

ABTMobs=repmat(ABTMAobs,siA);
ABTMwrf=repmat(ABTMAwrf,siA);
ABTMpKal=repmat(ABTMApKal,siA);
ABTMKal=repmat(ABTMAKal,siA);

ABTdiffOBS=ABTobs-ABTMobs;
ABTdiffWRF=ABTwrf-ABTMwrf;
ABTdiffKal=ABTKal-ABTMKal;
ABTdiffpKal=ABTpKal-ABTMpKal;

ABTRMSvWRF=sqrt(mean((ABTdiffWRF-ABTdiffOBS).^2))
ABTRMSvKal=sqrt(mean((ABTdiffKal-ABTdiffOBS).^2))
ABTRMSvpKal=sqrt(mean((ABTdiffpKal-ABTdiffOBS).^2))
% %<<




DRRwrf=corrcoef(DRlatFFArray, DRwrf)
DRRpkal=corrcoef(DRlatFFArray, DRpKal)
DRRkal=corrcoef(DRlatFFArray, DRKal)

STDobs=std(DRlatFFArray);
STDwrf=std(DRwrf);
STDpkal=std(DRpKal);
STDkal=std(DRKal);

%CRMSE calculation>>
MAobs=mean(DRlatFFArray);
MAwrf=mean(DRwrf);
MApKal=mean(DRpKal);
MAKal=mean(DRKal);

NSTDobs=STDobs/STDobs
NSTDwrf=STDwrf/STDobs
NSTDpkal=STDpkal/STDobs
NSTDkal=STDkal/STDobs

siDR=size(DRwrf);

Mobs=repmat(MAobs,siDR);
Mwrf=repmat(MAwrf,siDR);
MpKal=repmat(MApKal,siDR);
MKal=repmat(MAKal,siDR);

diffOBS=DRlatFFArray-Mobs;
diffWRF=DRwrf-Mwrf;
diffKal=DRpKal-MKal;
diffpKal=DRpKal-MpKal;

RMSvWRF=sqrt(mean((diffWRF-diffOBS).^2))
RMSvKal=sqrt(mean((diffKal-diffOBS).^2))
RMSvpKal=sqrt(mean((diffpKal-diffOBS).^2))


% %Easy to read Table for all outputs
wrfmatta{1,1}='WRF';

wrfmatta{3-1,1}='HourNSTD';
wrfmatta{4-1,1}='HourCorr';
wrfmatta{5-1,1}='HourCRMSE';
wrfmatta{6-1,1}='StormNSTD';
wrfmatta{7-1,1}='StormCorr';
wrfmatta{8-1,1}='StormCRMSE';


RKmatta{1,1}='RKFW';

RKmatta{3-1,1}='HourNSTD';
RKmatta{4-1,1}='HourCorr';
RKmatta{5-1,1}='HourCRMSE';
RKmatta{6-1,1}='StormNSTD';
RKmatta{7-1,1}='StormCorr';
RKmatta{8-1,1}='StormCRMSE';

KFmatta{1,1}='KF';

KFmatta{3-1,1}='HourNSTD';
KFmatta{4-1,1}='HourCorr';
KFmatta{5-1,1}='HourCRMSE';
KFmatta{6-1,1}='StormNSTD';
KFmatta{7-1,1}='StormCorr';
KFmatta{8-1,1}='StormCRMSE';

wrfmatta{2,Dimi+1}=NABTSTDwrf;%'HourNSTD wrf';
wrfmatta{3,Dimi+1}=ABTRwrf(1,2);%'HourCorr wrf';
wrfmatta{4,Dimi+1}=ABTRMSvWRF;%'HourCRMSE wrf';
wrfmatta{5,Dimi+1}=NSTDwrf;%'StormNSTD wrf';
wrfmatta{6,Dimi+1}=DRRwrf(1,2);%'StormCorr wrf';
wrfmatta{7,Dimi}=RMSvWRF;%'StormCRMSE wrf';

RKmatta{2,Dimi+1}=NABTSTDpkal;%'HourNSTD M2';
RKmatta{3,Dimi+1}=ABTRpkal(1,2);%'HourCorr M2';
RKmatta{4,Dimi+1}=ABTRMSvpKal;%'HourCRMSE M2';
RKmatta{5,Dimi+1}=NSTDpkal;%'StormNSTD M2';
RKmatta{6,Dimi+1}=DRRpkal(1,2);%'StormCorr M2';
RKmatta{7,Dimi+1}=RMSvpKal;%'StormCRMSE M2';

KFmatta{2,Dimi+1}=NABTSTDkal;%'HourNSTD M2 KF';
KFmatta{3,Dimi+1}=ABTRkal(1,2);%'HourCorr M2 KF';
KFmatta{4,Dimi+1}=ABTRMSvKal;%'HourCRMSE M2 KF';
KFmatta{5,Dimi+1}=NSTDkal;%'StormNSTD M2 KF';
KFmatta{6,Dimi+1}=DRRkal(1,2);%'StormCorr M2 KF';
KFmatta{7,Dimi+1}=RMSvKal;%'StormCRMSE M2 KF';

% dlmwrite(fullfile('SphD2','KalRMSEsph.txt'),DRDsqKal);
% dlmwrite(fullfile('SphD2','PkalRMSEsph.txt'),DRDsqpKal);
% dlmwrite(fullfile('SphD2','WRFrmsesph.txt'),DRDsqwrf);
% 
% dlmwrite(fullfile('SphD2','KalBIASsph.txt'),DRDKal);
% dlmwrite(fullfile('SphD2','PkalBIASsph.txt'),DRDpKal);
% dlmwrite(fullfile('SphD2','WRFbiassph.txt'),DRDwrf);
% 
% dlmwrite(fullfile('SphD2','DRKalsph.txt'),DRKal);
% dlmwrite(fullfile('SphD2','DRpKalsph.txt'),DRpKal);
% dlmwrite(fullfile('SphD2','DRwrfsph.txt'),DRwrf);
% dlmwrite(fullfile('SphD2','DRlatFFArraysph.txt'),DRlatFFArray);
% 
% dlmwrite(fullfile('SphD2','ABTKalsph.txt'),ABTKal);
% dlmwrite(fullfile('SphD2','ABTpKalsph.txt'),ABTpKal);
% dlmwrite(fullfile('SphD2','ABTwrfsph.txt'),ABTwrf);
% dlmwrite(fullfile('SphD2','ABTobssph.txt'),ABTobs);

% 
% if Dimi==2
% dlmwrite('KalRMSE22.csv',DRDsqKal.');
% dlmwrite('PkalRMSE22.csv',DRDsqpKal.');
% dlmwrite('WRFrmse22.csv',DRDsqwrf.');
% 
% dlmwrite('KalBIAS22.csv',DRDKal.');
% dlmwrite('PkalBIAS22.csv',DRDpKal.');
% dlmwrite('WRFbias22.csv',DRDwrf.');
% end
%end
