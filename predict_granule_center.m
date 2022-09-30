function center_prediction_vector=predict_granule_center(axes, last_center, center)
%     
%     [peak,I] = max(superlattice,[],'all');
%     center = [X(I), Y(I)];
    center_prediction_vector=center-last_center;
    disp('center_prediction_vector:');
    disp(center_prediction_vector);
    quiver(axes, 0,0, ...
        center_prediction_vector(1), center_prediction_vector(2));
    
%     peak_strength_difference = peak-last_peak;
end



