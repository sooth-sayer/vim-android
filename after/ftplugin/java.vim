if gradle#isGradleProject() && exists("g:vim_android_gradle_autosync") && g:vim_android_gradle_autosync
  call gradle#sync()
endif

silent! call javacomplete#SetClassPath($CLASSPATH)
silent! call javacomplete#SetSourcePath($SRCPATH)

if exists(":JCstart")
  let $CLASSPATH = g:JavaComplete_LibsPath
  let $SRCPATH = g:JavaComplete_SourcesPath
endif

let g:syntastic_java_javac_classpath = $CLASSPATH . ":" . $SRCPATH
