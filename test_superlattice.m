lattice_spacing=1;
tick_size=lattice_spacing/4;
ticks=100;
misorientation=pi/7;
x_o=32;
y_o=14;

[X,Y]=get_plane_indices(lattice_spacing, tick_size, ticks);
disp(size(fixed_map));
metalattice = get_superlattice(misorientation, lattice_spacing, x_o, y_o, X, Y);

interference_plot = plot_superlattice_interference(X,Y,metalattice);
% set(s,'zscale','log');


