%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade UFVJM
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is SEU_NOME, SEU_EMAIL
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{universidade-brasil-abntex2}[2013/04/01 v1.0 Modelo da Universidade Brasil baseado em abnTeX2]
\ProvidesClass{UFVJM-abntex2}[2019/04/01 v1.0 Modelo da Universidade Federal dos Vales do Jequitinhonha e Mucuri baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
   \center
  \normalsize
\textbf{UNIVERSIDADE FEDERAL DOS VALES DO JEQUITINHONHA E MUCURI}\\  
  %  \vspace*{1cm}
   \textbf{\normalsize\imprimirunidade}\\
  %  \vspace*{1cm}
   \textbf{\normalsize\imprimirautor}


   \vfill
    \begin{center}
       {\normalsize\bfseries\MakeTextUppercase{\imprimirtitulo}}
    \end{center}
   \vfill

 %\vspace*{7cm}
    
     \textbf{\normalsize\imprimirlocal}\\

   \textbf{\normalsize\imprimirdata}
    
    \vspace*{1cm}

  \end{capa}
}


% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
 \textbf{\normalsize\imprimirautor}
    
\vspace*{8cm}

\begin{center}
       {\normalsize\bfseries\MakeTextUppercase{\imprimirtitulo}}
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
\hspace{.4\textwidth}
%\hspace{6.98cm}
\begin{minipage}{.55\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  \SingleSpacing
  {\normalsize\imprimirorientadorRotulo~\imprimirorientador\par}

  \abntex@ifnotempty{\imprimircoorientador}{%
  {\normalsize\imprimircoorientadorRotulo~\imprimircoorientador}%
}%
  \end{minipage}%
  \vspace*{\fill}
}%


   \vfill

 %\vspace*{7cm}
    
     \textbf{\normalsize\imprimirlocal}\\

   \textbf{\normalsize\imprimirdata}
    
    \vspace*{1cm}
\end{center}
}

\makeatother



% Pacotes importantes
%--------------------------------------------------

\usepackage{tocloft} % Edições no sumário

% Configuracao do SUMARIO
%--------------------------------------------------
\cftsetindents{part}{0em}{1em}
\cftsetindents{chapter}{0em}{1em}
\cftsetindents{section}{0em}{1em}
\cftsetindents{subsection}{0em}{1.6em}
\cftsetindents{subsubsection}{0em}{2.4em}
\cftsetindents{paragraph}{0em}{3.2em}

% excelente - deixar section maisculo 
\makeatletter
\let\oldcontentsline\contentsline
\def\contentsline#1#2{%
	\expandafter\ifx\csname l@#1\endcsname\l@section
	\expandafter\@firstoftwo
	\else
	\expandafter\@secondoftwo
	\fi
	{%
		\oldcontentsline{#1}{\MakeTextUppercase{#2}}%
	}{%
	\oldcontentsline{#1}{#2}%
}%
}
\makeatother
\renewcommand{\cftparagraphfont}{\normalsize\normalfont\itshape}
\renewcommand{\cftsubsubsectionfont}{\bfseries\itshape}
\renewcommand{\cftsubsectionfont}{\bfseries}
\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftpartpagefont}{\bfseries \normalsize}


% Espaçamento entre títulos
%--------------------------------------------------
\usepackage{titlesec}

  \titleformat{\chapter}
  {\centering\normalfont\bfseries}
  {\thechapter}
  {5pt}
  {\MakeUppercase}

\titleformat{\section}
  {\normalfont\bfseries}
  {\thesection}
  {5pt}
  {\MakeUppercase}
  
  \titleformat{\subsection}
  {\normalfont\bfseries}
  {\thesubsection}
  {5pt}
  {}

  \titleformat{\subsubsection}
  {\normalfont\bfseries\itshape}
  {\thesubsubsection}
  {5pt}
  {}  

  \titleformat{\paragraph}
  {\normalfont\itshape}
  {\theparagraph}
  {5pt}
  {}  

 
\titlespacing*{\chapter}
{0pt}{.75cm}{.75cm}
\titlespacing*{\section}
{0pt}{.75cm}{.75cm}
\titlespacing*{\subsection}
{0pt}{.75cm}{.75cm}
\titlespacing*{\subsubsection}
{0pt}{.75cm}{.75cm}
\titlespacing*{\subsubsubsection}
{0pt}{.75cm}{.75cm}

% Fontes padrao de part, chapter, section, subsection e subsubsection
%--------------------------------------------------
\renewcommand{\ABNTEXchapterfont}{\rmfamily}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize\bfseries}
\renewcommand{\ABNTEXsectionfont}{\normalsize\bfseries}
\renewcommand{\ABNTEXpartfont}{\footnotesize\bfseries}
\renewcommand{\ABNTEXpartfontsize}{\footnotesize\bfseries}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize\bfseries\itshape} 
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize\normalfont\itshape} 


% Titulos das Figuras e tabelas
%--------------------------------------------------
\captionnamefont{\fontsize{10pt}{\baselineskip}\bfseries}
\captiontitlefont{\fontsize{10pt}{\baselineskip}\bfseries\centering}


% Espaco de fonte das figurs e tabelas
% Define o comando \fonte que respeita as configurações de caption do memoir ou do caption
%--------------------------------------------------
\newcommand{\Fonte}[2]{%
\begin{flushleft} 
\vspace{0cm}
\hspace{#1}
    \begin{minipage}{6cm}
   \footnotesize Fonte: #2
    \end{minipage}%
\end{flushleft} 
}

% 19/07/2019 - Comando para definição da Unidade
\providecommand{\imprimirunidade}{}
\newcommand{\unidade}[1]{\renewcommand{\imprimirunidade}{#1}}
