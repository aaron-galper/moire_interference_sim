function triangular=COB_cart_to_tri(cartesian_vector)
    triangular=[1 1/2
                0 3/sqrt(2)]*cartesian_vector;
%     disp(size(triangular))
%     disp(triangular)
    disp(inv([1 1/2
                0 3/sqrt(2)]))
end