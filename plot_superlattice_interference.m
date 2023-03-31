function plot_superlattice_interference(axes, X, Y, superlattice, peak)
    minview=0;
    surf(axes, X,Y,superlattice);
    zlim(axes, [minview, peak]);
    view(axes, 0, 90);
    colormap(axes, get_bwscale());
end

function bwscale=get_bwscale()
bwscale=[0 0 0
0 0 0
0 0 0
0.2 0.2 0.2
0.3 0.3 0.3
0.5 0.5 0.5
0.75 0.75 0.75
1 1 1];
end

% function plot_superlattice_interference(axes, X, Y, superlattice)
%     subplot(1,2,1, axes);
%     surf(X,Y,superlattice);
%     view(0, 90);
% 
%     superplot(1,2,2);
%     surf(X,Y,superlattice);
% end