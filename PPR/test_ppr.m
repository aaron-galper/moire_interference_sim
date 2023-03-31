s=7;
R=1;
ts=0.11*R;
% [X,Y]=get_plane_indices(R, ts, s);
[X,Y]=get_cartesian_indices(R,ts, s);
[a,b]=get_triangular_indices(R,ts, s);
[bar_a, bar_b]=distance_modulo_particle_core(R,X,Y);
d=sqrt(bar_a.^2+bar_b.^2);
% disp(size(X));
% disp(size(bar_d))
% d=reshape(bar_d, size(X));
% bar_d=reshape(bar_d, size(X));
d=reshape(d, size(X));
ppr=particle_presence_map(R, d);
t_ppr=translate(X,Y,ppr);

% cart=COB_tri_to_cart([a;b]);
surf(X,Y,ppr)
% view(0,90)
zlim([-s,s])
xlim([-s,s])
ylim([-s,s])
colormap(winter)