function edge_distance_map=edge_level_plane(theta, lattice_spacing, x_o, y_o, X,Y, fourier_degree)
    edge_distance_map = lattice_spacing/2*cos(2*pi/lattice_spacing*(cos(theta)*(X-x_o)+sin(theta)*(Y-y_o))); %max distance to nearest vertex of equilateral triangle with length lattice_spacing is lattice_spacing/2 for points along an edge.
    if fourier_degree>1
        for n=1:2:fourier_degree*2
            fourier_level_plane = ((-1)^((n-1)/2))/n^2*cos(2*pi/lattice_spacing*(cos(theta)*(X-x_o)+sin(theta)*(Y-y_o)));
            edge_distance_map=edge_distance_map+fourier_level_plane;
        end
        edge_distance_map=edge_distance_map/fourier_degree;
    end
end