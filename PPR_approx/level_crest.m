function crest_plane=level_crest(R, X,Y, angle, x_o, y_o)
    crest_plane=R*(cos(pi/(2*R)*X-x_o))^2;
end
