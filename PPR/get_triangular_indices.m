function [A,B]=get_triangular_indices(lattice_spacing, tick_size, axis_size)
    ticks=axis_size/tick_size;
    cart_x=tick_size/lattice_spacing*(-ticks:ticks);
    cart_y=tick_size/lattice_spacing*(-ticks:ticks);
    triangular = COB_cart_to_tri([cart_x;cart_y]);
    disp(size(triangular))
    [A,B] = meshgrid(triangular(1,:), triangular(2,:));
end

% function [X,Y]=get_triangular_indices(lattice_spacing, tick_size, axis_size)
% %     tri_axis_size=COB_cart_to_tri([axis_size;axis_size]);
%     ticks=tri_axis_size/tick_size;
%     disp('new')
%     disp(tri_axis_size)
%     disp(ticks)
%     disp(ticks(1))
%     disp(ticks(2))
%     cart_x=tick_size/lattice_spacing*(-ticks(1):ticks(1));
%     cart_y=tick_size/lattice_spacing*(-ticks(2):ticks(2));
% %     disp(size([cart_x;cart_y]))
%     triangular = COB_cart_to_tri([cart_x;cart_y]);
%     disp(size(triangular))
%     [X,Y] = meshgrid(triangular(1,:), triangular(2,:));
% end