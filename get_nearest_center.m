function [center, peak]=get_nearest_center(X, Y, superlattice)
    [peaks, indices, widths, prominences] = findpeaks(superlattice);
    findpeaks(superlattice);
    disp(size(peaks));
    disp(size(indices));
    disp(size(widths));
    disp(size(prominences));
%     disp([peaks, indices, widths, prominences]);

    [peak,I] = max(superlattice,[],'all');
    center=[X(I), Y(I)];

    
%     view(axes, 0, 90);
%     colormap(axes, "turbo");
     
end 