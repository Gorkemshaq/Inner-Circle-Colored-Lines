% Çember yayının merkezi ve yarıçapı
center = [0, 0];
radius = 5;



plot(x_circle, y_circle, 'LineWidth',2); 
hold on;
axis equal;
axis off;
set(gcf, 'Color', 'k');


% Rastgele 2 nokta seç
num_points = 131;
for i = 1:num_points
    % Rastgele açı seç
    angle = rand()*2*pi;
    
    % Rastgele noktaları çember yayı üzerinde belirle
    x1 = center(1) + radius * cos(angle);
    y1 = center(2) + radius * sin(angle);
    x2 = center(1) + radius * cos(angle + pi);
    y2 = center(2) + radius * sin(angle + pi);
    
    % Rastgele renk seç
    turbo_colors = turbo(num_points);
    line_color = turbo_colors(i,:) % Rastgele RGB renk vektörü
    
    % Noktaları birleştiren doğruyu çiz
    plot([x1, x2], [y1, y2], 'Color', line_color);
end

xlabel('X ekseni');
ylabel('Y ekseni');
title('Çember Yayı Üzerinde Rastgele Renklerde Çizgiler');
