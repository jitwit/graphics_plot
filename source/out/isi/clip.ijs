NB. clip

NB. =========================================================
NB. isi_clip
NB. following works only in Win32, need to make this
NB. work on other platforms
isi_clip=: 3 : 0
if. -. IFWIN do.
  info 'Save plot to clipboard is only available in Windows'
  return.
end.
f=. gettemp 'emf'
isi_emf dquote f
wd 'clipcopyx enhmetafile ',dquote f
1!:55 <f
)

