function meta_lattice = get_superlattice(misorientation, lattice_spacing, x_o, y_o, X, Y, fourier_degree)%degree
    fixed_map = get_lattice(0, lattice_spacing, 0,0, X,Y, fourier_degree);
    free_map = get_lattice(misorientation, lattice_spacing, x_o,y_o, X,Y, fourier_degree);
    meta_lattice = (fixed_map+free_map)/2;
end



% hole_map = superlattice(0,0,0,1,0.1,50)
% [X,Y,hole_map] = superlattice(0,0,0,1,0.1,50)

