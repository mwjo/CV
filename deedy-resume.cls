%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1.25cm, vmargin=0.5cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for link

% to modify indentation of tightitemize lists
\usepackage{enumitem}

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors
\usepackage{array,arydshln}
\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{6A6A6A} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary]{Helvetica Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}
%----------------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%----------------------------------------------------------------------------------------

\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(75,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{8pt}{10pt}\selectfont % Text styling of the text
Last Updated on \today % Last Updated text
\end{textblock}}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[3]{ % Defines the command for the main heading
\centering{ % Center the name
%\fontsize{40pt}{60pt} % Font size
\fontsize{30pt}{50pt} % Font size
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 % First name font
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2 % Last name font
} \\[5pt] % Whitespace between the name and contact information
\centering{ % Center the contact information
\color{headings} % Use the headings color
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3} % Contact information font
%\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}} % Horizontal rule
%\vspace{-5pt} % Reduce whitespace after the rule slightly
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt}% Removes the spacing around the main section titles

\newenvironment{mysection}[1]
{
\section{#1}
\normalfont
\colorrule{black}
\vspace{2 mm}
}



\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{5.35 mm}} % Defines a command to add a set amount of space after sections and subsections
\newcommand{\itemspace}{\vspace{1.5 mm}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{headings}\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{16pt}\selectfont\bfseries\raggedright}{}{0em}{}[] % \raggedright or centering

\titleformat{\subsection} % Customize the subsections and places worked/studied titles
{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{0pt}\raggedright\selectfont\bfseries}{}{0em}{}[]
%[runin]{}{}{}{}[]	

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Bol}\raggedright\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

\newcommand{\runsection}[1]{ % Customize the large section titles
\color{headings}\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{16pt}{24pt}\selectfont \raggedright {#1}}

\newcommand{\runsectiona}[1]{ % Customize the large section titles
\color{headings}\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{16pt}{24pt}\selectfont {#1\quad\quad\quad\quad\quad\quad\quad\quad\quad}}


\newcommand{\runsubsectiona}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Bol}\raggedright\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\descripta}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

\newcommand{\descriptb}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\raggedright\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}


\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\locationa}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

\newcommand{\dateright}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\daterighta}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\mydate}[1]{\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont \textcolor{black}{#1}\normalfont}
\newcommand{\jobtitle}[1]{\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{12pt}\selectfont \textcolor{black}{#1}\normalfont}

\newcommand{\company}[1]{\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries \textcolor{subheadings}{#1} \normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------


\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}
%[leftmargin=*]
\itemsep2mm \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

\usepackage{fontspec}
\usepackage{fontawesome}
\usepackage{color}
\usepackage{multicol}
\usepackage{apacite}
\usepackage{tabularx}
\usepackage{scrextend}
\newcolumntype{Y}{>{\raggedright\arraybackslash}X}
\newcolumntype{Z}{>{\raggedleft\arraybackslash}X}
\newcolumntype{Q}{>{\centering\arraybackslash}X}

\newcolumntype{b}{>{\centering}X}
\newcolumntype{s}{>{\hsize=.5\hsize}X}
\newcolumntype{j}{>{\hsize=.5\hsize}X}

\newcommand{\colorrule}[1]{%
\begingroup\color{#1}\hrule\endgroup%
}%



