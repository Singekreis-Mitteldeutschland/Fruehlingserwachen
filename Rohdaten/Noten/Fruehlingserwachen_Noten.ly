%\version "2.20.0"

\layout {
  indent = #0	%bewirkt, dass die erste Notenzeile nicht eingerückt ist
  \context {				
    \Score				%verhindert, dass Taktangaben gemacht werden
    \remove "Bar_number_engraver"	% -:-
  }
}

\paper {
 oddFooterMarkup = \markup{ \fill-line{ \line{" "} } }	%verhindert die LilyPond-Fußzeile
}

\header {
  title =  \markup {
    \epsfile #X #40 #"../Bilder/Ueberschrift.eps"
}			
  composer =  "Text und Melodie: kachān (im Frühjahr 2020)"}
  arranger =  "für momo"
}

\score {
<<
\chords {
  \time 3/4  %Taktart
  \set chordNameLowercaseMinor = ##t  %setzt bei Moll-Akkorden statt Dm d
  \germanChords	%Deutsche Akkordform (H, B...)
  \repeat volta 2 {a2.:m | c | g}
  \alternative { {a:m} {a:m} }
  d:m | c | g | e |
  
  \time 2/2
  s1 | \repeat volta 2 {a:m | c | g}
  \alternative { {a:m} {a:m} }
  \repeat volta 2 {d:m | c | g }
  \alternative { {a:m} {e} }
}

\relative  {
  \key c \major 	%Tonart
  \time3/4		%Taktart
  \repeat volta 2 {a'2 b4 c2 c4 d4 c4 b4} 
  \alternative{ { a2 e4 } {a4 r4 e'4}} f4 e4 d4
  c4 c4 c4 b4 b4 b4 e2 r4\bar "||"  

  \time 2/2
  e2 e2 \repeat volta 2 { a,4 a2 b4 c4 c2 c4 d4 c2 b4}
   \alternative{ {a2. e4} { a4 r4 e'4 e4 } }
   \repeat volta 2 {f4 e2 d4 c4 c2 c4 b4 b2 b4} \alternative{{ a2 r4 e'4} {e2 r2}}\bar"|."
} 


\addlyrics  {\large 	%vergrößert die Schrift (und Noten?)  
             %\override Score.LyricText #'font-family = #'sans	%Schriftart
  \set stanza = #"1." Wenn die er -- sten Blü -- ten sich öff -- nen 
    "" die Schnee -- häub -- chen schmel -- zen, die Zeit nicht mehr steht.
    Dann er -- wacht un -- s're Mo -- mo, die Welt färbt sich bunt, sie ""
    Dann er -- wacht un -- s're Mo -- mo, die Welt färbt sich bunt, sie ""
}
\addlyrics {\large 
            und der Wind __"" lei -- _ se "" "" weht, "" "" "" ""
    "" "" "" "" "" "" "" "" "" streckt ih -- re Glie -- der und
    tanzt ei -- ne "" "" Rund' "" "" streckt ih -- re Glie -- der und tanzt ei -- ne "" "" Rund'.
}
>>
}
