function SplineVsCubicHermiteInterpolation()

x = linspace(0,2,100)
y = zeros(size(x))

figure
for i=1:10
    gamma = i * 0.25 - 1

    i0 = x<1
    i1 = x>=1

    y0(i0) = (gamma - 1) * (x(i0).^3 - x(i0).^2) + x(i0) + 1
    y0(i1) = gamma * x(i1).^3 - 5 * gamma * x(i1).^2 + 8 * gamma * x(i1) - 4 * gamma + 2


    y1(i0) = (gamma - 1)*(3 * x(i0).^2 - 2*x(i0)) + 1
    y1(i1) = 3 * gamma * x(i1).^2 - 10 * gamma * x(i1) + 8 * gamma

    y2(i0) = (gamma - 1)*(6*x(i0) - 2)
    y2(i1) = 6 * gamma * x(i1) - 10 * gamma

    subplot(2,5,i)
    plot(x,y0, '-', x,y1,'--', x,y2,':')
    title(strcat('Gamma = ', num2str(gamma)))
end