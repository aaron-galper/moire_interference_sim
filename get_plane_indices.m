function [X,Y]=get_plane_indices(lattice_spacing, tick_size, axis_size)
    ticks=axis_size/tick_size;
    [X,Y] = meshgrid(tick_size/lattice_spacing*(-ticks:ticks), tick_size/lattice_spacing*(-ticks:ticks));
end