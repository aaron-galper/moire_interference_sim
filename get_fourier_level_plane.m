function fourier_level_plane = get_fourier_level_plane(theta, lattice_spacing, x_o, y_o, X,Y, degree)
    fourier_level_plane = zeros(size(X));
    for n=1:2:degree*2
        fourier_level_plane=fourier_level_plane + ((-1)^((n-1)/2))/n^2*sin(pi/lattice_spacing*(cos(theta)*(X-x_o)+sin(theta)*(Y-y_o)));
        disp(fourier_level_plane);
    end
end
