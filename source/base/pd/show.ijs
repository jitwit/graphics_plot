NB. pd show commands

pd_eps=: eps_show
pd_gtk=: gtk_show
pd_isi=: isi_show
pd_pdf=: pdf_show
pd_pdfr=: pdf_get
pd_jpf=: pdf_jpf

pd_clip=: 3 : 0
if. Poutput e. _1,iGTK do.
  if. IFGTK do.
    gtk_clip__locGB y
  else.
    gtk_clip y
  end.
else.
  isi_clip y
end.
)

pd_print=: 3 : 0
if. Poutput e. _1,iGTK do.
  if. IFGTK do.
    gtk_print__locGB y
  else.
    gtk_print y
  end.
else.
  isi_print y
end.
)

pd_save=: 3 : 0
if. Poutput e. _1,iGTK do.
  if. IFGTK do.
    gtk_save__locGB y
  else.
    gtk_save y
  end.
else.
  isi_save y
end.
)

pd_get=: 3 : 0
if. Poutput e. _1,iGTK do.
  if. IFGTK do.
    gtk_get__locGB y
  else.
    gtk_get y
  end.
else.
  isi_get y
end.
)

NB. =========================================================
pd_show=: 3 : 0
ndx=. ({."1 PCmd) i. <'output'
if. ndx < #PCmd do.
  OUTPUT=: 1 pick ndx{PCmd
end.
out=. dlb OUTPUT
fn=. 'pd_', tolower ' ' taketo out
arg=. ' ' takeafter out
fn~arg
EMPTY
)

