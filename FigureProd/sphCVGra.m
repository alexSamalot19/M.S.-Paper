% % clear
% % clc
% % 
% % 
% % stoArray=[6,16,29,39,44,57,64,69,81,96,105]
% % for stOA=9:11%:ll
% %     clearvars -except stOA stoArray
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%
% % RN=stoArray(stOA)%Rand #
% % string=num2str(RN);
% % 
% % starTime=RN
% % STstring=string
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % MetarFo='KrInMetDiff';
% % % MadisFo='KrInMadDiff';
% % AdjFo=fullfile('KrIn',['BiasCO111',STstring]);
% % BySTatFo=fullfile('KrIn',['BiasBS111',STstring]);
% % ZfFo=fullfile('KrIn',['sphCV',STstring]);
% % 
% % mkdir(ZfFo)
% % 
% % FiMetIn = ['20010305';'20031214';'20040701';'20040820';'20040908'; ...
% %     '20040917';'20040928';'20041104';'20041130';'20041225';'20050401'; ...
% %     '20050628';'20050718';'20050721';'20050727';'20050804';'20050811'; ...
% %     '20050916';'20050929';'20051007';'20051015';'20051024';'20060102'; ...
% %     '20060114';'20060117';'20060216';'20060531';'20060606';'20060710'; ...
% %     '20060716';'20060727';'20060801';'20060901';'20061027';'20061130'; ...
% %     '20070301';'20070414';'20070515';'20070531';'20070709';'20070714'; ...
% %     '20070729';'20070816';'20071202';'20080113';'20080212';'20080308'; ...
% %     '20080320';'20080526';'20080608';'20080610';'20080613';'20080622'; ...
% %     '20080717';'20080722';'20080726';'20080805';'20080906';'20081025'; ...
% %     '20081210';'20081230';'20090107';'20090509';'20090625';'20090706'; ...
% %     '20090723';'20090729';'20090731';'20090821';'20091006';'20091127'; ...
% %     '20100223';'20100313';'20100428';'20100503';'20100504';'20100507'; ...
% %     '20100525';'20100602';'20100604';'20100605';'20100705';'20100721'; ...
% %     '20100929';'20101225';'20110111';'20110117';'20110201';'20110601'; ...
% %     '20110608';'20110828';'20111028';'20120622';'20121028';'20121107'; ...
% %     '20121228';'20130130';'20130208';'20130511';'20130523';'20130525'; ...
% %     '20130529';'20130607';'20130613';'20130901';'20131031';'20131118'; ...
% %     '20131126';'20140106';'20140110';'20140204'];
% % 
% % %Read the Storms time list
% % filebeg  = (FiMetIn(RN,:));
% % STCVname=[filebeg,'SC24.txt'];
% % STCVID=fopen(fullfile('storm',STCVname),'r');
% % timnam = 1;
% % while(~feof(STCVID));
% %     
% %     InputText =textscan(STCVID, '%s',1,'delimiter', ',');
% %     TimeCell{timnam,1} = InputText{1};
% %     timnam = timnam+1;
% %     
% % end
% % 
% % fclose(STCVID);
% % 
% % % 
% % 
% % % %
% % % % % %
% % filend2='.txt';
% % 
% % 
% % %new = 0;
% % ile=0;
% % for t = 1:(timnam-2)
% %     %:24
% %     %new = new+1;
% % disp(t)
% %     filebeg  = cell2mat(TimeCell{t,1});
% % 
% %     filnCtr = ['GCHtrC',filebeg,filend2];
% %     filnRtr = ['GCHtrR',filebeg,filend2];
% %     filnFFtr= ['GCHtrFF',filebeg,filend2];
% % 
% %     Ctr = dlmread(fullfile(AdjFo,filnCtr));
% %     Rtr = dlmread(fullfile(AdjFo,filnRtr));
% %     FFtr = dlmread(fullfile(AdjFo,filnFFtr));
% % 
% % %     fprintf('Ctr size: \n')
% % %     disp(size(Ctr))
% % %     error('Look at H size=237?')
% %     
% %     
% % %     %Also read TT files
% %  filnCtr = ['TTtrC',filebeg,filend2];
% %     filnRtr = ['TTtrR',filebeg,filend2];
% %     filnFFtr= ['TTtrFFF',filebeg,filend2];
% %     TTtrEX(t)=exist(fullfile(AdjFo,filnCtr));
% %     if TTtrEX(t)>0
% %     TTCtr = dlmread(fullfile(AdjFo,filnCtr));
% %     TTRtr = dlmread(fullfile(AdjFo,filnRtr));
% %     TTFFtr = dlmread(fullfile(AdjFo,filnFFtr));
% %     end
% %     
% %      %   [wind str] = xlsread(filename1, t);
% %    % filenum = num2str(new);
% % 
% %     sizeS = size(Ctr);
% %     sizeSS = sizeS(1);
% % 
% %     for i = 1:sizeSS;
% %         %
% %         ile = ile+1;
% %         clearvars NewCtr NewRtr NewFFtr
% % 
% %         ilenum = num2str(ile);
% % 
% %         elimarray = [1:sizeSS];
% %         elimarray(i) = 0;
% % %         fprintf('loop = ; elimarray=')
% % %         disp(i)
% % %         disp(elimarray)
% % 
% %         b = 0;
% %         for a = 1:sizeSS;
% %             kill = elimarray(a);
% % 
% %             if kill >0;
% %                 b = b+1;
% %                 NewCtr(b,1)=Ctr(a,1);
% %                 NewRtr(b,1)=Rtr(a,1);
% %                 NewFFtr(b,1)=FFtr(a,1);
% % 
% % 
% % %                 NewS{b,1} = S(a,1);
% % %                 NewS{b,2} = S(a,2);
% % %                 %NewS{b,3} = station{a,1};
% % %                 NewY(b,1) = wind(a,1);
% % 
% %             end
% % 
% % 
% %         end
% % if TTtrEX(t)>0
% % %         %%%%Add TTtr files
% %          sizeTT = size(TTCtr);
% %     sizeTTtr = sizeTT(1);
% %         for TTtr=1:sizeTTtr
% %             b=b+1
% %             NewCtr(b,1)=TTCtr(TTtr,1);
% %             NewRtr(b,1)=TTRtr(TTtr,1);
% %             NewFFtr(b,1)=TTFFtr(TTtr,1);
% %         end
% %         
% % end
% % 
% %     fCtr = ['trC',ilenum,filend2];
% %     fRtr = ['trR',ilenum,filend2];
% %     fFFtr= ['trFF',ilenum,filend2];
% % 
% %     dlmwrite(fullfile(ZfFo,fCtr),NewCtr);
% %     dlmwrite(fullfile(ZfFo,fRtr),NewRtr);
% %     dlmwrite(fullfile(ZfFo,fFFtr),NewFFtr);
% %    
% % 
% % 
% %     end
% % end
% % iletr= 'ile.txt';
% %  dlmwrite(fullfile(ZfFo,iletr),ile);
% % 
% % end
% % 
% % 
% % 
% % 
% % clear
% % clc
% % 
% % % %Running DACE
% % % load 'NEMO SortWKSP.mat'
% % stoArray=[6,16,29,39,44,57,64,69,81,96,105]
% % for stOA=9:11%:ll
% %     clearvars -except stOA stoArray
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%
% % RN=stoArray(stOA)%Rand #
% % string=num2str(RN);
% % 
% % starTime=RN
% % STstring=string
% % 
% % AdjFo=fullfile('KrIn',['BiasCO111',STstring]);
% % BySTatFo=fullfile('KrIn',['BiasBS111',STstring]);
% % ZfFo=fullfile('KrIn',['sphCV',STstring]);
% % 
% % 
% % iletr= 'ile.txt';
% %  
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%
% % ile=dlmread(fullfile(ZfFo,iletr));
% % 
% % FiMetIn = ['20010305';'20031214';'20040701';'20040820';'20040908'; ...
% %     '20040917';'20040928';'20041104';'20041130';'20041225';'20050401'; ...
% %     '20050628';'20050718';'20050721';'20050727';'20050804';'20050811'; ...
% %     '20050916';'20050929';'20051007';'20051015';'20051024';'20060102'; ...
% %     '20060114';'20060117';'20060216';'20060531';'20060606';'20060710'; ...
% %     '20060716';'20060727';'20060801';'20060901';'20061027';'20061130'; ...
% %     '20070301';'20070414';'20070515';'20070531';'20070709';'20070714'; ...
% %     '20070729';'20070816';'20071202';'20080113';'20080212';'20080308'; ...
% %     '20080320';'20080526';'20080608';'20080610';'20080613';'20080622'; ...
% %     '20080717';'20080722';'20080726';'20080805';'20080906';'20081025'; ...
% %     '20081210';'20081230';'20090107';'20090509';'20090625';'20090706'; ...
% %     '20090723';'20090729';'20090731';'20090821';'20091006';'20091127'; ...
% %     '20100223';'20100313';'20100428';'20100503';'20100504';'20100507'; ...
% %     '20100525';'20100602';'20100604';'20100605';'20100705';'20100721'; ...
% %     '20100929';'20101225';'20110111';'20110117';'20110201';'20110601'; ...
% %     '20110608';'20110828';'20111028';'20120622';'20121028';'20121107'; ...
% %     '20121228';'20130130';'20130208';'20130511';'20130523';'20130525'; ...
% %     '20130529';'20130607';'20130613';'20130901';'20131031';'20131118'; ...
% %     '20131126';'20140106';'20140110';'20140204'];
% % 
% % %Read the Storms time list
% % filebeg  = (FiMetIn(RN,:));
% % STCVname=[filebeg,'SC24.txt'];
% % STCVID=fopen(fullfile('storm',STCVname),'r');
% % timnam = 1;
% % while(~feof(STCVID));
% %     
% %     InputText =textscan(STCVID, '%s',1,'delimiter', ',');
% %     TimeCell{timnam,1} = InputText{1};
% %     timnam = timnam+1;
% %     
% % end
% % 
% % fclose(STCVID);
% % % %
% % filend = '.txt';
% % filend2 = '.txt';
% % 
% % for u = 1:ile
% %     %(timnam-1)
% %     
% %     
% %     disp(u)
% %     
% %     clearvars ColMad C RowMad R ffMad ff S Y 
% %         
% %     Cit = 1;
% %     Rit = 1;
% %     ffit = 1;
% %         
% %     %filebeg  = cell2mat(TimeCell{u,1});
% %     
% %     ileit = num2str(u);
% %     
% %    filnCtr = ['trC',ileit,filend2];
% %    filnRtr = ['trR',ileit,filend2];
% %    filnFFtr= ['trFF',ileit,filend2];
% %   
% %    CmIDtr = fopen(fullfile(ZfFo,(filnCtr)), 'r');
% %    RmIDtr = fopen(fullfile(ZfFo,(filnRtr)), 'r');
% %    FFmIDtr = fopen(fullfile(ZfFo,(filnFFtr)), 'r'); 
% %         
% %     while(~feof(CmIDtr));
% %         
% %         ColMad =textscan(CmIDtr, '%s',1,'delimiter', '\t');
% %         sizeCMAD = size(ColMad{1});
% %         if sizeCMAD(1)>0;
% %             C{Cit,1} = ColMad{1};
% %             Cit = Cit+1;
% %         end
% %     end
% %     
% %    while(~feof(RmIDtr));
% %         
% %         RowMad =textscan(RmIDtr, '%s',1,'delimiter', '\t');
% %         sizeRMAD = size(RowMad{1});
% %         if sizeRMAD(1)>0;
% %             R{Rit,1} = RowMad{1};
% %             Rit = Rit+1;
% %         end
% %     end
% %     
% %     while(~feof(FFmIDtr));
% %         
% %         ffMad =textscan(FFmIDtr, '%s',1,'delimiter', '\t');
% %         sizeffMAD = size(ffMad{1});
% %         if sizeffMAD(1)>0;
% %             ff{ffit,1} = ffMad{1};
% %             ffit = ffit+1;
% %         end
% %     end 
% %   
% % fclose(CmIDtr);
% % fclose(RmIDtr);
% % fclose(FFmIDtr);
% % 
% % sw = ffit-1;
% % 
% %     for q = 1:sw;
% %         Y(q,1) = str2num(cell2mat(ff{q,1}));
% %     end  
% %     
% %     for i = 1:sw;
% %         
% %             S(i,1) = str2num(cell2mat(C{i,1}));
% %             S(i,2) = str2num(cell2mat(R{i,1}));
% %        
% %     end
% % 
% %  
% %       
% % 
% % 
% % 
% % theta = [10 10];
% % %lower boundary for theta guesses
% % lob = [1e-100 1e-100];
% % %Upper boundary for theta guesses
% % upb = [1000 1000];
% % 
% % 
% % % %%Running(comment this out when initializing, comment out initalization%
% % % %runs the model with 
% % [dmodel, perf] = ...
% %     dacefit(S, Y, @regpoly2, @corrspherical, theta, lob, upb);
% % 
% % 
% % 
% % 
% % %%Graph comment out the model run and initailization%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %Pick bounds that would make an appropriate grid for the data you have
% % 
% % % Lower 2D to upper 2D, slightly above highest Y value
% % X = gridsamp([0, 0;330 330], 330);
% % [YX MSE] = predictor(X, dmodel);
% % X1 = reshape(X(:,1),330, 330);   
% % X2 = reshape(X(:,2),330, 330);
% % YX2 = YX;
% % YX = reshape(YX, size(X1));
% % 
% % 
% % 
% %   %figure(1),  mesh(X1, X2, YX);
% % % % hold on,
% % % % plot3(S(:,1),S(:,2),Y,'.k', 'MarkerSize',330)
% % % % hold off
% % % titl=[filebeg,'Kriged Obs']
% % % title(titl)
% % % xlabel('WRF Cell Location Row')
% % % ylabel('WRF Cell Location Column')
% % % zlabel('Observed Wind (m/s)')
% % % 
% % % clearvars -except YX
% % %  wkspc = fullfile('CVkrigs',[ileit,'Krig.mat']);
% % % gcf = [filebeg,'Obs.pdf']
% % % nMSE = [filebeg,'MSE.pdf']
% % 
% % 
% % % bias = [
% % % saveas(gcf, bias)
% % 
% %     
% % 
% % %Alternate model???
% % %[emodel perf] = dacefit(S, Y, @regpoly0, @correxp, 2)
% %     
% % %     % %MSE graph comment out rest and run%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % MSEnew = reshape(MSE, size(X1));
% % % % 
% % % figure(2),  mesh(X1, X2, reshape(MSE, size(X1)))
% % % xlabel('WRF Cell Location Row')
% % % ylabel('WRF Cell Location Column')
% % % zlabel('Observed Wind MSE (m/s)')
% % % msetitles=[filebeg, 'MSE of Kriging']
% % % title(msetitles)
% % % 
% % % saveas(gcf, nMSE)
% % % save(wkspc);
% % 
% % yxn=[ileit,'yx.txt'];
% % msee=[ileit,'mse.txt'];
% % locat=[ileit,'CR.txt'];
% % orig=[ileit,'ff.txt'];
% % 
% % 
% % dlmwrite(fullfile(ZfFo,yxn),YX2);
% % dlmwrite(fullfile(ZfFo,msee),MSE);
% % dlmwrite(fullfile(ZfFo,locat),S);
% % dlmwrite(fullfile(ZfFo,orig),Y);
% % 
% % 
% % end
% % 
% % end
% %  
% % 
% % clear
% % clc
% % 
% % 
% % for storm=1:11%:11;
% % 
% %     clearvars -except storm
% %     CompArray=['CEELab20';'CEELab26';'CEELab27';'CEELab05';'CEELab22'; ...
% %         'CEELab23';'CEELab06';'CEELab21';'CEELab24';'CEELab07';'CEELab25'];%
% %     stoArray=[6,16,29,39,44,57,64,69,81,96,105];%
% %     %%%%%%%%%%%%%%%%%%%%%%%%%%%
% %     RN=stoArray(storm)%Rand #
% %     STstring=num2str(RN);
% %     string=STstring
% %     starTime=RN
% %     COMP=CompArray(storm,:);
% %     %%%%%%%%%%%%%%%%%%%%%%%%%%
% % 
% %     
% % AdjFo=fullfile('KrIn',['BiasCO111',STstring]);
% % BySTatFo=fullfile('KrIn',['BiasBS111',STstring]);
% % ZfFo=fullfile('KrIn',['sphCV',STstring]);
% % CVFo=fullfile('KrIn',['ILEsphCV',STstring]);
% % mkdir(CVFo);
% % 
% %     FiMetIn = ['20010305';'20031214';'20040701';'20040820';'20040908'; ...
% %     '20040917';'20040928';'20041104';'20041130';'20041225';'20050401'; ...
% %     '20050628';'20050718';'20050721';'20050727';'20050804';'20050811'; ...
% %     '20050916';'20050929';'20051007';'20051015';'20051024';'20060102'; ...
% %     '20060114';'20060117';'20060216';'20060531';'20060606';'20060710'; ...
% %     '20060716';'20060727';'20060801';'20060901';'20061027';'20061130'; ...
% %     '20070301';'20070414';'20070515';'20070531';'20070709';'20070714'; ...
% %     '20070729';'20070816';'20071202';'20080113';'20080212';'20080308'; ...
% %     '20080320';'20080526';'20080608';'20080610';'20080613';'20080622'; ...
% %     '20080717';'20080722';'20080726';'20080805';'20080906';'20081025'; ...
% %     '20081210';'20081230';'20090107';'20090509';'20090625';'20090706'; ...
% %     '20090723';'20090729';'20090731';'20090821';'20091006';'20091127'; ...
% %     '20100223';'20100313';'20100428';'20100503';'20100504';'20100507'; ...
% %     '20100525';'20100602';'20100604';'20100605';'20100705';'20100721'; ...
% %     '20100929';'20101225';'20110111';'20110117';'20110201';'20110601'; ...
% %     '20110608';'20110828';'20111028';'20120622';'20121028';'20121107'; ...
% %     '20121228';'20130130';'20130208';'20130511';'20130523';'20130525'; ...
% %     '20130529';'20130607';'20130613';'20130901';'20131031';'20131118'; ...
% %     '20131126';'20140106';'20140110';'20140204'];
% % 
% % %Read the Storms time list
% % filebeg  = (FiMetIn(RN,:));
% % STCVname=[filebeg,'SC24.txt'];
% % STCVID=fopen(fullfile('storm',STCVname),'r');
% % timnam = 1;
% % while(~feof(STCVID));
% %     
% %     InputText =textscan(STCVID, '%s',1,'delimiter', ',');
% %     TimeCell{timnam,1} = InputText{1};
% %     timnam = timnam+1;
% %     
% % end
% % 
% % fclose(STCVID);
% % 
% % 
% % filend2='.txt'
% % latot=0
% % 
% % 
% % matcheck=0;
% % totiter = 0;
% % ileticks=0;
% % for t = 1:(timnam-2)
% %     %:24
% %     %new = new+1;
% % 
% %     filebeg  = cell2mat(TimeCell{t,1});
% % 
% %     %:ticou;
% %     matcheck=matcheck+1;
% %     %Read original files
% %     filebeg  = cell2mat(TimeCell{t,1});
% %     filnSTtr=['GCHtrST',filebeg,filend2];
% %     filnCtr = ['GCHtrC',filebeg,filend2];
% %     filnRtr = ['GCHtrR',filebeg,filend2];
% %     filnFFtr= ['GCHtrFF',filebeg,filend2];
% % %     nm=['res',filebeg,filend2];
% % %     nm2=['pB',filebeg,filend2];
% %     
% %     %    STID=fopen(fullfile(AdjFo,(filnSTtr)),'r');
% %     CID = fopen(fullfile(AdjFo,(filnCtr)), 'r');
% %     RID = fopen(fullfile(AdjFo,(filnRtr)), 'r');
% %     ffID = fopen(fullfile(AdjFo,(filnFFtr)), 'r');
% %     
% %     Cit=1;
% %     Rit=1;
% %     ffit=1;
% %     %STit=1;
% %     
% %     %%%%ElimArray
% %     ElimName=['GCHElim',STstring,'.csv'];
% %     MaxName= ['GCMaxReps',STstring,'.csv'];
% %     
% %     ElimFo = fullfile(BySTatFo,ElimName);
% %     Reps=dlmread(fullfile(BySTatFo,MaxName));
% %     RMval=(Reps(1,1));
% %     howmany=0;
% %     ElimID=fopen(ElimFo,'r');
% %     Elimnum = 1;
% %     while(~feof(ElimID));
% %         % %Test this before running main code
% %         if (RMval+1)==1
% %             STelim2 =textscan(ElimID, '%s',1,'delimiter', ',');
% %         end
% %         howmany=howmany+1
% %         
% %         if (RMval+1)==2
% %             STelim2 =textscan(ElimID, '%s %s','Delimiter',',');
% %         end
% %         
% %         if (RMval+1)==3
% %             STelim2 =textscan(ElimID, '%s %s %s',1,'delimiter', ',');
% %         end
% %         
% %         if (RMval+1)==3
% %             error('New Maximum >3')
% %         end
% %         
% %     end
% %     fclose(ElimID)
% %   
% %     
% %     while(~feof(CID));
% %         
% %         ColMad =textscan(CID, '%f',1,'delimiter', '\t');
% %         sizeCMAD = size(ColMad{1});
% %         if sizeCMAD(1)>0;
% %             C{Cit,1} = ColMad{1};
% %             Cit = Cit+1;
% %         end
% %     end
% %     
% %     while(~feof(RID));
% %         
% %         RowMad =textscan(RID, '%f',1,'delimiter', '\t');
% %         sizeRMAD = size(RowMad{1});
% %         if sizeRMAD(1)>0;
% %             R{Rit,1} = RowMad{1};
% %             Rit = Rit+1;
% %         end
% %     end
% %     
% %     while(~feof(ffID));
% %         
% %         ffMad =textscan(ffID, '%f',1,'delimiter', '\t');
% %         sizeffMAD = size(ffMad{1});
% %         if sizeffMAD(1)>0;
% %             ff{ffit,1} = ffMad{1};
% %             ffit = ffit+1;
% %         end
% %     end
% % 
% %     fclose(CID);
% %     fclose(RID);
% %     fclose(ffID);
% % 
% %     
% %     sizeC = size(C);
% %     sizefi=sizeC(1);
% % 
% %     %Compare to Kriging Field%%%%%%%%%%%%%%%%%%%%%
% %     
% %     disp(Cit-2)
% %     lif = (Cit-2)
% %     if latot==0
% %         PredB=zeros(lif,1);
% %         latFF=zeros(lif,1);
% %         Bsquared=zeros(lif,1);
% %         Bias=zeros(lif,1);
% %         
% %     end
% %     
% %     
% %     
% %     for iiiii = 1:lif
% %         
% %         ileticks=ileticks+1;
% %         ileit = num2str(ileticks);
% %         
% %         
% %         
% %         %%%
% %         WRFname = [filebeg,'WRF',filend2];
% %     
% %         WRFtot = dlmread(fullfile('WRFnew',(WRFname)));
% % 
% %         YX =dlmread(fullfile(ZfFo,[ileit,'yx.txt']));
% %         S = dlmread(fullfile(ZfFo,[ileit,'CR.txt']));
% %         disp(lif)
% %         
% %         
% %         %load (wkspc);
% %         
% %         clearvars sizess sizes ;
% %         sizes = size(S);
% %         sizess = sizes(1);
% %         
% %         %%%
% %         Rnum=R{iiiii,1};
% %         Cnum=C{iiiii,1};
% %         Rclose = round(Rnum);
% %         Cclose = round(Cnum);
% %         LocClose = (Cclose-1)*330 + Rclose;
% %         KriBclose = YX(LocClose);
% %         WRFclose = WRFtot(LocClose,1);
% %         latot = latot+1;
% %     
% %         Bsquared(iiiii,matcheck)=(KriBclose-ff{iiiii,1})^2;
% %         Bias(iiiii,matcheck)=(KriBclose-ff{iiiii,1});
% %         PredB(iiiii,matcheck)=KriBclose;
% %         latFF(iiiii,matcheck)=ff{iiiii,1};
% %         
% %         
% %         BsqWRF(iiiii,matcheck)=(WRFclose-ff{iiiii,1})^2;
% %         BiasWRF(iiiii,matcheck)=(WRFclose-ff{iiiii,1});
% %          PredBWRF(iiiii,matcheck)=WRFclose;
% %        
% %         % fprintf('is it adding \n')
% %         % disp(PredB(iiiii,1))
% %         % disp(KriBclose)
% %         % disp(iiiii)
% %         
% %         %fprintf(wriID, '%f\n', BIWRF);
% %         %fprintf(BIASID, '%f\n', BIAS);
% %         
% %     end
% %     %clearvars iiiii Cit
% %     
% %     
% %     
% %     
% %     
% %     
% %     %dlmwrite(fullfile('Evaluation',nm),BIAS);
% %     %dlmwrite(fullfile('Evaluation',nm2),PredB);
% %     
% % end
% % disp(latFF)
% % 
% % 
% %   for y=1:(Cit-1)
% %     for dim=1:(RMval+1)
% %        
% %             %How does the change in dimension size
% %             %affect read
% %             placehold{1,1}=STelim2{1,dim};
% %             ph2=placehold{1,1}
% %             STelim{y,dim}=ph2{y,1};
% %         end
% %         
% %     end
% %   
% % for j=1:lif
% %     for t=1:(timnam-2)
% %         
% %         PredArray(t,1)=PredB(j,t);
% %         latFFArray(t,1)=latFF(j,t);
% %         
% %         BsqArray(t,1)= Bsquared(j,t);
% %         BiasArray(t,1)=Bias(j,t);
% %         
% %         
% %          PWRFArray(t,1)=PredBWRF(j,t);
% % %         %latFFArray(t,1)=latFF(j,t);
% % %         
% %         BsqWRFArray(t,1)= BsqWRF(j,t);
% %         BWRFArray(t,1)=BiasWRF(j,t);
% %     end
% %     
% %     rmse=sqrt(mean(BsqArray));
% %     meanBias=mean(BiasArray);
% %     
% %     AvgFF=mean(latFFArray)
% %     AvgUKFF=mean(PredArray)
% %     AvgFFWRF=mean(PWRFArray)
% %     
% %      rmseWRF=sqrt(mean(BsqWRFArray));
% %      meanBiasWRF=mean(BWRFArray);
% % %     
% %     maxData(1)=max(PredArray);
% %     maxData(2)=max(latFFArray);
% % %     maxData(3)=max(PWRFArray)
% %     minData(1)=min(PredArray);
% %     minData(2)=min(latFFArray);
% % %     minDat(3)=min(PWRFArray);
% % %     
% %     axisMax=(max(maxData));
% %     axisMin=(min(minData));
% %     % %%Automatic Plotting
% %   
% %             
% %             fig = figure;
% %             R=corrcoef(latFFArray, PredArray);
% %             scatter(latFFArray,PredArray,'g');
% %             
% %             RWRF=corrcoef(latFFArray, PWRFArray);
% %             
% %             hold on;
% % %             scatter(latFFArray,PWRFArray,'c');
% %              P=polyfit(latFFArray,PredArray,1);
% %              yfit=P(1)*latFFArray+P(2);
% % %             
% % %             PWRF=polyfit(latFFArray,PWRFArray,1);
% % %             yfitWRF=PWRF(1)*latFFArray+PWRF(2);
% %             
% %             hold on;
% % %             plot(latFFArray,yfit,'-g');
% %             
% % %             hold on;
% % %             plot(latFFArray,yfitWRF,'-c');
% %             hold on
% %             hline = refline([1 0]);
% %             hline.Color = 'r';
% %             
% %             fd=TimeCell{1}
% %             firstDay=cell2mat(fd)
% %             % titlestring=['y=',num2str(P(1)),'x+',num2str(P(2)),' R^2=',num2str(R(1,2))];
% %             % title(titlestring);
% %             line1 =['Station ID:  ',(STelim{j,1}),' ','Storm:  ', firstDay(1:8)];
% %             line2 =['UK RMSE (m/s)=',num2str(rmse), '   ','WRF RMSE (m/s)=',num2str(rmseWRF)];
% %             line3=['UK Mean Bias (m/s)=',num2str(meanBias),'   ','WRF Mean Bias(m/s)=',num2str(meanBiasWRF)];
% % %             line4=['UK R^2=',num2str(R(1,2)),'   ','WRF R^2=',num2str(RWRF(1,2))];
% %             
% %          %   lines ={line1,line2,line3,line4};
% %             
% %           %  title(lines);
% %             axis([axisMin axisMax  axisMin axisMax]);
% %             xlabel('Storm Average NE US Observed Wind Speed (m/s)');
% %             ylabel('Storm Average Estimated Wind Speed (m/s)');
% %             
% %             %gcf=.pdf';
% %             %pname=[ statname{1,plottick +2}, '.pdf' ];
% %             
% %             
% %             theString = sprintf('y = %.2f x + %.2f', P(1),P(2));
% % %             theWRFString = sprintf('y = %.2f x + %.2f', PWRF(1),PWRF(2));
% %             %text((1),axisMax, theString, 'FontSize', 10);
% %             legend('UK Estimate',theString, ...
% %                 '1:1 Reference Line','Location','northwest');
% %             
% %             
% %             hold off;
% %             fprintf('THIS IS J!!!!!:')
% %             disp(j)
% %             %     for dim=1:(RMval+1)
% %             %         %mkdir(BySTatFo,(STelim{j,dim}));
% %             RMSEname=['BRMSE',(STelim{j,1}),'.csv']
% %             RMSEFo=fullfile(CVFo,RMSEname);
% %             blankmat=ones(2,2);
% %             dlmwrite(RMSEFo,(rmse.*blankmat));
% %             
% %             
% %             %         RMSEWRFname=['WMRMSEWRF',(STelim{j,1}),'.csv']
% %             %         RMSEFo=fullfile(CVFo,RMSEWRFname);
% %             %         blankmat=ones(2,2);
% %             %         dlmwrite(RMSEFo,(rmseWRF.*blankmat));
% %             %%%
% %             FFname=['BFF',(STelim{j,1}),'.csv']
% %             FFFo=fullfile(CVFo,FFname);
% %             blankmat=ones(2,2);
% %             dlmwrite(FFFo,(AvgFF.*blankmat));
% %             
% %             FFUKname=['BUK',(STelim{j,1}),'.csv']
% %             FFUKFo=fullfile(CVFo,FFUKname);
% %             blankmat=ones(2,2);
% %             dlmwrite(FFUKFo,(AvgUKFF.*blankmat));
% %             
% %             
% %             %         FFWRFname=['WMFFWRF',(STelim{j,1}),'.csv']
% %             %         FFWRFFo=fullfile(CVFo,FFWRFname);
% %             %         blankmat=ones(2,2);
% %             %         dlmwrite(FFWRFFo,(AvgFFWRF.*blankmat));
% %             %         %%%
% %             
% %             NEUS=['BWind',(STelim{j,1}),'.png'];
% %             NEUSFo=fullfile(CVFo,NEUS)
% %             saveas(fig,NEUSFo);
% %             %     end
% %             
% %             
% %             
% %             
% %             
% %             %fn=num2str(j);
% %             %mkdir(CVFo,cell2mat(STelim{j,1}));
% %             %
% %             % NEUS=['NEUS',cell2mat(STelim{j,1}),STstring,'.png'];
% %             % NEUSFo=fullfile(CVFo,(STelim{j,1}),NEUS)
% %             % saveas(fig,NEUSFo);
% %             
% %             
% %             
% % %             latFFArray=WindArr
% % %             PredArray = WindPr
% %             
% % %             
% % %             rmse=sqrt(mean(BsqWPray));
% % %             meanBias=mean(BWPArray);
% % %             
% % %             %KalPr:   is the actual Kal pred rep. as W.S.
% % %             %BsqKalray:   is the Bsq of the real Kalman estimate
% % %             %BKalArray:   is the bias
% % %             
% % %             
% % %             
% % %             AvgFF=mean(WindArr)
% % %             AvgUKFF=mean(WindPr)
% % %             AvgFFWRF=mean(PWRFArray)
% % %             AvgFFKal=mean(KalPr)
% % %             
% % %             rmseWRF=sqrt(mean(BsqWRFArray));
% % %             meanBiasWRF=mean(BWRFArray);
% % %             
% % %             rmseKal=sqrt(mean(BsqKalray));
% % %             meanBiasKal=mean(BKalArray);
% % %             
% % %             maxData(1)=max( WindPr);
% % %            % maxData(2)=max(WindArr);
% % %             maxData(2)=max(PWRFArray);
% % %             maxData(3)=max(KalPr);
% % %             minData(1)=min( WindPr);
% % %             %minData(2)=min(WindArr);
% % %             minData(2)=min(PWRFArray);
% % %             minData(3)=min(KalPr);
% % %             
% % %             axisMax=(max(maxData));
% % %             axisMin=(min(minData));
% % %             % %%Automatic Plotting
% % %             
% % %             fig = figure;
% % %             R=corrcoef(WindArr,WindPr);
% % %             scatter(WindArr, WindPr,'g');
% % %             
% % %             RWRF=corrcoef(WindArr, PWRFArray);
% % %             
% % %              
% % %             
% % %             PWRF=polyfit(WindArr,PWRFArray,1);
% % %             
% % %             hold on;
% % %             scatter(WindArr,PWRFArray,'c');
% % %             P=polyfit(WindArr,WindPr,1);
% % %             yfit=P(1)*WindArr+P(2);
% % %             
% % %             
% % %             PWRF=polyfit(WindArr,PWRFArray,1);
% % %             yfitWRF=PWRF(1)*WindArr+PWRF(2);
% % %             
% % %             hold on;
% % %             scatter(WindArr,KalPr,'r');
% % %             PKal=polyfit(WindArr,KalPr,1);
% % %             yfitKal=PKal(1)*WindArr+PKal(2);
% % %             hold on;
% % %             plot(WindArr,yfit,'-g');
% % %             
% % %             hold on;
% % %             plot(WindArr,yfitWRF,'-c');
% % %             hold on;
% % %             plot(WindArr,yfitKal,'-r');
% % %             hold on
% % %             hline = refline([1 0]);
% % %             hline.Color = 'r';
% % %             
% % %             fd=TimeCell{1}
% % %             firstDay=cell2mat(fd)
% % %             % titlestring=['y=',num2str(P(1)),'x+',num2str(P(2)),' R^2=',num2str(R(1,2))];
% % %             % title(titlestring);
% % %             line1 =['Station ID:  ',(STelim{j,1}),' ','Storm:  ', firstDay(1:8)];
% % %             line2 =['UK RMSE (m/s)=',num2str(rmse), '   ','WRF RMSE (m/s)=',num2str(rmseWRF)];
% % %             line3=['UK Mean Bias (m/s)=',num2str(meanBias),'   ','WRF Mean Bias(m/s)=',num2str(meanBiasWRF)];
% % %            % line4=['UK R^2=',num2str(R(1,2)),'   ','WRF R^2=',num2str(RWRF(1,2))];
% % %             
% % %            % lines ={line1,line2,line3,line4};
% % %             
% % %            % title(lines);
% % %             axis([axisMin axisMax  axisMin axisMax]);
% % %             xlabel('Storm Average NE US Observed Wind Speed (m/s)');
% % %             ylabel('Storm Average Estimated Wind Speed (m/s)');
% % %             
% % %             %gcf=.pdf';
% % %             %pname=[ statname{1,plottick +2}, '.pdf' ];
% % %             
% % %             
% % %             theString = sprintf('y = %.2f x + %.2f', P(1),P(2));
% % %             theWRFString = sprintf('y = %.2f x + %.2f', PWRF(1),PWRF(2));
% % %             theKalString = sprintf('y = %.2f x + %.2f', PWRF(1),PWRF(2));
% % %             %text((1),axisMax, theString, 'FontSize', 10);
% % %             legend('UK Estimate','WRF Estimate','Kal Estimate',theString, ... 
% % %                 theWRFString,theKalString, '1:1 Reference Line','Location','northwest');
% % %             
% % %             
% % %             hold off;
% % %             fprintf('THIS IS J!!!!!:')
% % %             disp(j)
% % %             %     for dim=1:(RMval+1)
% % %             %         %mkdir(CVFo,(STelim{j,dim}));
% % %             RMSEname=['WMRMSE',(STelim{j,1}),'.csv']
% % %             RMSEFo=fullfile(CVFo,RMSEname);
% % %             blankmat=ones(2,2);
% % %             dlmwrite(RMSEFo,(rmse.*blankmat));
% % %             
% % %             
% % %             RMSEWRFname=['WMRMSEWRF',(STelim{j,1}),'.csv']
% % %             RMSEFo=fullfile(CVFo,RMSEWRFname);
% % %             blankmat=ones(2,2);
% % %             dlmwrite(RMSEFo,(rmseWRF.*blankmat));
% % %             %%%
% % %             FFname=['WMFF',(STelim{j,1}),'.csv']
% % %             FFFo=fullfile(CVFo,FFname);
% % %             blankmat=ones(2,2);
% % %             dlmwrite(FFFo,(AvgFF.*blankmat));
% % %             
% % %                 
% % %             RMSEKalname=['WMRMSEKal',(STelim{j,1}),'.csv']
% % %             RMSEFo=fullfile(CVFo,RMSEKalname);
% % %             blankmat=ones(2,2);
% % %             dlmwrite(RMSEFo,(rmseKal.*blankmat));
% % %             %%%
% % %             FFKalname=['WMKal',(STelim{j,1}),'.csv']
% % %             FFFo=fullfile(CVFo,FFKalname);
% % %             blankmat=ones(2,2);
% % %             dlmwrite(FFFo,(AvgFFKal.*blankmat));
% % %             
% % %             
% % %             FFUKname=['WMFFUK',(STelim{j,1}),'.csv']
% % %             FFUKFo=fullfile(CVFo,FFUKname);
% % %             blankmat=ones(2,2);
% % %             dlmwrite(FFUKFo,(AvgUKFF.*blankmat));
% % %             
% % %             
% % %             FFWRFname=['WMFFWRF',(STelim{j,1}),'.csv']
% % %             FFWRFFo=fullfile(CVFo,FFWRFname);
% % %             blankmat=ones(2,2);
% % %             dlmwrite(FFWRFFo,(AvgFFWRF.*blankmat));
% % %             %%%
% % %             
% % %             NEUS=['WMWind',(STelim{j,1}),'.png'];
% % %             NEUSFo=fullfile(CVFo,NEUS)
% % %             saveas(fig,NEUSFo);
% % %             %     end
% % %             
% % %             
% % %             
% % %             
% % %             
% % %             %fn=num2str(j);
% % %             %mkdir(CVFo,cell2mat(STelim{j,1}));
% % %             %
% % %             % NEUS=['NEUS',cell2mat(STelim{j,1}),STstring,'.png'];
% % %             % NEUSFo=fullfile(CVFo,(STelim{j,1}),NEUS)
% % %             % saveas(fig,NEUSFo);
% %         end
% %         % % %
% %         
% %         
% % end
% %     
% %     
% 
% 
%     
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% % % %coment>copy/paste style code
% clear
% clc
%    ti=0;
% %Read Stormlist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% filename='Stormlist.csv'
% FID=fopen(filename,'r')
% 
% Stnum = 1;
% while(~feof(FID));
%     
%     InputText =textscan(FID, '%s',1,'delimiter', '\n');
%     sizeT = size(InputText{1});
%     if sizeT(1)>0;
%         Storm{Stnum,1} = InputText{1};
%         Stnum = Stnum+1;
%     end
% end
% fclose(FID)
% 
% %mkdir('BiasPWRFBSO')
% %make output folders
% % for i=1:(Stnum-1)
% %     mkdir(fullfile('ByStatOut',str2mat(Storm{i,1})))
% % end
% % %
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% 
% %Read MetMad%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% filename='MetMad.csv'
% FID=fopen(filename,'r')
% 
% Statnum = 1;
% while(~feof(FID));
%     
%     InputText =textscan(FID, '%s %s %s %s %s',1,'delimiter', ',');
%     sizeT = size(InputText{1});
%     if sizeT(1)>0;
%         FoStat{Statnum,1} = InputText{1};
%         Statnum = Statnum+1;
%     end
% end
% fclose(FID)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %For element in (Stormlist)
% for st=1:11%:(Stnum-1)
%     
%     %locInp=['BiasBStat',cell2mat(Storm{st,1})];
%     locInp= fullfile('KrIn',['BiasBS111',cell2mat(Storm{st,1})]);
%     %locOut=['BiasPWRFBSO'];
%     CVFo=fullfile('KrIn',['ILEsphCV',cell2mat(Storm{st,1})]);
%     ElimFo=fullfile(locInp,['GCHElim',cell2mat(Storm{st,1}),'.csv'])
%     MRname=fullfile(locInp,['GCMaxReps',cell2mat(Storm{st,1}),'.csv'])
%     
%     
%     
% %     FNStoSta = fullfile(locInp,[ElimName,'.csv']);
% %     MRname=fullfile(locInp,[MaxName,'.csv']);
%     maxReps=dlmread(MRname)
%     
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     %%%%ElimArray
%     %     ElimName=['Elim',,'.csv'];
%     %     MaxName= ['MaxReps',,'.csv'];
%     
% %     ElimFo = fullfile(FNStoSta);
%     %     Reps=dlmread(fullfile(locInp,maxReps));
%     RMval=(maxReps(1,1));
%     howmany=0;
%     ElimID=fopen(ElimFo,'r');
%     Elimnum = 1;
%     while(~feof(ElimID));
%         % %Test this before running main code
%         if (RMval+1)==1
%             STelim2 =textscan(ElimID, '%s',1,'delimiter', ',');
%         end
%         howmany=howmany+1
%         
%         if (RMval+1)==2
%             STelim2 =textscan(ElimID, '%s %s','Delimiter',',');
%         end
%         
%         if (RMval+1)==3
%             STelim2 =textscan(ElimID, '%s %s %s',1,'delimiter', ',');
%         end
%         
%         if (RMval+1)==3
%             error('New Maximum >3')
%         end
%         
%         % %
%         %     Stnum=1;
%         %     sizeT = size(STelim{1});
%         %     if sizeT(1)>0;
%         %         STelim{Stnum,1} = SThold{1};
%         %         Stnum = Stnum+1;
%         %     end
%     end
%     fclose(ElimID)
%     SE=size(STelim2{1})
%     % %Note, this looks like an older version, make sure utd
%     for y=1:SE
%         for dim=1:(RMval+1)
%             
%             %How does the change in dimension size
%             %affect read
%             placehold{1,1}=STelim2{1,dim};
%             ph2=placehold{1,1}
%             STelim{y,dim}=ph2{y,1};
%         end
%         
%     end
%     numElim=size(STelim)
%     
%     for w=1:(Statnum-1)
%         
%         test=cell2mat(FoStat{w,1})
%         
%      
%         %For element in (MetMad)
%         for dimloop=1:(RMval+1)%Is RMval present yet?
%             
%             for MM=1:(SE-2)%MM IS NOT MedMad... its Elim
%                 
%                 filena=STelim(MM,dimloop)
%                 check=cell2mat(filena)
%                 StormPlace=Storm(st,1)
%                 stormname=cell2mat(StormPlace{1})
%                 sn=num2str(stormname)
%                 if size(test)==size(check)
%                     if test==check
%                       
%            
%                         
%                         
%                         
%                         
%                         pk=exist(fullfile(CVFo,['BFF',cell2mat(filena),'.csv']))
%                         if pk>0
%                             placeFF=dlmread(fullfile(CVFo,['BFF',cell2mat(filena),'.csv']));
%                             FFmat(w,st)=placeFF(1,1);
%                             ti=ti+1;
%                             latFFArray(ti,1)=placeFF(1,1);
%                             
%                         end
%                         
%                         
%                           
%                         pk=exist(fullfile(CVFo,['BRMSE',cell2mat(filena),'.csv']))
%                         if pk>0
%                             placeUK=dlmread(fullfile(CVFo,['BRMSE',cell2mat(filena),'.csv']))
%                             RMSEmatUK(w,st)=placeUK(1,1)
%                             Kal2drmse(ti,1)=placeUK(1,1)
%                         end
%                         
% %                         %%%%%%%%%WRF%%%%%%%%%%%%%%%%%%%%%
% %                         pk=exist(fullfile(locInp,['WMRMSEWRF',cell2mat(filena),'.csv']))
% %                         if pk>0
% %                             RMSEWRF=dlmread(fullfile(locInp,['WMRMSEWRF',cell2mat(filena),'.csv']))
% %                             RMSEWRFmat(w,st)=RMSEWRF(1,1)
% %                             buster(ti,1)=RMSEWRF(1,1);
% %                         end                      
% %                                              
% %                          pk=exist(fullfile(locInp,['WMFFWRF',cell2mat(filena),'.csv']))
% %                         if pk>0
% %                             FFWRF=dlmread(fullfile(locInp,['WMFFWRF',cell2mat(filena),'.csv']))
% %                             FFWRFmat(w,st)=FFWRF(1,1)
% %                             PWRFArray(ti,1)=FFWRF(1,1);
% %                         end
% %                         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         
%                         pk=exist(fullfile(CVFo,['BUK',cell2mat(filena),'.csv']))
%                         if pk>0
%                             FFUK=dlmread(fullfile(CVFo,['BUK',cell2mat(filena),'.csv']))
%                             FFmatUK(w,st)=FFUK(1,1)
%                             PredArray(ti,1)=FFUK(1,1)
%                         end
%                         
% %                         pk=exist(fullfile(locInp,strcat(['MEANwrf',cell2mat(filena),'.csv'])))
% %                         if pk>0
% %                             FWRF=dlmread(fullfile(locInp,strcat(['MEANwrf',cell2mat(filena),'.csv'])))
% %                             FFWRFmat(w,st)=FWRF(1,1)
% %                             FPWRFArray(ti,1)=FWRF(1,1);
% %                         end
% %                         
% %                         pk=exist(fullfile(locInp,strcat(['RMSEWRF',cell2mat(filena),'.csv'])))
% %                         if pk>0
% %                             RMSEWR2F=dlmread(fullfile(locInp,strcat(['RMSEWRF',cell2mat(filena),'.csv'])))
% %                             RMSEWRFmat2(w,st)=RMSEWR2F(1,1)
% %                             buster2(ti,1)=RMSEWR2F(1,1);
% %                         end
%                         
% %                         
%                     end
%                     
%                     
%                     
%                     
%                 end
%    
%                 
%             end
%             
%         end
%     end
% end
% 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         BsqArray=(PredArray-latFFArray).^2;
%         BiasArray=PredArray-latFFArray;
% %         PredB(iiiii,matcheck)=KriBclose;
% %         latFF(iiiii,matcheck)=ff{iiiii,1};
% %         
%         
% %        BsqWRFArray=(PWRFArray-latFFArray).^2;
% %        BWRFArray=(PWRFArray-latFFArray);
%          %PredBWRF(iiiii,matcheck)=WRFclose;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     rmse=(mean(Kal2drmse));
%     meanBias=mean(BiasArray);
%     
%     AvgFF=mean(latFFArray)
%     AvgUKFF=mean(PredArray)
% %    AvgFFWRF=mean(PWRFArray)
% %     rmseWRF=mean(buster);
% %    meanBiasWRF=mean(BWRFArray);
%     
%     maxData(1)=max(PredArray);
%     maxData(2)=max(latFFArray);
% %    maxData(3)=max(PWRFArray)
%     minData(1)=min(PredArray);
%     minData(2)=min(latFFArray);
% %     minDat(3)=min(PWRFArray);
% %     
%     axisMax=(max(maxData));
%     axisMin=(min(minData));
%     % %%Automatic Plotting
% %     save('GCKM32D.mat')
%     
clear
clc
cd ..
load('GCKM32D.mat')


    
    fig = figure;
    R=corrcoef(latFFArray, PredArray);
    scatter(latFFArray,PredArray,'MarkerEdgeColor',[0 .6 1]);
    
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
    plot(latFFArray,yfit,'Color',[0 .6 1]);
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
    
    title(line1);
    axis([axisMin axisMax axisMin axisMax]);
    xlabel('KF Expected Residual (m/s)');
    ylabel('RK Estimated Residual (m/s)');
    
    %gcf=.pdf';
    %pname=[ statname{1,plottick +2}, '.pdf' ];
    
    
    
    theString = sprintf('y = %.2f x + %.2f', P(1),P(2));
%      theWRFString = sprintf('y = %.2f x + %.2f', PWRF(1),PWRF(2));
    %text((1),axisMax, theString, 'FontSize', 10);
    legend('RK CV',theString, ...
        '1:1 Reference Line','Location','southeast');
    
    
    hold off;
       
     NEUS=['GCKM32D.png'];
        %NEUSFo=fullfile(BySTatFo,NEUS)
%         saveas(fig,NEUS);
%     save('sphCV6.mat')

