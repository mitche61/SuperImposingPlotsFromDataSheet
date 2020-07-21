%% Superimposing plots of Rds_on Vs. Tj for 600-650V Devices

basePath = 'C:\Users\mcmit\Documents\Rdson vs. Temp Images 600\';

fn1 = strcat(basePath,"APT80F60J.csv");
APT80F60J = table2array(readtable(fn1));

fn2 = strcat(basePath,"IXFH80N65X2.csv");
IXFH80N65X2 = table2array(readtable(fn2));

fn3 = strcat(basePath,"IXFK100N65X2.csv");
IXFK100N65X2 = table2array(readtable(fn3));

fn4 = strcat(basePath,"IXFN110N60P3.csv");
IXFN110N60P3 = table2array(readtable(fn4));

fn5 = strcat(basePath,"MSC015SMA070B.csv");
MSC015SMA070B = table2array(readtable(fn5));

fn6 = strcat(basePath,"SCT3017ALHR.csv");
SCT3017ALHR = table2array(readtable(fn6));
SCT3017ALHR(:,2) = SCT3017ALHR(:,2)./17e-3; %Normalize

fn7 = strcat(basePath, "SCTH35N65G2V-7AG.csv");
SCTH35N65G2V = table2array(readtable(fn7));

fn8 = strcat(basePath,"SCTH90N65G2V-7.csv");
SCTH90N65G2V = table2array(readtable(fn8));

fn9 = strcat(basePath,"SCTH100N65G2-7AG.csv");
SCTH100N65G2 = table2array(readtable(fn9));

fn10 = strcat(basePath,"SiHG018N60E.csv");
SiHG018N60E = table2array(readtable(fn10));

fn11 = strcat(basePath,"STE70NM60.csv");
STE70NM60 = table2array(readtable(fn11));

fn12 = strcat(basePath,"UF3C065030K3S.csv");
UF3C065030K3S = table2array(readtable(fn12));

fn13 = strcat(basePath,"UF3SC065007K4S.csv");
UF3SC065007K4S = table2array(readtable(fn13));

fn14 = strcat(basePath,"IXFT80N65X2HV_Si.csv");
IXFT80N65X2HV = table2array(readtable(fn14));

fn15 = strcat(basePath,"STW70N60DM2_SiC.csv");
STW70N60DM2_SiC = table2array(readtable(fn15));

fn16 = strcat(basePath,"IXFK80N50P_Si.csv");
IXFK80N50P_Si = table2array(readtable(fn16));

fn17 = strcat(basePath, "IXFK64N60P.csv");
IXFK64N60P = table2array(readtable(fn17));

fn18 = strcat(basePath, "SiHG44N65EF.csv");
SiHG44N65EF = table2array(readtable(fn18));

figure
hold on
%% APPEARANCE PARAMETERS
% Figure Properties:
    AxisFontSize        = 8;
    ImageSize           = [0 0 3.2 3]; % Width x Height
    PlotLineWidth       = 5;
    BorderGridLineWidth = 1.3;
%% PLOT APPEARANCE
    set(gca,'fontsize', AxisFontSize, ...
            'fontweight', 'bold',...
            'FontName','Times',...
            'LineWidth',BorderGridLineWidth,...
            'XGrid','on', ...
            'YGrid','on');
    set(gcf,'PaperUnits', 'inches',...
			'PaperPosition', ImageSize);
    xlabel('T_{j} - Juntcion Temperature ({^o}C)', 'fontsize',8, 'fontweight', 'bold');
    ylabel('R_{DS(on)} - Normalized Drain-to-Source On Resistance', 'fontsize', 8, 'fontweight', 'bold');
    title('R_{DS(on)} vs. T_{j} for 600V Devices', 'fontsize', 9, 'fontweight', 'bold');
%% Plot
    %Order for legend
    plot(SiHG018N60E(:,1), SiHG018N60E(:,2), 'r')
    plot(SCTH100N65G2(:,1), SCTH100N65G2(:,2), 'b')
    plot(UF3SC065007K4S(:,1), UF3SC065007K4S(:,2), 'Color', [1 0 1])
    %Si Devices
    plot(APT80F60J(:,1),APT80F60J(:,2), 'r')
    plot(STE70NM60(:,1), STE70NM60(:,2), 'r')
    plot(IXFH80N65X2(:,1),IXFH80N65X2(:,2), 'r')
    plot(IXFK100N65X2(:,1),IXFK100N65X2(:,2), 'r')
    plot(IXFN110N60P3(:,1),IXFN110N60P3(:,2), 'r')
    plot(IXFT80N65X2HV(:,1), IXFT80N65X2HV(:,2), 'r')
    plot(IXFK80N50P_Si(:,1), IXFK80N50P_Si(:,2), 'r')
    plot(STW70N60DM2_SiC(:,1),STW70N60DM2_SiC(:,2), 'r') %Si device
    plot(IXFK64N60P(:,1),IXFK64N60P(:,2),'r')
    plot(SiHG44N65EF(:,1),SiHG44N65EF(:,2), 'r')
    %SiC and Cascode Devices
    plot(UF3C065030K3S(:,1), UF3C065030K3S(:,2), 'Color', [1 0 1])
    plot(SCTH90N65G2V(:,1),SCTH90N65G2V(:,2), 'b')
    plot(MSC015SMA070B(:,1), MSC015SMA070B(:,2), 'b')
    plot(SCT3017ALHR(:,1),SCT3017ALHR(:,2), 'b')
    plot(SCTH35N65G2V(:,1),SCTH35N65G2V(:,2), 'b')
legend('Si devices', 'SiC devices', 'Cascode devices', 'Location', 'northwest')






