function overlay_vectors(axes, center, x_o, y_o, misorientation, peak)
%     
%     [peak,I] = max(superlattice,[],'all');
%     center = [X(I), Y(I)];
%     [M, I]=maxk(superlattice, 10);
%     disp(M,I);
%     normalized_maxes=[]
%     for i=1:size(I)
%         normalized_maxes[i]=M(i)/X(I)
    
    translation_v=[x_o y_o];
    translation_v=translation_v./norm(translation_v);
    
%     quiver(axes, 0,0, translation_v(1), translation_v(2), "Color", [1 0 0], "DisplayName", 'Translation');
    quiver3(axes, 0,0,peak+1, translation_v(1), translation_v(2),peak+1, "Color", [1 0 0], "DisplayName", 'Translation');
    hold(axes, "on")
    misorientation_v=[cos(misorientation) sin(misorientation)];
%     quiver(axes, 0,0, misorientation_v(1), misorientation_v(2), "Color", [0 1 0], 'DisplayName','Misorientation');
    quiver3(axes, 0,0,peak+1, misorientation_v(1), misorientation_v(2),peak+1, "Color", [0 1 0], 'DisplayName','Misorientation');
    
    center_v=center./norm(center);
%     quiver(axes,0,0, center_v(1),center_v(2), "Color", [0 0 1], 'DisplayName','Nearest Center');
    quiver3(axes,0,0,peak+1, center_v(1),center_v(2),peak+1, "Color", [0 0 1], 'DisplayName','Nearest Center');
    
    

    legend(axes,'Location','south')
%     tails_X = [0 0 0];
%     tails_Y = [0 0 0];
%     heads_X = [center_v(1) translation_v(1) misorientation_v(1)];
%     heads_Y = [center_v(2) translation_v(2) misorientation_v(2)];
%     quiver(axes, tails_X, tails_Y, heads_X, heads_Y, "Color", [1 0 0]);
%     quiver(axes, 0,0, ...
%         cos(misorientation), sin(misorientation));
%     quiver(axes, 0,0, ...
%         x_o, y_o);
    
%     peak_strength_difference = peak-last_peak;
end



