function [X,Y]=get_plane_indices(lattice_spacing, tick_size, ticks)
    [X,Y] = meshgrid(tick_size/lattice_spacing*(-ticks:ticks), tick_size/lattice_spacing*(-ticks:ticks));
end