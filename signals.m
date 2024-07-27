M = [4, 8, 16];
for i = 1:length(M)
    modulation = sprintf('dpskmod(randi([0,%d],10000,1),%d)', M(i)-1, M(i));
    tx_signal = eval(modulation);
    scatterplot(tx_signal);
    title(sprintf('Signal Constellation for M = %d', M(i)));
    grid on;
    pause;
end