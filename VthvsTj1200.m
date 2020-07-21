%% Superimposing plots of Vth Vs. Tj for 1200V Rated Devices

Si = 1;
SiC = 1;
basePath = 'C:\Users\mcmit\Documents\Vth vs. Temp 1200\';

fn3 = strcat(basePath,"C2M0080120D_SiC.csv");
C2M0080120D_SiC = table2array(readtable(fn3));
C2M0080120D_SiC(:,2) = C2M0080120D_SiC(:,2)./2.9; %Normalize

fn4 = strcat(basePath,"C3M0016120D.csv");
C3M0016120D = table2array(readtable(fn4));
C3M0016120D(:,2) = C3M0016120D(:,2)./2.5; %Normalize

fn5 = strcat(basePath,"C3M0032120D_SiC.csv");
C3M0032120D_SiC = table2array(readtable(fn5));
C3M0032120D_SiC(:,2) = C3M0032120D_SiC(:,2)./2.5; %Normalize

fn6 = strcat(basePath,"C3M0065100K_SiC.csv");
C3M0065100K_SiC = table2array(readtable(fn6));
C3M0065100K_SiC(:,2) = C3M0065100K_SiC(:,2)./2.1; %Normalize

fn7 = strcat(basePath, "C3M0075120J_SiC.csv");
C3M0075120J_SiC = table2array(readtable(fn7));
C3M0075120J_SiC(:,2) = C3M0075120J_SiC(:,2)./2.5; %Normalize

fn8 = strcat(basePath,"IMW120R030M1H_SiC.csv");
IMW120R030M1H_SiC = table2array(readtable(fn8));
IMW120R030M1H_SiC(:,2) = IMW120R030M1H_SiC(:,2)./4.5; % Normalize

fn10 = strcat(basePath,"IXFB70N100X_Si.csv");
IXFB70N100X_Si = table2array(readtable(fn10)); %Already normalized

fn11 = strcat(basePath,"IXFK52N100X_Si.csv");
IXFK52N100X_Si = table2array(readtable(fn11)); %Already normalized
			        
fn12 = strcat(basePath,"IXFT16N120P_Si.csv");
IXFT16N120P_Si = table2array(readtable(fn12)); %Already normalized

fn13 = strcat(basePath,"LSIC1MO120E0080_SiC.csv");
LSIC1MO120E0080_SiC = table2array(readtable(fn13));
LSIC1MO120E0080_SiC(:,2) = LSIC1MO120E0080_SiC(:,2)./2.8; %Normalize

fn14 = strcat(basePath,"MSC025SMA120B_SiC.csv");
MSC025SMA120B_SiC = table2array(readtable(fn14));
MSC025SMA120B_SiC(:,2) = MSC025SMA120B_SiC(:,2)./2.8; %Normalize

fn15 = strcat(basePath,"MSC025SMA120S_SiC.csv");
MSC025SMA120S_SiC = table2array(readtable(fn15));
MSC025SMA120S_SiC(:,2) = MSC025SMA120S_SiC(:,2)./2.8; %Normalize

fn16 = strcat(basePath,"MSC080SMA120J_SiC.csv");
MSC080SMA120J_SiC = table2array(readtable(fn16));
MSC080SMA120J_SiC(:,2) = MSC080SMA120J_SiC(:,2)./2.8; %Normalize

fn17 = strcat(basePath,"UJ3C120070K3S_SiC.csv");
UJ3C120070K3S_SiC = table2array(readtable(fn17));
UJ3C120070K3S_SiC(:,2) = UJ3C120070K3S_SiC(:,2)./5; %Normalize

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
    title('V_{th} vs. T_{j} for 1200V Devices', 'fontsize', 9, 'fontweight', 'bold');
axis([-80 175 0 2])

    %Order for legend
    plot(IXFB70N100X_Si(:,1), IXFB70N100X_Si(:,2), 'r')
    plot(C2M0080120D_SiC(:,1),C2M0080120D_SiC(:,2), 'b')
    plot(UJ3C120070K3S_SiC(:,1), UJ3C120070K3S_SiC(:,2), 'Color', [1 0 1])
    %Si
    plot(IXFK52N100X_Si(:,1), IXFK52N100X_Si(:,2), 'r')
    plot(IXFT16N120P_Si(:,1), IXFT16N120P_Si(:,2), 'r')
    %SiC
    plot(C3M0016120D(:,1),C3M0016120D(:,2), 'b')
    plot(C3M0032120D_SiC(:,1), C3M0032120D_SiC(:,2), 'b')
    plot(C3M0065100K_SiC(:,1),C3M0065100K_SiC(:,2), 'b')
    plot(C3M0075120J_SiC(:,1),C3M0075120J_SiC(:,2), 'b')
    plot(IMW120R030M1H_SiC(:,1),IMW120R030M1H_SiC(:,2), 'b')
    plot(LSIC1MO120E0080_SiC(:,1), LSIC1MO120E0080_SiC(:,2), 'b')
    plot(MSC025SMA120B_SiC(:,1), MSC025SMA120B_SiC(:,2), 'b')
    plot(MSC025SMA120S_SiC(:,1), MSC025SMA120S_SiC(:,2), 'b')
    plot(MSC080SMA120J_SiC(:,1), MSC080SMA120J_SiC(:,2), 'b')

legend('Si Devices', 'SiC Devices', 'Cascode Devices','Location', 'northwest');
