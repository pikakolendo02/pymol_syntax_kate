cd ~/fraser_lab/ACR_review/

set normalize_ccp4_maps, off
bg white
fetch 1sug, closed, async=0
fetch 1t49, open, async=0

set volume_layers, 125
set ray_volume, 1

color orange, closed
color cyan, open
util.cnc

align (open and !resi 179-187), (closed and !resi 179-187)

hide everything

select closed_loop, (resi 178-187 and closed)
select open_loop, (resi 178-187 and open)
show car, *_loop
show lines, (sc. or n. CA) and *_loop

fetch 1sug, closed_map_2fofc, type=2fofc, async=0
fetch 1t49, open_map_2fofc, type=2fofc, async=0

matrix_copy open, open_map_2fofc

set_view (\
     0.201828912,   -0.394193202,    0.896591187,\
     0.625577271,    0.756249785,    0.191670060,\
    -0.753602624,    0.522201478,    0.399232179,\
    -0.000025043,   -0.000015736,  -54.631645203,\
    35.736160278,   24.565471649,   12.465141296,\
    20.505392075,   88.758811951,  -20.000000000 )

volume open_vol, open_map_2fofc, selection=*_loop, carve=1.0
volume closed_vol, closed_map_2fofc, selection=*_loop, carve=1.0
cmd.volume_ramp_new('closed_ramp', [\
     0.90, 1.00, 0.50, 0.00, 0.00, \
     1.00, 1.00, 0.50, 0.00, 0.40, \
     1.10, 1.00, 0.50, 0.00, 0.00, \
     ])
volume_color closed_vol, closed_ramp

cmd.volume_ramp_new('open_ramp', [\
     0.90, 0.00, 1.00, 1.00, 0.00, \
     1.00, 0.00, 1.00, 1.00, 0.40, \
     1.10, 0.00, 1.00, 1.00, 0.00, \
     ])
volume_color open_vol, open_ramp 

cmd.volume_ramp_new('closed_ramp2', [\
     0.01, 1.00, 0.50, 0.00, 0.00, \
     1.25, 1.00, 0.50, 0.00, 0.20, \
     2.50, 1.00, 0.50, 0.00, 0.30, \
     3.00, 1.00, 0.50, 0.00, 0.05, \
    10.00, 1.00, 0.50, 0.00, 0.00, \
     ])
volume_color closed_vol, closed_ramp2

cmd.volume_ramp_new('open_ramp', [\
     0.01, 0.00, 1.00, 1.00, 0.00, \
     1.25, 0.00, 1.00, 1.00, 0.20, \
     2.50, 0.00, 1.00, 1.00, 0.30, \
     3.00, 0.00, 1.00, 1.00, 0.05, \
    10.00, 0.00, 1.00, 1.00, 0.00, \
     ])
volume_color open_vol, open_ramp 