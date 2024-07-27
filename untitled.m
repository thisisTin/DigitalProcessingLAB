clear all
clc
close all
fs=2000;

bps = 3;  % Bit trên mỗi ký hiệu 
M = 2^bps; % Thứ tự điều chế  
dpskmod = comm.DPSKModulator(M, pi/8, BitInput=true);
dpskdemod = comm.DPSKDemodulator(M, pi/8, BitOutput=true);
errorRate = comm.ErrorRate(ComputationDelay=1);
numframes = 100; % Số khung
spf = 150;       % Số ký hiệu trên mỗi khung

EbN0dB = -2:2:12; % Dải giá trị Eb/N0 (dB)
ber = zeros(1, length(EbN0dB)); 	% Mảng chứa tỷ lệ lỗi bit
for i = 1:length(EbN0dB) 		% Vẽ đường tỷ lệ lỗi bit theo Eb/N0
    errorRate = comm.ErrorRate(ComputationDelay=1);
    snr = convertSNR(EbN0dB(i), "ebno", "snr", BitsPerSymbol=bps);
    
    for counter = 1:numframes
        txData = randi([0 1], spf, 1);
        modSig = dpskmod(txData);
        if counter == 1 && i == 1 	% Biểu đồ chòm sao của tín hiệu điều chế
            figure;
            scatter(real(modSig), imag(modSig), '.');
            xlabel('Thành phần thực');
            ylabel('Thành phần ảo');
            title('Biểu đồ chòm sao của tín hiệu điều chế tại máy phát');
            axis equal;
            grid on;
        end
        rxSig = awgn(modSig, snr, 'measured');
        rxData = dpskdemod(rxSig);
        errorStats = errorRate(txData, rxData);
        
        % Lấy mẫu đúng của tín hiệu giải điều chế
        rxData = rxData(1:spf); 		% Chỉ lấy spf mẫu
    end
    ber(i) = errorStats(1);
end
figure; 			% **2. Vẽ đường tỷ lệ lỗi bit theo Eb/N0**
plot(EbN0dB, ber, '-o');
xlabel('Eb/N0 (dB)');
ylabel('Tỷ lệ lỗi bit (BER)');
title('Đường tỷ lệ lỗi bit theo Eb/N0');
grid on;
figure
mau=50;
mau1=200;
%tin hieu nhan duoc sau dieu che khi FFT
x1=fft(rxData,mau);
x1=fftshift(x1);
f1=-fs/2:fs/mau:fs/2-fs/mau;
%tin hieu nhan duoc khi FFT
n_de=0:1/fs:(1/fs)*(mau-1);
x_de=rxSig(1:1/fs:length(n_de));
x2=fft(x_de,mau);
x2=fftshift(x2);

fc=500; 			%tin hieu song mang khi FFT
nc=0:1/fs:(1/fs)*(mau1-1);
c_n=cos(2*pi*fc*nc);
x3=fft(c_n,mau1);
x3=fftshift(x3);
f2=-fs/2:fs/mau1:fs/2-fs/mau1;
n_dc=0:1/fs:(1/fs)*(mau-1); 		%tin hieu dieu che
dieuche=modSig(1:1/fs:length(n_dc));
x4=fft(dieuche,mau);
x4=fftshift(x4);
