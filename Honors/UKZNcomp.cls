 \NeedsTeXFormat{LaTeX2e}
 \ProvidesClass{UKZNcomp}[2011/02/15 UKZN Computer Science Theses and Dissertations]

% The UKZNcomp class is for producing theses and dissertations
% that meet the UKZN requirements.
% Based on BYU Physics Dept.
% Revision: Feb 2011
% Revision History
%   07-15-2010 : BYU, Cleaned up page definitions
%   12-09-2009 : Updated to new BYU style, without signature pages.
%   15-02-2011 : Converted to UKZN style, with plagiarism decl and signature pages.

% Declare some variables to hold the text fields for the preliminary pages

    \newcommand{\Title}[1]{\gdef\UKZNField@Title{#1}}
    \newcommand{\Author}[1]{\gdef\UKZNField@Author{#1}}
    \newcommand{\StudentNumber}[1]{\gdef\UKZNField@StudentNumber{#1}}
    \newcommand{\docname}[1]{\gdef\UKZNField@DocName{#1}}
    \newcommand{\degree}[1]{\gdef\UKZNField@Degree{#1}}
    \newcommand{\Supervisor}[1]{\gdef\UKZNField@Supervisor{#1}}
    \newcommand{\SupervisorTitle}[1]{\gdef\UKZNField@SupervisorTitle{#1}}
    \newcommand{\CoSupervisor}[1]{\gdef\UKZNField@CoSupervisor{#1}}
    \newcommand{\CoSupervisorTitle}[1]{\gdef\UKZNField@CoSupervisorTitle{#1}}
    \newcommand{\MemberA}[1]{\gdef\UKZNField@MemberA{#1}}
    \newcommand{\MemberB}[1]{\gdef\UKZNField@MemberB{#1}}
    \newcommand{\MemberC}[1]{\gdef\UKZNField@MemberC{#1}}
    \newcommand{\MemberD}[1]{\gdef\UKZNField@MemberD{#1}}
    \newcommand{\Month}[1]{\gdef\UKZNField@Month{#1}}
    \newcommand{\Year}[1]{\gdef\UKZNField@Year{#1}}
    \newcommand{\Abstract}[1]{\gdef\UKZNField@Abstract{#1}}
    \newcommand{\Acknowledgments}[1]{\gdef\UKZNField@Acknowledgments{#1}}
    \newcommand{\HonorsRepresentative}[1]{\gdef\UKZNField@HonorsRep{#1}}
     \newcommand{\School}[1]{\gdef\UKZNField@School{#1}}

% Initialize the variables to their default values

    \Title{[Title: Titles Must Be in Mixed Case and May Not Exceed Six Inches on One Line\\
           and Must Be in the Inverted Pyramid Format When\\
           Additional Lines Are Needed]}
    \Author{[Student Name]}
    \StudentNumber{[Student Number]}
    \docname{thesis}
    \degree{Bachelor of Science, Honours}
    \Supervisor{[Supervisor]}
    \SupervisorTitle{[Title]}
    \CoSupervisor{}
    \CoSupervisorTitle{}
    \Month{[Graduation Month]}
    \Year{[Year]}
    \Abstract{[The abstract is a summary of the thesis/dissertation with emphasis on the findings
              of the study. The abstract must not exceed 350 words in length and fit on one page,
              single spaced.]}
    \Acknowledgments{[Acknowledgements should be simple, in good taste, and fit on one page]}
    \School{[School of Mathematics, Statistics and Computer Science]}

% Define the preliminary page layouts using the variables

    \newcommand{\UKZNtitlepage}{
        \thispagestyle{empty}
        {\centering
        \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Title Page}{bm:Title}
        \parbox[t]{6in}{
            \renewcommand{\baselinestretch}{2} \small\normalsize
            \centering\UKZNField@Title\par
            \renewcommand{\baselinestretch}{1} \small\normalsize
            }\\[\baselineskip]\par
        \vfill
        \UKZNField@Author\\[\baselineskip]
        \UKZNField@StudentNumber\\[\baselineskip]
        \vfill
        A \UKZNField@DocName~submitted to \\
        the University of KwaZulu-Natal, \\
        College of Agriculture, Engineering and Science, \\
        in partial fulfilment of the requirements for the degree of \\[\baselineskip]
        \UKZNField@Degree \\
        \vfill
        Supervisor: \UKZNField@SupervisorTitle \UKZNField@Supervisor \\
        %Co-Supervisor: \UKZNField@CoSupervisorTitle \UKZNField@CoSupervisor \\
        \vfill
         \UKZNField@School\\[\baselineskip]
        University of KwaZulu-Natal\\[\baselineskip]
        \mbox{\UKZNField@Month~\UKZNField@Year} \\[\baselineskip]
        \vfill
        Copyright \copyright\ \UKZNField@Year~\UKZNField@Author\\[\baselineskip]
        All Rights Reserved\par
        }
        \clearpage
      }
      
       \newcommand{\declarationpage}{
        \thispagestyle{empty}
        
        I, \UKZNField@Author~, declare that:
        
        \begin{itemize} 

        \item[(i)] The research reported in this \UKZNField@DocName, except where otherwise indicated, is my original research.

        \item[(ii)]    This \UKZNField@DocName~has not been submitted for any degree or examination at any other university.

        \item[(iii)]   This \UKZNField@DocName~does not contain other persons' data, pictures, graphs or other information, unless specifically acknowledged as being sourced from other persons.

        \item[(iv)]    This \UKZNField@DocName~does not contain other persons' writing, unless specifically acknowledged as being sourced from other researchers.  Where other written sources have been quoted, then:

            \begin{itemize}
                \item[a)]  their words have been re-written but the general information attributed to them has been referenced:
                \item[b)]  where their exact words have been used, their writing has been placed inside quotation marks, and referenced.
            \end{itemize}

        \item[(v)] This \UKZNField@DocName~ does not contain text, graphics or tables copied and pasted from the Internet, unless specifically acknowledged, and the source being detailed in the dissertation/thesis and in the References sections.

        \end{itemize}
        \vspace{0.2in}
        \begin{itemize}
        \item[]
        \parbox[b]{2.9in}{
            Candidate: \UKZNField@Author \\[2.0\baselineskip]
            Signature: \hrulefill}
         \end{itemize}
         \vfill
         
        As the candidate's supervisor I agree to the submission of this \UKZNField@DocName~ for examination. \\
        \begin{itemize}
        \item[]
        \parbox[b]{2.9in}{
            Supervisor: \UKZNField@SupervisorTitle~ \UKZNField@Supervisor \\[2.0\baselineskip]
            Signature: \hrulefill}
        \hfill
        \end{itemize}
        
        \clearpage
      }




    \newcommand{\abstractpage}{
        \thispagestyle{empty}
        {\centering
        \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Abstract}{bm:Abstract}
        ABSTRACT\\[1\baselineskip]\par
        \renewcommand{\baselinestretch}{1} \small\normalsize
        \parbox{\textwidth}{\centering\UKZNField@Title}\\[1\baselineskip]\par
        \mbox{\UKZNField@Author}\\
        \UKZNField@School\\
         \mbox{\UKZNField@Degree}\par
        }

        \addtolength{\parskip}{\baselineskip}
        \UKZNField@Abstract\par

        \vfill
        \addtolength{\parskip}{-\baselineskip}


        \clearpage
    }
    


    \newcommand{\acknowledgmentspage}{
        \singlespace
        \thispagestyle{empty}
        {\centering
        \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Acknowledgments}{bm:Acknowledge}
        ACKNOWLEDGMENTS\\[3\baselineskip]
        \par}\par
        \renewcommand{\baselinestretch}{1.66} \small\normalsize%
        \UKZNField@Acknowledgments
        \par\renewcommand{\baselinestretch}{1} \small\normalsize%
        \clearpage
        }

% Allow opt-out on acknowledgments
    \DeclareOption{noacknowlegments}{
      \renewcommand{\acknowledgmentspage}{}
    }



% Define the macro for making preliminary pages
    \newcommand{\makepreliminarypages}{
        %\changepage{0.5in}{}{}{}{}{}{-0.2in}{-0.3in}{}
        \UKZNtitlepage
        \declarationpage
        \abstractpage
        \acknowledgmentspage
        \renewcommand{\clearemptydoublepage}{\cle@remptydoublep@ge}
        %\changepage{-0.5in}{}{}{}{}{}{0.2in}{0.3in}{}
    }


% Define the following class options to specify thesis type
%
%   senior  : Produces the senior thesis preliminary pages (default)
%   masters : Produces the masters thesis preliminary pages
%   phd     : Produces the PhD dissertation preliminary pages
%   honours : Produces the honours thesis preliminary pages

    \DeclareOption{senior}{
        % Don't need anything here because default values
        % were set when we initialized variables
    }

    \DeclareOption{masters}{
      \degree{Master of Computer Science}
      \docname{thesis}
      \SupervisorTitle{Chair}
    }

    \DeclareOption{phd}{
      \degree{Doctor of Philosophy}
      \docname{dissertation}
      \SupervisorTitle{Chair}
    }


    \DeclareOption{honours}{
        \degree{Honours in Computer Science}
        \docname{thesis}
        \SupervisorTitle{Chair}
    }

    \DeclareOption{undergrad}{
        \degree{BSc. (Computer Science)}
        \docname{document}
        \SupervisorTitle{Prof.}
    }
   


% A command to handle single sided preliminary pages in a double sided environment

    % Define the '\clearemptydoublepage' command to clear pages but not number any blank pages inserted.
    \let\cle@rdoublep@ge\cleardoublepage
    \newcommand{\cle@remptydoublep@ge}{
      \clearpage
      \if@twoside
      \ifodd\c@page\else
      \fi\fi
      {\pagestyle{empty}\cle@rdoublep@ge}}
    \newcommand{\clearemptydoublepage}{\cle@remptydoublep@ge}

\DeclareOption{etd}{
    \renewcommand{\clearemptydoublepage}{\clearpage}
    }


% Load the class and needed packages
    \DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
    \ProcessOptions
    \relax
    \LoadClass[letterpaper,12pt]{book}

    %\RequirePackage{changepage}

% A couple of useful macros for students

    % The \singlespace macro switches to single spaced lines
    \newcommand{\singlespace}{\par\renewcommand{\baselinestretch}{1}\small\normalsize\par}

    % The \doublespace macro switches to double spaced lines
    \newcommand{\doublespace}{\par\renewcommand{\baselinestretch}{1.66}\small\normalsize\par}


% Set the margins to UKZN specifications

    \setlength{\marginparwidth}{0pt}
    \setlength{\marginparsep}{0pt}
    \setlength{\oddsidemargin}{0in}
    \setlength{\evensidemargin}{0in}
    \setlength{\textwidth}{6.5in}
    \setlength{\topmargin}{0in}
    \setlength{\headheight}{0.2in}
    \setlength{\headsep}{0.3in}
    \setlength{\textheight}{8.4in}
    \setlength{\footskip}{0.25in}
    \raggedbottom


% Redefine the Table of Contents to deal with some blank page
% and bookmarking issues relating to ETD submission
    \let\TEMPtableofcontents\tableofcontents
    \renewcommand{\tableofcontents}{
      \clearemptydoublepage
      \providecommand\phantomsection{} \phantomsection
      \addcontentsline{toc}{chapter}{Table of Contents}
      \TEMPtableofcontents
    }

% Redefine the List of Figures to deal with some blank page
% and bookmarking issues
    \let\TEMPlistoffigures\listoffigures
    \renewcommand{\listoffigures}{
      \providecommand\phantomsection{} \phantomsection
      \addcontentsline{toc}{chapter}{List of Figures}
      \TEMPlistoffigures
    }

% Redefine the Bibliography to deal with a bookmarking issues
    \let\TEMPbibliography\bibliography
    \renewcommand{\bibliography}{
      \providecommand\phantomsection{} \phantomsection
      \addcontentsline{toc}{chapter}{Bibliography}
      \TEMPbibliography
    }

% These packages typeset the thesis with Times Roman font
\usepackage[T1]{fontenc}
\usepackage{textcomp}
\usepackage{mathptmx}

% Allow the inclusion of graphics
\usepackage{graphicx}

% The fancyhdr package allows you to easily customize the page header.
% The settings below produce a nice, well separated header.
\usepackage{fancyhdr}
  \fancyhead{}
  \fancyhead[LO]{\slshape \rightmark}
  \fancyhead[RO,LE]{\textbf{\thepage}}
  \fancyhead[RE]{\slshape \leftmark}
  \fancyfoot{}
  \pagestyle{fancy}
  \renewcommand{\chaptermark}[1]{\markboth{\chaptername \ \thechapter \ \ #1}{}}
  \renewcommand{\sectionmark}[1]{\markright{\thesection \ \ #1}}

% The caption package allows you to change the formatting of figure captions.
% The commands here change to the suggested caption format:
% single spaced and a bold tag
\usepackage[margin=0.3in,labelfont=bf,labelsep=none]{caption}
 \DeclareCaptionFormat{suggested}{\singlespace#1#2 #3\par\doublespace}
 \captionsetup{format=suggested}

% The makeidx package makes your index for you.  To make an index entry,
% go to the place in the book that should be referenced and type
%  \index{key}
% An index entry labeled "key" (or whatever you type) will then
% be included and point to the correct page.
\usepackage{makeidx}
\makeindex

\usepackage{amsmath}

% Set the bibliography style


% \usepackage{cite}
% \usepackage[backend=bibtex]{biblatex}
\usepackage{bibentry}
\bibliographystyle{unsrt}


% The hyperref package provides automatic linking and bookmarking for the table
% of contents, index, equation references, and figure references.  It must be
% included for the UKZNcomp class to make a properly functioning electronic
% thesis.  It should be the last package loaded if possible.
%
% To include a link in your pdf use \href{URL}{Text to be displayed}.  If your
% display text is the URL, you probably should use the \url{} command discussed
% above.
%
% To add a bookmark in the pdf you can use \pdfbookmark.  You can look up its usage
% in the hyperref package documentation
\usepackage[bookmarksnumbered,pdfpagelabels=true,plainpages=false,colorlinks=true,
            linkcolor=black,citecolor=black,urlcolor=blue]{hyperref}
\urlstyle{rm}
