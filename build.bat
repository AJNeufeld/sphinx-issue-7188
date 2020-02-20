@SET HHC="C:\Program Files (x86)\HTML Help Workshop\hhc.exe"

py -3.7 -m pip install --user sphinx==1.8.5
py -3.7 setup.py build_sphinx -b htmlhelp --build-dir build\sphinx-185
%HHC% build\sphinx-185\htmlhelp\issue7188.hhp

py -3.7 -m pip install --user sphinx==2.0.0
py -3.7 setup.py build_sphinx -b htmlhelp --build-dir build\sphinx-200
%HHC% build\sphinx-200\htmlhelp\issue7188.hhp

py -3.7 -m pip install --user sphinx==2.4.2
py -3.7 setup.py build_sphinx -b htmlhelp --build-dir build\sphinx-242
%HHC% build\sphinx-242\htmlhelp\issue7188.hhp

start build\sphinx-185\htmlhelp\issue7188.chm
start build\sphinx-200\htmlhelp\issue7188.chm
start build\sphinx-242\htmlhelp\issue7188.chm
