function [X,Y]=get_cartesian_indices(lattice_spacing, tick_size, axis_size)
    ticks=axis_size/tick_size;
    cart_x=tick_size/lattice_spacing*(-ticks:ticks);
    cart_y=tick_size/lattice_spacing*(-ticks:ticks);
    [X,Y] = meshgrid(cart_x, cart_y);
end