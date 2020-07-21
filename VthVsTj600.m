%% Superimposing plots of Vth Vs. Tj for 600-650V Rated Devices

basePath = 'C:\Users\mcmit\Documents\Vth vs. Tj 600\';

fn1 = strcat(basePath,"UF3SC065007K4S_SiC.csv");
UF3SC065007K4S_SiC = table2array(readtable(fn1));
UF3SC065007K4S_SiC(:,2) = UF3SC065007K4S_SiC(:,2)./4.7; %Normalize

fn2 = strcat(basePath,"MSC015SMA070B_SiC.csv");
MSC015SMA070B_SiC = table2array(readtable(fn2));
MSC015SMA070B_SiC(:,2) = MSC015SMA070B_SiC(:,2)./2.4; %Normalize

fn3 = strcat(basePath,"SCT3017ALHR_SiC.csv");
SCT3017ALHR_SiC = table2array(readtable(fn3));
SCT3017ALHR_SiC(:,2) = SCT3017ALHR_SiC(:,2)./4.15; %Normalize

fn4 = strcat(basePath,"UF3C065030K3S_SiC.csv");
UF3C065030K3S_SiC = table2array(readtable(fn4));
UF3C065030K3S_SiC(:,2) = UF3C065030K3S_SiC(:,2)./5; %Normalize

fn5 = strcat(basePath,"IXFK100N65X2_Si.csv");
IXFK100N65X2_Si = table2array(readtable(fn5));

fn6 = strcat(basePath,"IXFH80N65X2_Si.csv");
IXFH80N65X2_Si = table2array(readtable(fn6));

fn7 = strcat(basePath,"STE70NM60_Si.csv");
STE70NM60_Si = table2array(readtable(fn7));

fn8 = strcat(basePath,"SCTH100N65G2-7AG_SiC.csv");
SCTH100N65G27AG_SiC = table2array(readtable(fn8));

fn9 = strcat(basePath,"SCTH90N65G2V-7_SiC.csv");
SCTH90N65G2V7_SiC = table2array(readtable(fn9));

fn10 = strcat(basePath,"IXFT80N65X2H_Si.csv");
IXFT80N65X2H_Si = table2array(readtable(fn10));

fn11 = strcat(basePath,"SCTH35N65G2V-7AG_SiC.csv");
SCTH35N65G2V7AG_SiC = table2array(readtable(fn10));

fn12 = strcat(basePath,"STW70N60DM2_SiC.csv");
STW70N60DM2_SiC = table2array(readtable(fn12));

figure
hold on

%% APPEARANCE PARAMETERS %%
% Figure Properties:
    AxisFontSize        = 8;
    ImageSize           = [0 0 3.2 3]; % Width x Height
    PlotLineWidth       = 4;
    BorderGridLineWidth = 1.3;

%% ALTER PLOT APPEARANCE
    set(gca,'fontsize', AxisFontSize, ...
            'fontweight', 'bold',...
            'FontName','Times',...
            'LineWidth',BorderGridLineWidth,...
            'XGrid','on', ...
            'YGrid','on');
    set(gcf,'PaperUnits', 'inches',...
			'PaperPosition', ImageSize);
        
    xlabel('T_{j} - Juntcion Temperature ({^o}C)', 'fontsize',8, 'fontweight', 'bold');
    ylabel('V_{th} - Threshold Voltage (V)', 'fontsize', 8, 'fontweight', 'bold');
    title('V_{th} vs. T_{j} for 600V Devices', 'fontsize', 9, 'fontweight', 'bold');
    axis([-80 175 0.5 1.4])
%% PLOT
    %Order for legend
    plot(IXFK100N65X2_Si(:,1),IXFK100N65X2_Si(:,2), 'r')
    plot(MSC015SMA070B_SiC(:,1), MSC015SMA070B_SiC(:,2), 'b')
    plot(UF3SC065007K4S_SiC(:,1),UF3SC065007K4S_SiC(:,2), 'Color', [1 0 1])
    %Si devices   
    plot(IXFH80N65X2_Si(:,1),IXFH80N65X2_Si(:,2),'r')
    plot(STE70NM60_Si(:,1), STE70NM60_Si(:,2), 'r')
    plot(IXFT80N65X2H_Si(:,1), IXFT80N65X2H_Si(:,2), 'r')
    plot(STW70N60DM2_SiC(:,1),STW70N60DM2_SiC(:,2), 'r')
    %SiC devices
    plot(SCT3017ALHR_SiC(:,1), SCT3017ALHR_SiC(:,2), 'b')
    plot(UF3C065030K3S_SiC(:,1), UF3C065030K3S_SiC(:,2), 'Color', [1 0 1])
    plot(SCTH90N65G2V7_SiC(:,1), SCTH90N65G2V7_SiC(:,2), 'b')
    plot(SCTH35N65G2V7AG_SiC(:,1), SCTH35N65G2V7AG_SiC(:,2), 'b')
    plot(SCTH100N65G27AG_SiC(:,1), SCTH100N65G27AG_SiC(:,2), 'b')
        
   legend('Si Devices','SiC Devices','Cascode Devices','Location','northeast')