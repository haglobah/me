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

	(section ([id "about"] [class "mb-16 group/section scroll-mt-16"] [aria-label "About me"])
			 (div ([class "sticky top-0 z-20 -mx-6 mb-4 w-screen px-6 py-5 backdrop-blur md:-mx-12 md:px-12 lg:relative lg:px-1 lg:py-1 lg:top-auto lg:mx-auto lg:w-full"])
			 	  (h2 ([class "pt-3 px-1 text-base font-medium text-zinc-200 transition duration-500 ease-in-out uppercase tracking-[2px] border-transparent border-t-2 border-solid group-hover/section:text-[#dc755c] group-hover/section:border-[#DC755C]"])
				      "About"))
			 (div 
			 	  (p ([class "mb-4"])
				     "Story, story")
			 	  (p ([class "mb-4"])
				     "Interests, interests")
			 	  (p ([class "mb-4"])
				     "Me, me.")
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
	,(section "Experience" "Work Experience"
		(card "Software Development" #:position "Working Student" #:organization "Hacker School" #:link "https://hacker-school.de" #:timespan "Feb 2021 - Mar 2023" #:topics "Racket, Sociocracy, Teaching"
			  "This is some serious text.")
		(card "Software Architecture" #:position "Intern" #:organization "active group GmbH" #:link "https://active-group.de" #:timespan "Mar - May 2020" #:links '(("active group" . "https://active-group.de")) #:topics "Haskell, Clojure, magit"
			  "This is some serious text.")
		(card "Innovation Hacking" #:position "Intern" #:organization "TNG Technology Consulting" #:link "https://www.tngtech.com/" #:timespan "Dez 2019 - Mar 2020" #:topics "C#, Python, Unity, Reinforcement Learning, Tensorflow"
			  "This is some serious text."))
	,(section "Projects" "Selected Projects"
		(card "Mastering 42" #:link "https://haglobah.github.io/Mastering-42/" #:topics "Racket, Pollen, Tailwind" #:image-src "https://haglobah.github.io/Mastering-42/src/Images/42_logo.png")
				)))
	(footer ([class ""]))
  )
)
