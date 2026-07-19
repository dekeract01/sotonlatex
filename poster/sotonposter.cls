%-------------------------------------------------------------------------------
% sotonposter.cls
% University of Southampton poster class
%-------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sotonposter}[2015/09/13 soton poster class for LaTeX]

%-------------------------------------------------------------------------------
% Class options
%-------------------------------------------------------------------------------
\RequirePackage{xkeyval}

\makeatletter

% lengths and colours configurable via options
\newlength{\sotonposter@bannerheight}
\setlength{\sotonposter@bannerheight}{14cm}

\newlength{\sotonposter@logoheight}
\setlength{\sotonposter@logoheight}{5cm}

\newlength{\sotonposter@margin}
\setlength{\sotonposter@margin}{1cm}

\newcommand{\sotonposter@color}{black}
\newcommand{\sotonposter@foregroundcolor}{white}

\DeclareOptionX{portrait}{%
	\PassOptionsToPackage{portrait}{geometry}%
	\setlength{\sotonposter@bannerheight}{15cm}%
}
\DeclareOptionX{landscape}{%
	\PassOptionsToPackage{landscape}{geometry}%
	\setlength{\sotonposter@bannerheight}{14cm}%
}
\DeclareOptionX{bannerheight}{\setlength{\sotonposter@bannerheight}{#1}}
\DeclareOptionX{logoheight}{\setlength{\sotonposter@logoheight}{#1}}
\DeclareOptionX{margin}{\setlength{\sotonposter@margin}{#1}}
\DeclareOptionX{color}{\renewcommand{\sotonposter@color}{#1}}
\DeclareOptionX{inverttitle}{\renewcommand{\sotonposter@foregroundcolor}{black}}

\makeatother

\ProcessOptionsX
\LoadClass{article}

%-------------------------------------------------------------------------------
% Geometry
%-------------------------------------------------------------------------------
\makeatletter
\RequirePackage[a1paper,margin=\sotonposter@margin]{geometry}
\setlength{\columnsep}{\sotonposter@margin}
\makeatother

%-------------------------------------------------------------------------------
% Packages
%-------------------------------------------------------------------------------
% language and encoding
\RequirePackage[UKenglish]{babel}
\RequirePackage[utf8]{inputenc} % accented characters (e.g. ő)

% fonts
\RequirePackage{charter}

% layout
\RequirePackage{multicol}
\RequirePackage[most]{tcolorbox}
\RequirePackage[hypcap=false]{caption}

% graphics
\RequirePackage{graphicx}
\graphicspath{{resources/}}
\RequirePackage{pgf}

% maths, physics, chemistry
\RequirePackage{amsmath,amsthm,amssymb}
\RequirePackage{physics}
\RequirePackage[version=4]{mhchem}

% tables
\RequirePackage{booktabs}

% citations
\RequirePackage{breakcites} % avoid overfull hbox for long cites
\RequirePackage{natbib}
\bibliographystyle{abbrv}

% hyperlinks
\colorlet{linkBlue}{blue}
\RequirePackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={linkBlue},citecolor={linkBlue},urlcolor={linkBlue},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}

\pagenumbering{gobble} % no page numbers on a poster

%-------------------------------------------------------------------------------
% Font sizes (tuned for A1)
%-------------------------------------------------------------------------------
\renewcommand{\LARGE}{\fontsize{70}{90}\selectfont}
\renewcommand{\Large}{\fontsize{31}{40}\selectfont}
\renewcommand{\large}{\fontsize{25}{35}\selectfont}
\renewcommand{\normalsize}{\fontsize{21}{23}\selectfont}
\renewcommand{\footnotesize}{\fontsize{25}{35}\selectfont}
\renewcommand{\small}{\fontsize{18}{22}\selectfont}
\renewcommand{\tiny}{\fontsize{16}{18}\selectfont}

%-------------------------------------------------------------------------------
% Paragraphs and headings
%-------------------------------------------------------------------------------
\RequirePackage[none]{hyphenat} % no hyphenation
\setlength{\parindent}{0pt}
\newcommand{\defaultparskip}{1cm plus 0.5cm}
\setlength{\parskip}{\defaultparskip}

\RequirePackage{titlesec}
\titlespacing{\section}{0pt}{\parskip}{-0.8\parskip}
\titlespacing{\subsection}{0pt}{\parskip}{-0.8\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-0.8\parskip}

%-------------------------------------------------------------------------------
% Official University of Southampton colours
%-------------------------------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{sotonlightpurple}{cmyk}{0.08,0.25,0.04,0.14}
\definecolor{sotondarkpurple}{cmyk}{0.67,0.79,0.24,0.59}
\definecolor{sotonpurple}{cmyk}{0.83,0.99,0.00,0.02}
\definecolor{sotonlilac}{HTML}{F1EDFF}
\definecolor{sotonblueceleste}{cmyk}{0.30,0.00,0.07,0.00}
\definecolor{sotonblue}{HTML}{1F488F}
\definecolor{sotonmarinepink}{HTML}{D5007F}
\definecolor{sotonlightblue}{cmyk}{0.42,0.07,0.08,0.08}
\definecolor{sotonskyblue}{cmyk}{0.42,0.10,0.02,0.06}
\definecolor{sotonbrightblue}{cmyk}{0.98,0.00,0.28,0.04}
\definecolor{sotonnavyblue}{cmyk}{1.00,0.69,0.08,0.54}
\definecolor{sotondarkblue}{cmyk}{1.00,0.21,0.28,0.76}
\definecolor{sotondarkgreen}{cmyk}{0.35,0.30,1.00,0.75}
\definecolor{sotonmidgreen}{cmyk}{0.42,0.05,0.98,0.29}
\definecolor{sotongreen}{HTML}{007500}
\definecolor{sotonbrightgreen}{cmyk}{0.27,0.00,1.00,0.03}
\definecolor{sotonlightgreen}{cmyk}{0.25,0.04,0.44,0.03}
\definecolor{sotonstone}{cmyk}{0.03,0.04,0.14,0.08}
\definecolor{sotondarkgrey}{cmyk}{0.17,0.24,0.25,0.49}
\definecolor{sotondarkbrown}{cmyk}{0.30,0.71,0.75,0.81}
\definecolor{sotondarkred}{cmyk}{0.18,1.00,0.45,0.67}
\definecolor{sotonburgundy}{cmyk}{0.00,0.97,0.89,0.45}
\definecolor{sotonpink}{cmyk}{0.06,1.00,0.26,0.24}
\definecolor{sotonrichred}{cmyk}{0.00,1.00,0.72,0.00}
\definecolor{sotonmidred}{cmyk}{0.00,0.87,0.85,0.00}
\definecolor{sotonorange}{cmyk}{0.00,0.61,0.99,0.00}
\definecolor{sotonyellow}{cmyk}{0.00,0.29,1.00,0.00}
\definecolor{sotonwhite}{cmyk}{0.00,0.00,0.00,0.00}
\definecolor{sotonblack}{cmyk}{0.00,0.00,0.00,1.00}
\definecolor{sotonbred}{HTML}{FF0000}
\definecolor{sotonferrarired}{HTML}{ff2800}

% additional (non-official) colours
\definecolor{sotonbgreen}{HTML}{58d68d}
\definecolor{sotonbyellow}{HTML}{f4d03f}
\definecolor{sotonbpurple}{HTML}{d2b4de}
\definecolor{sotonpgreen}{HTML}{004204}
\definecolor{sotonbracinggreen}{HTML}{004225}
\definecolor{sotonneonblue}{HTML}{C2E5F8}
\definecolor{sotonbryellow}{HTML}{E1F37B}

%-------------------------------------------------------------------------------
% Title / banner
%-------------------------------------------------------------------------------
\RequirePackage{eso-pic} % \AddToShipoutPicture
\RequirePackage{authblk} % author affiliations

\makeatletter

% affiliations on one line
\renewcommand\AB@affilsepx{\hspace{0.5em}\protect\Affilfont}

\newlength{\sotonposter@bannertextheight}
\setlength{\sotonposter@bannertextheight}{\sotonposter@bannerheight}
\addtolength{\sotonposter@bannertextheight}{-2.0\sotonposter@margin}

\newlength{\sotonposter@bannertextwidth}
\setlength{\sotonposter@bannertextwidth}{\paperwidth}

\renewcommand{\maketitle}{%
	% top banner
	\AddToShipoutPicture*{%
		\put(0,0){\parbox[b][\paperheight]{\paperwidth}{%
			\sotonposter@banner%
			\vfill%
		}}%
	}%
	% title text
	\parbox[s][\sotonposter@bannertextheight][s]{\sotonposter@bannertextwidth}{%
		\color{\sotonposter@foregroundcolor}\raggedright%
		{\LARGE\bfseries\@title}%
		\par\vspace{12mm}%
		{\Large\AB@authlist}%
		\par\vspace{4mm}%
		{\normalsize\AB@affillist}%
	}%
	\vspace{-\parskip}%
	\vspace{2\sotonposter@margin}%
	% bottom banner
	\AddToShipoutPicture*{%
		\put(0.00,-2280.00){\parbox[b][\paperheight]{\paperwidth}{%
			\sotonposter@lowerbanner%
			\vfill%
		}}%
	}%
}
\makeatother

%-------------------------------------------------------------------------------
% Highlight boxes
%-------------------------------------------------------------------------------
\RequirePackage{tikz}
\RequirePackage{environ} % \NewEnviron

\makeatletter
\newlength{\sotonposter@highlightboxpad}
\setlength{\sotonposter@highlightboxpad}{0.2\sotonposter@margin}

\NewEnviron{highlightbox}[1][\sotonposter@color!20!white]{%
	\hspace*{-\sotonposter@highlightboxpad}%
	\colorbox{#1}{%
		\hspace*{\sotonposter@highlightboxpad}%
		\begin{minipage}{\columnwidth}%
			\vspace*{\sotonposter@highlightboxpad}%
			\begin{minipage}{\columnwidth}%
				\setlength{\parskip}{\defaultparskip}%
				\BODY%
			\end{minipage}%
			\vspace*{\sotonposter@highlightboxpad}%
		\end{minipage}%
		\hspace*{\sotonposter@highlightboxpad}%
	}%
	\hspace*{-\sotonposter@highlightboxpad}%
	\par%
}
\makeatother

%-------------------------------------------------------------------------------
% Banner shapes
%-------------------------------------------------------------------------------
\newcommand\ydist{0.30}
\newcommand\ydistl{0.1}

\makeatletter
\newcommand{\sotonposter@banner}{%
\begin{tikzpicture}[x=\sotonposter@logoheight, y=\sotonposter@logoheight,
					banner/.style={fill=\sotonposter@color}]
	\path[use as bounding box]
		(0, \sotonposter@bannerheight) --
		(-\paperwidth, \sotonposter@bannerheight) --
		(-\paperwidth, 0) --
		(0, 0) -- cycle;

	\fill[banner]
		(\ydist, \sotonposter@bannerheight) --
		(-\paperwidth, \sotonposter@bannerheight) --
		(-\paperwidth, \ydist) --
		(0.000, \ydist) -- cycle;

	\node[inner sep=0pt] at (-1.15,1.85)
		{\includegraphics[width=.12\textwidth]{resources/logos/logo-soton-crest-white.eps}};
\end{tikzpicture}%
}

\newcommand{\sotonposter@lowerbanner}{%
\begin{tikzpicture}[x=\sotonposter@logoheight, y=\sotonposter@logoheight,
					banner/.style={fill=\sotonposter@color}]
	\path[use as bounding box]
		(\ydistl, \sotonposter@bannerheight) --
		(-\paperwidth, \sotonposter@bannerheight) --
		(-\paperwidth, \ydistl) --
		(0, 0) -- cycle;

	\fill[banner]
		(\ydist, \sotonposter@bannerheight) --
		(-\paperwidth, \sotonposter@bannerheight) --
		(-\paperwidth, \ydist) --
		(0.000, \ydistl) -- cycle;

	\node[inner sep=0pt] at (-10.0,2.6)
		{\includegraphics[width=.23\textwidth]{resources/logos/logo-soton-new-white.eps}};
	\node[inner sep=0pt] at (-1.3,2.60)
		{\includegraphics[width=.13\textwidth]{resources/logos/logo-aeroastro-white.eps}};
\end{tikzpicture}%
}
\makeatother

\endinput