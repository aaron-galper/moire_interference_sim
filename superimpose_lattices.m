function superlattice=superimpose_lattices(latticeL)
    superlattice = zeros(size(latticeL(1)));
    for i=1:size(latticeL)
        superlattice=supperlatice+latticeL(i);
    end
    superlattice=superlattice/size(latticeL);
end





