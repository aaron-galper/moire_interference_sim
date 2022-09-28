function edge_distance_map=edge_level_plane(theta, lattice_spacing, x_o, y_o, X,Y) 
    edge_distance_map = lattice_spacing/2*sin(pi/lattice_spacing*(cos(theta)*(X-x_o)+sin(theta)*(Y-y_o))); %max distance to nearest vertex of equilateral triangle with length lattice_spacing is lattice_spacing/2 for points along an edge.
end