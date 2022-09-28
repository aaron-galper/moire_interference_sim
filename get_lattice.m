function distance_map=get_lattice(misorientation, lattice_spacing, x_o, y_o, X,Y)
    distance_map = zeros(size(X));
    for edge=1:3
        level_surface = edge_level_plane(edge*pi/3+misorientation, lattice_spacing, x_o, y_o, X,Y);
        distance_map = distance_map + level_surface;
%         disp(mean(distance_map, 'all'));
    distance_map=distance_map/3;
    end
end