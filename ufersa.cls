\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufersa}[2020/10/02 - UFERSA]

% Packages

\LoadClass[a4, 12pt]{article}
\RequirePackage[brazilian]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{helvet}
\RequirePackage{indentfirst}
\RequirePackage{etoolbox}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}

% Personal data

\input{seus-dados}

% Document structure

\doublespacing
\renewcommand{\familydefault}{\sfdefault}
\pagestyle{fancy}
\geometry{margin=1in, bottom=1in}
\AtBeginDocument {\capa\conteudo}
\AtEndDocument {\assinaturas}

% Sections

\titleformat{\section}
  {\normalfont\bfseries}{\thesection.}{1em}{}
  %[{\titlerule[0.8pt]}]
\titleformat{\subsection}
  {\normalfont\bfseries}{\thesubsection}{1em}{}
 % [{\titlerule[0.8pt]}]

% Header and footer
\renewcommand{\headrulewidth}{0pt}
    
\lhead{}
\chead{%
}
\rhead{}

\fancypagestyle{firstpage}{%

    \lhead{}
    \chead{%
        \setlength\headheight{140pt}
        \renewcommand{\headrulewidth}{0pt}
      \includegraphics[width=2.5cm]{assets/logo}\\%
      \textbf{\footnotesize UNIVERSIDADE FEDERAL RURAL DO SEMI-ÁRIDO (UFERSA) – Mossoró}\\%
      \footnotesize Departamento de Computação (DC)\\%
      Estágio Supervisionado em Ciência da Computação%
    }
    \rhead{}
}

\fancypagestyle{coverstyle}{%
    \lhead{}
    \chead{}
    \rhead{}
}

\lfoot{}
\rfoot{\thepage}
\cfoot{\data}

\fancypagestyle{coverstyle}
{
  \lfoot{}
  \rfoot{}
  \cfoot{}
}

% Summary

\addto\captionsbrazilian{%
  \renewcommand{\contentsname}%
    {\normalfont\bfseries Conteúdo}%
}

\newcommand{\conteudo}{\tableofcontents\thispagestyle{coverstyle}\newpage}

\renewcommand{\cftsecfont}{}
\renewcommand{\cftdotsep}{0.5}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% Signatures

\newcommand{\assinaturas}{\newpage\section{Assinaturas}%
\begin{center}%
\vspace{2cm}%
\line(1,0){250}\\%
\emph{Assinatura do Estagiário}\\%
\emph{\aluno}%
\end{center}%
\begin{center}%
\vspace{2cm}%
\line(1,0){250}\\%
\emph{Assinatura do supervisor do estágio na concedente}\\%
\emph{\supervisorNome\enskip(\supervisorCargo)}%
\end{center}%
\begin{center}%
\vspace{2cm}%
\line(1,0){250}\\%
\emph{Assinatura do supervisor do estágio na UFERSA}\\%
\emph{\professorNome\enskip(\professorCargo)}%
\end{center}}

% Cover page

\newcommand{\capa}{\vspace*{10cm}%
\begin{flushright}%
\footnotesize%
\textbf{Aluno:} \aluno\\%
\textbf{Supervisor na UFERSA – Mossoró:} \professorNome\\%
\textbf{Supervisor na Concedente:} \supervisorNome\\%
\textbf{Empresa:} \empresa\\%
\textbf{Período de estágio:} \periodo\\%
\end{flushright}%
\vspace{4cm}%
\begin{center}%
\footnotesize%
\ifdef{\relatorioFinal}
  {\textbf{RELATÓRIO PARCIAL [\quad] \hspace{1cm} RELATÓRIO FINAL [ X ]}\\}%
  {\textbf{RELATÓRIO PARCIAL [\quad] \hspace{1cm} RELATÓRIO FINAL [ X ]}\\}%
\vspace{1cm}%
\footnotesize%
\textbf{APROVADO [\quad] \hspace{1.5cm} REPROVADO [\quad] \hspace{1.5cm} AJUSTES [\quad]}%
\end{center}%
\thispagestyle{firstpage}%
\newpage}
