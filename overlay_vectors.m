function overlay_vectors(axes, center, last_center, x_o, y_o, misorientation, peak, axis_size)
    disp('axis size')
    disp(axis_size)
    translation_v=[x_o y_o];
    translation_v=axis_size*(translation_v./norm(translation_v));
    
%     quiver(axes, 0,0, translation_v(1), translation_v(2), "Color", [1 0 0], "DisplayName", 'Translation');
%     quiver3(axes, 0,0,peak, translation_v(1), translation_v(2),0, 'r', "DisplayName", 'Translation');
%     hold(axes, "on")
    misorientation_v=axis_size*[cos(misorientation) sin(misorientation)];
%     quiver(axes, 0,0, misorientation_v(1), misorientation_v(2), "Color", [0 1 0], 'DisplayName','Misorientation');
%     quiver3(axes, 0,0,peak, misorientation_v(1), misorientation_v(2),0, 'g', 'DisplayName','Misorientation');
    
%     center_v=axis_size*(center./norm(center));
    center_v=center;
%     quiver(axes,0,0, center_v(1),center_v(2), "Color", [0 0 1], 'DisplayName','Nearest Center');
    quiver3(axes,0,0,peak, center_v(1),center_v(2),0, 'b', 'DisplayName','Nearest Center');
    
    quiver3(axes,0,0,peak, last_center(1), last_center(2),0, 'p', 'DisplayName','last center');
    quiver3(axes,last_center(1), last_center(2),peak, center_v(1)-last_center(1),center_v(2)-last_center(2),0, 'black', 'DisplayName','movement of center');
    
    disp('misorientation')
    disp(misorientation)
    ml_param=(1+cos(misorientation))/(sqrt(3)*sin(misorientation));
    disp('ml_param')
    disp(ml_param)
    ml_spacing=1/2*sqrt(3*ml_param^2+1);
    disp('ml_spacing')
    disp(ml_spacing)
    quiver3(axes, center_v(1), center_v(2),peak, ml_spacing,0,0, 'r', 'DisplayName','metalattice spacing', LineWidth=2);
    legend(axes, '', 'Nearest Center','last center','center movement', 'ml param','Location','south');

%     legend(axes, '','Translation','Misorientation','Nearest Center','last center','center movement','Location','south')

end



