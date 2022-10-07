function center=track_nearest_center(X, Y, superlattice, last_center)
    [peaks,centers]=maxk(superlattice, 7); % by pigeonhole principle there can be no more than 7 centers in a square with radius 1
    centers=distances()

end