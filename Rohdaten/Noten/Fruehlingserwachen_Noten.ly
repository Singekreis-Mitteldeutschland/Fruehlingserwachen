\layout {
%  #(set! paper-alist (cons '("mein Format" . (cons (* 28 cm) (* 20 cm))) paper-alist))
%  #(set-default-paper-size "mein Format")
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
\paper {
 oddFooterMarkup = \markup{ \fill-line{ \line{" "} } }
}
\header{
  title = "Frühlingserwachen"
  subtitle = "für momo"
 
composer = "Text und Melodie: kachān" 
}

Akkorde = \chords { \time 6/8  \set chordNameLowercaseMinor = ##t  \germanChords
       { 
             \set noChordSymbol = ""
             a2.:m c2. g2. a2.:m \once \set chordChanges = ##f  a2.:m d2.:m
             c2. g2. e2. e1 a1:m c1
             g1 a1:m \once \set chordChanges = ##f  a1:m d1:m c1 g1 a1:m e1
           }
}


\score {
\new ChoirStaff <<
      \Akkorde
\transpose f c'
    \new Staff {
      \new Voice = "melody" {
\relative c {\key c\major  \time 3/4
    \repeat volta 2 {a'2 b4 c2 c4 d4 c4 b4} \alternative{ { a2 e4 } {a4 r4 e'4}} f4 e4 d4
    c4 c4 c4 b4 b4 b4 e2 r4\bar "||"  
 \time 2/2          \tempo \markup {
    \concat { \smaller \general-align #Y #DOWN \note #"4" #1 " = " \smaller \general-align #Y #DOWN \note #"4" #1     }}
e2 e2 \repeat volta 2 { a,4 a2 b4 c4 c2 c4
                                      d4 c2 b4}
    \alternative{ {a2. e4} { a4 r4 e'4 e4 } }
    \repeat volta 2 {f4 e2 d4 c4 c2 c4 b4 b2 b4} \alternative{{ a2 r4 e'4} {e2 r2}}\bar"|."
}


      }
    }
      \addlyrics {
    \set stanza = "1. " Wenn die er -- sten Blü -- ten sich öff -- nen "" 
    die Schnee -- häub -- chen schmel -- zend die Zeit nicht mehr steht.
    Dann er -- wacht uns' -- re Mo -- mo, die Welt färbt sich bunt, sie ""
    Dann er -- wacht uns' -- re Mo -- mo, die Welt färbt sich bunt, sie
  }
  \addlyrics{
    und der Wind __ "" lei -- "" -- se "" "" weht, "" "" "" ""
    "" "" "" "" "" "" "" "" "" streckt ih -- re Glie -- der und
    tanzt ei -- ne "" "" Rund' "" "" streckt ih -- re Glie -- der und tanzt ei -- ne "" "" Rund'.
  }



        
  >>
}
