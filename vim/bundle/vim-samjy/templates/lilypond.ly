% -*- coding: utf8 -*-

\version "2.12.3"

\header {
  title = ""
  % composer = ":D"
  % opus = "Op 0.1"
  tagline = ""
}


global = {
  \key g \major
  \time 4/4
  \tempo 4=80
}

\music = \relative c {
}

\score {
  <<
    \global
    \new Voice = "one" \music
  >>

  \layout {
    \context {
      % a little smaller so lyrics
      % can be closer to the staff
      \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
    }
  }
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"      
    }

    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}

%EOF

