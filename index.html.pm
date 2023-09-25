#lang pollen

◊`(div ([class "lg:flex lg:justify-between lg:gap-4"])
  (header ([class "lg:sticky lg:top-0 lg:flex lg:max-h-screen lg:w-1/2 lg:flex-col lg:justify-between lg:py-24"])
	(div
		(h1 ([class "text-3xl uppercase font-light tracking-wide text-zinc-200 sm:text-4xl"])
		    "Beat Hagenlocher")
		(h2 ([class "mt-2 text-lg text-zinc-200 sm:text-xl"])
		    "Software Engineering Student")
		(p ([class "mt-4 max-w-xs leading-normal"])
			"I enjoy learning.")
	)

	(section ([id "about"] [class "mb-16 group/section scroll-mt-16 lg:mb-0 lg:scroll-mt-0"] [aria-label "About me"])
			 (div ([class "sticky top-0 z-20 -mx-6 mb-4 w-screen px-6 py-5 backdrop-blur md:-mx-12 md:px-12 lg:px-1 lg:py-1 lg:mx-0 lg:w-5/6"])
			 	  (h2 ([class "pt-3 px-1 text-sm group-hover/section:text-base font-medium text-zinc-200 transition-all duration-500 ease-in-out uppercase tracking-[2px] border-transparent border-t-2 border-solid group-hover/section:text-[#dc755c] group-hover/section:border-[#DC755C]"])
				      "About"))
			 (div ([class "lg:w-10/12"])
			 	  (p 
				  	 "Human being on its quest to learn as much as possible and do good in the world.")
			 	  (p ([class "mt-4"])
				     "Interested in Education, Macroeconomics, History, Organizational Forms, Distributed Systems, Mathematics, Systems Thinking, Category Theory, and Learning.")
			 	  (p ([class "mt-4"])
				     "Currently learning Vim keybindings for " ,(link "Doom Emacs" "https://github.com/doomemacs/doomemacs") " and practicing to type faster.")
			 	  (p ([class "mt-4"])
				     "When I'm not at the Computer or deliberately learning something, you can find me on walks with nice people, doing sports, or at my " ,(link "favourite kids camp" "https://www.spatzennest-tuebingen.de/") " during the summer.")
				))

	(ul ([class "ml-1 mt-8 flex items-center"])
	  (li ([class "mr-5 text-sm"])
	      (a ([class "block hover:text-zinc-200"] [href "https://github.com/haglobah"] [target "_blank"] [rel "noreferrer"])
		     (span ([class "sr-only"]))
			 (svg ([xmlns "http://www.w3.org/2000/svg"] [viewBox "0 0 16 16"] [fill "currentColor"] [class "h-6 w-6"] [aria-hidden "true"])
			      (path ([d "M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"])))))
	  (li ([class "mr-5 text-sm"])
	      (a ([class "block hover:text-zinc-200"] [href "https://www.linkedin.com/in/beat-hagenlocher-284212271/"] [target "_blank"] [rel "noreferrer"])
		     (span ([class "sr-only"]))
			 (svg ([xmlns "http://www.w3.org/2000/svg"] [viewBox "0 0 24 24"] [fill "currentColor"] [class "h-6 w-6"] [aria-hidden "true"])
			      (path ([d "M20.5 2h-17A1.5 1.5 0 002 3.5v17A1.5 1.5 0 003.5 22h17a1.5 1.5 0 001.5-1.5v-17A1.5 1.5 0 0020.5 2zM8 19H5v-9h3zM6.5 8.25A1.75 1.75 0 118.3 6.5a1.78 1.78 0 01-1.8 1.75zM19 19h-3v-4.74c0-1.42-.6-1.93-1.38-1.93A1.74 1.74 0 0013 14.19a.66.66 0 000 .14V19h-3v-9h2.9v1.3a3.11 3.11 0 012.7-1.4c1.55 0 3.36.86 3.36 3.66z"])))))
	)
  )


  (main ([class "pt-24 lg:w-1/2 lg:py-24"])
	,(section "Skills & Abilites" "Relevant Skills & Abilites"
		(card #:description "Programming Languages" #:topics "Elixir, Racket, Haskell, C, Clojure, Rust") 
		(card #:description "Programming" #:topics "Git, Docker, Nix, Functional Programming, Phoenix LiveView, Tailwind CSS") 
		(card #:description "Organizational Development" #:topics "Sociocracy, The Lean Startup, Start with Why, Reinventing Organizations") 
		(card #:description "Design" #:topics "Design Thinking, Systems Design, Designing your Life") 
		)

	,(section "Experience" "Work Experience"
		(card #:title "Software Development" #:position "Working Student" #:organization "Hacker School" #:link "https://hacker-school.de" #:description "Feb 2021 - Mar 2023" #:links '(("Course website (DE)" . "https://konzepte.hacker-school.de")) #:topics "Racket, Pollen, Sociocracy, Teaching"
			  "Developed courses and the accompanying course website. Introduced a knowledge base system.")
		(card #:title "Software Architecture" #:position "Intern" #:organization "active group GmbH" #:link "https://active-group.de" #:description "Mar - May 2020" #:topics "Haskell, Clojure, Machine Learning, Emacs, magit"
			  "Implemented a Web Server for a Machine Learning Project in Haskell. Developed parts of a project frontend in ClojureScript.")
		(card #:title "Innovation Hacking" #:position "Intern" #:organization "TNG Technology Consulting" #:link "https://www.tngtech.com/" #:description "Dez 2019 - Mar 2020" #:topics "C#, Python, Unity, Reinforcement Learning, Tensorflow"
			  "Developed AI Agents for the Game Blobby VR. Looked after the TNG booth at OOP 2020.")
		(hrule)
		(card #:position "Course Instructor" #:title "Deutsche SchülerAkademie" #:description "16 Days | June - July 2022" #:link "https://www.schuelerakademien.de/deutsche-schuelerakademie" #:topics "Learning, Teaching"
			"Designed and taught a 50-hour university-level course called " `(span ([class "italic"]) "How People Learn") ".")
		(card #:position "Working Member" #:title "rootlinks" #:description "June 2021 - Mar 2022" #:link "https://rootlinks.ch" #:topics "Sociocracy, Design Thinking, Systems Design, Teaching, Coaching, Recruiting"
			 "Co-created the Learning Journey of two semesters, coached a challenge team, and recruited the 3rd batch.")
	)

	,(section "Projects" "Selected Projects"
		(card #:title "Mastering 42" #:link "https://haglobah.github.io/Mastering-42/" #:topics "Racket, Pollen, Tailwind" #:image-src "https://haglobah.github.io/Mastering-42/src/Images/42_logo.png"
			"An attempt to supply the context missing from the projects of the Common Core at 42 School.")
		(card #:title "ft_transcendence" #:link "https://github.com/haglobah/transcendence" #:topics "Elixir, Phoenix LiveView, PostgreSQL (Ecto), Tailwind CSS"
			"The final project of the Common Core at 42: A Web App for playing Pong and chatting (still has some rough edges).")
	)

	,(section "Education" "My Education"
		(card #:title "42 Heilbronn" #:description "Mar 2022 - today" #:link "https://42heilbronn.de" #:topics "C, C++, Docker, Elixir, Racket"
			  )
		(card #:title "BSc Physics" #:organization "ETH Zurich" #:description "Sep 2020 - Feb 2022" #:link "https://ethz.ch/en.html" #:links '(("rootlinks" . "https://rootlinks.ch"))
			  `(p ([class "mb-2"]) "Up until the 3rd semester.")
			  `(p ([class "italic"]) "03/21 - 07/21 Participation in the rootlinks program."))
		(card #:title "Studium generale et sociale" #:organization "Leibniz Kolleg Tübingen" #:link "https://uni-tuebingen.de/en/einrichtungen/verwaltung/stabsstellen/leibniz-kolleg/das-leibniz-kolleg/" #:description "Oct 2018 - July 2019"
			  )
		(card #:title "Carlo-Schmid-Gymnasium Tübingen" #:link "https://www.csg-tuebingen.de/" #:description "2010 - 2018"
			`(p "Final grade: 1,0")
			`(p "Received a price for the best Abitur in Chemistry."))
	)

	(footer ([class "max-w-md pb-16 text-sm text-zinc-500 sm:pb-0"])
		(p ([class "mb-1"])
		   "Written in " ,(footer-link "Visual Studio Code" "https://code.visualstudio.com/") " on a " ,(footer-link "rae-dux Keyboard" "https://github.com/andrewjrae/rae-dux") " with " ,(footer-link "Custom Layout" "https://github.com/haglobah/zmk-config") " while standing upright thanks to " ,(footer-link "Ben Vallack" "https://www.youtube.com/watch?v=iOupyi-lQZM") ". Built with  " ,(footer-link "Racket" "https://racket-lang.com") ", " ,(footer-link "Pollen" "https://pollenpub.com") " and " ,(footer-link "Tailwind CSS" "https://tailwindcss.com") " on " ,(footer-link "NixOS" "https://nixos.org/") ".")
		(p "Layout & Design heavily inspired by " ,(footer-link "Brittany Chiang" "https://brittanychiang.com") "."))
  )
)
