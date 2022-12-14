function [nearest_center, central_peak]=get_nearest_center(X, Y, superlattice, last_center)
    [peaks, indices, widths, prominences] = findpeaks(superlattice(:));
%      while size(I)>1
%         I=peaks>(max(peaks)-0.05);
%         widths=widths(I);
%         X=X(indices(I));
%         Y=Y(indices(I));
%     end
    I=peaks>(max(peaks)-0.05);
%     disp(I)
    peaks=peaks(I);
    widths=widths(I);
    X=X(indices(I));
    Y=Y(indices(I));
    disp('X, Y, peaks')
    disp([X Y peaks])
    disp('last center')
    disp(last_center)
%     [x_o, y_o]=last_center;
%     slashed_peaks = peaks-max(peaks-)
    npeaks = (peaks-(max(peaks)-0.05))./(sqrt((X-last_center(1)).^2+(Y-last_center(2)).^2));
%     npeaks = (peaks-(max(peaks)-0.05))./(abs(X-last_center(1))+abs((Y-last_center(2))));

    disp('normalized peaks')
    disp(npeaks)
    [n_central_peak, i] = max(npeaks);
    nearest_center = [X(i) Y(i)];
    disp([X(i) Y(i) peaks(i)]);
%     disp([X(i+1) Y(i+1) peaks(i+1)]);
%     disp([X(i-1) Y(i-1) peaks(i-1)]);
    central_peak=peaks(i);
    disp('nearest center')
    disp(nearest_center)
    disp('peak at nearest center')
    disp(central_peak)

    

% 
%     [peak,I] = max(superlattice,[],'all');
%     center=[X(I), Y(I)];

    
%     view(axes, 0, 90);
%     colormap(axes, "turbo");
     
end 