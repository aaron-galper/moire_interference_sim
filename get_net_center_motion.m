function get_net_center_motion(X, Y, superlattice, ml_param, misorientation, x_shift, y_shift)
    x_o=0;
    y_o=0;
    


    k=boundary(X(:), Y(:));
    disp(k);
    disp('size of k')
    disp(size(k))
    boundary_len = size(superlattice(1));

    U_bound = k(1:boundary_len);
    R_bound = k(boundary_len+1:2*boundary_len);
    D_bound = k(2*boundary_len+1:3*boundary_len);
    L_bound = k(3*boundary_len+1:4*boundary_len);
    step=0.1*ml_param;
    total_steps=0
    while total_steps<ml_param*2
        U_flux = U_flux + sum(superlattice(U_bound));
        R_flux = R_flux + sum(superlattice(R_bound));
        D_flux = D_flux + sum(superlattice(D_bound));
        L_flux = L_flux + sum(superlattice(L_bound));

    disp('U_flux')
    disp(U_flux)
    disp('R_flux')
    disp(R_flux)

    disp('D_flux')
    disp(D_flux)
    disp('L_flux')
    disp(L_flux)

    tot=sum(sum(superlattice));
    disp(tot)
end