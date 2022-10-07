function plot_superlattice_interference(axes, X, Y, superlattice, center_resolution, peak)
    minview = peak-center_resolution;
    surf(axes, X,Y,superlattice);
    disp('minview')
    disp(minview)
    zlim(axes, [minview, peak]);
    view(axes, 0, 90);
    colormap(axes, "turbo");
    
     
end


% function plot_superlattice_interference(axes, X, Y, superlattice)
%     subplot(1,2,1, axes);
%     surf(X,Y,superlattice);
%     view(0, 90);
% 
%     superplot(1,2,2);
%     surf(X,Y,superlattice);
% end