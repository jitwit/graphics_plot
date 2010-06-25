NB. standard plot defaults
NB.
NB. builds a noun PlotDefaults that is run for each plot. You
NB. can override these definitions by creating a script in your
NB. config directory: ~config/plotdefs.ijs, and enter any changed
NB. default options.
NB.
NB. For example, to default to axes without frames or grids, enter the
NB. following into your plotdefs.ijs script:
NB.
NB. AXES=: 1
NB. FRAME=: 0
NB. GRIDS=: 0
NB.
NB. Note: names for global nouns defined in this script must be
NB. uppercase only. Plot does not use uppercase names in the
NB. code, therefore names defined here cannot conflict with it.

NB. =========================================================
NB. defaults same for all platforms:
all=. 0 : 0
ASPECT=: 0
AXES=: 0
AXISCOLOR=: BLACK
BACKCOLOR=: WHITE
BANDCOLOR=: RGCLR
BARWIDTH=: 0.75 NB. width of bars in barchart (0-1)
BORDER=: 0
BORDERSIZE=: 8
BOXED=: 1
CAPTIONCOLOR=: BLACK
CLEAR=: 1
CONTOURLEVELS=: 20
EDGECOLOR=: BLACK
EDGESIZE=: 1 NB. polygons etc
FORECOLOR=: BLACK
FONTSCALE=: 0.75 NB. 72%96
FRAME=: 1
FRAMEBACKCOLOR=: '' NB. color of frame background (if different from BACKCOLOR)
FRAMESTYLE=: '' NB. 'in|out', default choose from graph type
GRAPHBACKCOLOR=: '' NB. color of graph background (if different from BACKCOLOR)
GRIDCOLOR=: SILVER
GRIDPATTERN=: 1 0 0 NB. series of 1's followed by 0's
GRIDS=: 1
GUIDESIZE=: 1 NB. axes, grids, frame
ITEMCOLOR=: STDCLR
KEY=: ''
KEYCOLOR=: ''   NB. color of keys, default itemcolor. Text uses labelcolor.
KEYMARKERS=: '' NB. names, or numeric indices into KeyMarkerNames
KEYPOS=: ''     NB. left|right top|bottom inside|outside (lti)
KEYSTYLE=: ''   NB. left|right boxed horizontal|vertical (lbv)
KEYTITLE=: ''
LABELCOLOR=: BLACK
LABELS=: 1
MARKERS=: '' NB. names, or numeric indices into MarkerNames
MARKERSIZE=: 1 NB. marker size
MESH=: 1
ORIENTATION=: 2
ORIGINXLABEL=: 0 NB. if show zero label at origin
PENPATTERN=: 1 0;12 6;2 4;12 6 2 4;12 6 2 4 2 4
PENSIZE=: 1 NB. line drawing except for guides and edges
PENSTYLE=: 0
PIEPERCENT=: 0 NB. if label pie with percents
PLOTCAPTION=: 'Plot'
POLAR=: 0
PRINTMARGIN=: 1440 NB. margins in twips (left,top,right,bottom)
PRINTWINDOW=: '' NB. print window
PSHOW=: '' NB. default style for pshow
RTIC=: ''
RULECOLOR=: BLACK
RULESIZE=: 1
SEPARATOR=: '|'
SHOWBOXES=: 0 NB. if show boxes (for debugging)
SINGTOLER=: 10
SUBTITLE=: '' NB. not used yet
SUBTITLECOLOR=: BLACK
SUBTITLESTYLE=: ''
SYMBOLCOLOR=: BLACK
SYMBOLS=: '■▲▼♣♦♥♠'
TEXTCOLOR=: BLACK
TICMAJOR=: 7
TICMINOR=: 4
TICS=: 1
TICSTYLE=: '' NB. in|out default in
TITLE=: ''
TITLECOLOR=: BLACK
TITLESTYLE=: ''
TYPE=: ''
VIEWCENTER=: 0 0 0
VIEWPOINT=: 1.6 _2.4 1.5
VIEWSIZE=: 1 1 0.5
VIEWUP=: 0 0 1
VISIBLE=: 1
XCAPTION=: ''
XCAPTIONSTYLE=: ''
XFUNCRES=: ''
XGRIDPATTERN=: 3 5
XINT=: ''
XLABEL=: ''
XLABELSTYLE=: ''
XLOG=: 0
XRANGE=: ''
XGROUP=: ''
XTIC=: ''
XTICPOS=: ''
Y2AXIS=: '0'
YCAPTION=: ''
YCAPTIONSTYLE=: ''
YFUNCRES=: ''
YGRIDPATTERN=: 3 5
YINT=: ''
YLABEL=: ''
YLABELSTYLE=: ''
YLOG=: 0
YRANGE=: ''
YGROUP=: ''
YTIC=: ''
YTICPOS=: ''
Y2CAPTION=: ''
Y2CAPTIONSTYLE=: ''
Y2LABEL=: ''
Y2LABELSTYLE=: ''
Y2LOG=: 0
Y2RANGE=: ''
Y2TIC=: ''
Y2TICPOS=: ''
ZCAPTIONSTYLE=: ''
ZGRIDPATTERN=: 3 5
ZINT=: ''
ZLABEL=: ''
ZLABELSTYLE=: ''
ZLOG=: 0
ZRANGE=: ''
ZGROUP=: ''
ZTIC=: ''
ZTICPOS=: ''
)

NB. =========================================================
NB. add system specific definitions:
w32=. 0 : 0
CAPTIONFONT=: 'Arial 13'
KEYFONT=: 'Arial 9'
LABELFONT=: 'Arial 9'
SYMBOLFONT=: 'Arial 9'
TEXTFONT=: 'Arial 13'
SUBTITLEFONT=: 'Arial 14'
TITLEFONT=: 'Arial 15'
)

unx=. 0 : 0
CAPTIONFONT=: 'sansserif 13'
KEYFONT=: 'sansserif 10'
LABELFONT=: 'sansserif 10'
SYMBOLFONT=: 'monospaced 10'
TEXTFONT=: 'sansserif 13'
SUBTITLEFONT=: 'sansserif 14'
TITLEFONT=: 'sansserif 15'
)

all=. all, IFWIN pick unx;w32

NB. =========================================================
PlotDefaults=: 3 : 0 all
IFJ7_z_=: 700 < 0 ". ({. ~i.&'/') }.9!:14''
if. IFJ7 do.
  r=. 'OUTPUT=: ''gtk'''
else.
  if. IFCONSOLE do.
    if. UNAME -: 'Linux' do.
      r=. 'OUTPUT=: ''gtk'''
    else.
      r=. 'OUTPUT=: ''pdf'''
    end.
  else.
    r=. 'OUTPUT=: ''isi'''
  end.
end.
y,r,LF
)

