#> tusb_remake:area/portal/cloudia/hallo_work/open
### 職業島へのワープ開放

data modify storage tusb_remake: portal_name set value "職業島"
data modify storage tusb_remake: portal.cloudia.hallo_work set value true
execute positioned -2479 3 -129 run function tusb_remake:area/portal/open
