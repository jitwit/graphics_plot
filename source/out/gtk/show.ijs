NB. show

NB. =========================================================
gtk_show=: 3 : 0
initplotgtk''
gtkinit''
newwindow 'graph'
locGB=: 540 400 conew 'jgtkgraph'
coinsert__locGB coname''
gtk_container_add window,gtkbox__locGB
windowfinish''
gtk_main ''
)

NB. =========================================================
NB. this is the main drawing program
paint=: 3 : 0
'Cw Ch'=: glqwh''
make iGTK;gtkxywh
glclipreset''
ids=. 1 {"1 Plot
fns=. 'gtk'&, each ids
dat=. 3 }."1 Plot
for_d. dat do.
  (>d_index{fns)~d
end.
glpaint''
)

window_delete=: 0:

