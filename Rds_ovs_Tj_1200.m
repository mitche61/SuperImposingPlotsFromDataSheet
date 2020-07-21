%% Superimposing plots of Rds_on Vs. Tj for 1200V Rated Devices

basePath = 'C:\Users\mcmit\Documents\Rdson vs. Temp Images\';

fn1 = strcat(basePath,"APT28M120B2.csv");
APT28M120B2 = table2array(readtable(fn1));

fn2 = strcat(basePath,"APT34M120J.csv");
APT34M120J = table2array(readtable(fn2));

fn3 = strcat(basePath,"c2m0080120d.csv");
c2m0080120d = table2array(readtable(fn3));

fn4 = strcat(basePath,"C3M0016120D.csv");
C3M0016120D = table2array(readtable(fn4)); 

fn5 = strcat(basePath,"C3M0032120D.csv");
C3M0032120D = table2array(readtable(fn5));

fn6 = strcat(basePath,"C3M0065100K.csv");
C3M0065100K = table2array(readtable(fn6));

fn7 = strcat(basePath, "C3M0075120J.csv");
C3M0075120J = table2array(readtable(fn7));

fn8 = strcat(basePath,"IMW120R030M1H.csv");
IMW120R030M1H = table2array(readtable(fn8)); %Noramlize by 30mOhms
IMW120R030M1H(:,2) = IMW120R030M1H(:,2)./30;

fn9 = strcat(basePath,"IXFB30N120P.csv");
IXFB30N120P = table2array(readtable(fn9));

fn10 = strcat(basePath,"IXFB70N100X.csv");
IXFB70N100X = table2array(readtable(fn10));

fn11 = strcat(basePath,"IXFN32N120P.csv");
IXFN32N120P = table2array(readtable(fn11));

fn12 = strcat(basePath,"IXFT16N120P.csv");
IXFT16N120P = table2array(readtable(fn12));

fn13 = strcat(basePath,"LSIC1MO120E0080.csv");
LSIC1MO120E0080 = table2array(readtable(fn13));

fn14 = strcat(basePath,"MSC025SMA120B.csv");
MSC025SMA120B = table2array(readtable(fn14));

fn15 = strcat(basePath,"MSC025SMA120S.csv");
MSC025SMA120S = table2array(readtable(fn15));

fn16 = strcat(basePath,"MSC080SMA120J.csv");
MSC080SMA120J = table2array(readtable(fn16));

fn17 = strcat(basePath,"NTBG040N120SC1.csv");
NTBG040N120SC1 = table2array(readtable(fn17));

fn18 = strcat(basePath,"NTHL080N120SC1.csv");
NTHL080N120SC1 = table2array(readtable(fn18));

fn19 = strcat(basePath,"NVBG160N120SC1.csv");
NVBG160N120SC1 = table2array(readtable(fn19));

fn20 = strcat(basePath,"NVHL020N120SC1.csv");
NVHL020N120SC1 = table2array(readtable(fn20));

fn21 = strcat(basePath,"UJ3C120070K3S.csv");
UJ3C120070K3S = table2array(readtable(fn21)); 

fn22 = strcat(basePath, "IXF52N100X.csv");
IXF52N100X = table2array(readtable(fn22));
			        
figure
hold on
%% APPEARANCE PARAMETER
% Figure Properties:
    AxisFontSize        = 8;
    ImageSize           = [0 0 3.2 3]; % Width x Height
    PlotLineWidth       = 4;
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
    title('R_{DS(on)} vs. T_{j} for 1200V Devices', 'fontsize', 9, 'fontweight', 'bold');
%% Plot
    % Order for legend
    plot(IXFB70N100X(:,1), IXFB70N100X(:,2), 'r')
    plot(C3M0016120D(:,1),C3M0016120D(:,2), 'b')
    plot(UJ3C120070K3S(:,1), UJ3C120070K3S(:,2), 'Color', [1 0 1])
    % Si Devices
    plot(APT28M120B2(:,1),APT28M120B2(:,2), 'r')
    plot(IXFN32N120P(:,1), IXFN32N120P(:,2), 'r')
    plot(APT34M120J(:,1),APT34M120J(:,2), 'r')
    plot(IXFB30N120P(:,1), IXFB30N120P(:,2), 'r')
    plot(IXFT16N120P(:,1), IXFT16N120P(:,2), 'r')
    plot(IXF52N100X(:,1), IXF52N100X(:,2), 'r')
    %SiC and Cascode Devices
    plot(NVHL020N120SC1(:,1), NVHL020N120SC1(:,2), 'b')
    plot(MSC025SMA120B(:,1), MSC025SMA120B(:,2),'b')
    plot(IMW120R030M1H(:,1),IMW120R030M1H(:,2), 'b')
    plot(C3M0032120D(:,1), C3M0032120D(:,2), 'b')
    plot(LSIC1MO120E0080(:,1), LSIC1MO120E0080(:,2), 'b')
    plot(c2m0080120d(:,1),c2m0080120d(:,2), 'b')
    plot(NTHL080N120SC1(:,1), NTHL080N120SC1(:,2), 'b')
    plot(MSC080SMA120J(:,1), MSC080SMA120J(:,2), 'b')
    plot(MSC025SMA120S(:,1), MSC025SMA120S(:,2), 'b')
    plot(NTBG040N120SC1(:,1), NTBG040N120SC1(:,2), 'b')
    plot(NVBG160N120SC1(:,1), NVBG160N120SC1(:,2), 'b')
    plot(C3M0065100K(:,1),C3M0065100K(:,2), 'b')
    plot(C3M0075120J(:,1),C3M0075120J(:,2), 'b')
legend('Si devices', 'SiC devices', 'Cascode devices', 'Location', 'northwest')
