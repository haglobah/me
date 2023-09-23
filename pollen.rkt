#lang racket

(require pollen/core)

(provide (all-defined-out))

(define (badge topic)
    `(li ([class "mr-1.5 mt-2"])
		(div ([class "flex items-center rounded-full bg-teal-400/10 px-3 py-1 text-xs font-medium leading-5 text-teal-300"]) ,topic)))

(define (->badges topics)
  (let ([top-list (map (curry string-trim #:left? #t) 
  					   (string-split topics ","))])
    `(ul ([class "mt-2 flex flex-wrap"] [aria-label "Technologies used"])
         ,(for/splice ([topic top-list]) (badge topic)))))

(define (relevant-link name href)
    `(li ([class "mr-4"])
            (a ([class "relative inline-flex items-center text-sm font-medium text-slate-300 hover:text-teal-300 focus-visible:text-teal-300"] [href ,href] [target "_blank"] [rel "noreferrer"])
                (svg ([xmlns "http://www.w3.org/2000/svg"] [viewBox "0 0 20 20"] [fill "currentColor"] [class "mr-1 h-3 w-3"] [aria-hidden "true"])
                        (path ([d "M12.232 4.232a2.5 2.5 0 013.536 3.536l-1.225 1.224a.75.75 0 001.061 1.06l1.224-1.224a4 4 0 00-5.656-5.656l-3 3a4 4 0 00.225 5.865.75.75 0 00.977-1.138 2.5 2.5 0 01-.142-3.667l3-3z"]))
                        (path ([d "M11.603 7.963a.75.75 0 00-.977 1.138 2.5 2.5 0 01.142 3.667l-3 3a2.5 2.5 0 01-3.536-3.536l1.225-1.224a.75.75 0 00-1.061-1.06l-1.224 1.224a4 4 0 105.656 5.656l3-3a4 4 0 00-.225-5.865z"])))
                (span ,name))))

(define (relevant-links links)
  (let ([names (map (λ (pair) (car pair)) links)]
        [hrefs (map (λ (pair) (cdr pair)) links)])
    `(ul ([class "mt-2 flex flex-wrap"] [aria-label "Related links"])
         ,(for/splice ([name names] [href hrefs]) (relevant-link name href)))))


(define (card role #:organization [org ""] #:link [link ""]
              #:timespan [timespan ""] #:links [links '(("" . ""))] #:topics [topics ""]
              . text)
    `(li ([class "mb-12"])
        (div ([class "group relative grid pb-1 transition-all sm:grid-cols-8 sm:gap-8 md:gap-4 lg:hover:!opacity-100 lg:group-hover/list:opacity-50"])
            (div ([class "absolute -inset-x-4 -inset-y-4 z-0 rounded-md transition lg:-inset-x-6 lg:block lg:group-hover:bg-slate-800/50 lg:group-hover:shadow-[inset_0_1px_0_0_rgba(148,163,184,0.1)] group-hover:drop-shadow-lg"]))
            (header ([class "z-10 mb-2 mt-1 text-xs font-semibold uppercase tracking-wide text-slate-500 sm:col-span-2"]) ,timespan)
            (div ([class "z-10 sm:col-span-6"])
                (h3 ([class "font-medium leading-snug text-zinc-200"])
                    (div (a ([class "inline-flex items-baseline font-medium leading-tight text-slate-200 hover:text-teal-300 focus-visible:text-teal-300  group/link text-base"] [href ,link] [target "_blank"] [rel "noreferrer"])
                            (span ([class "absolute -inset-x-4 -inset-y-2.5 hidden rounded md:-inset-x-6 md:-inset-y-4 lg:block"]))
                            (span ,role
                                    (span ([class "inline-block"])
                                        ,org)))))
                (p ([class "mt-2 text-sm leading-normal"])
                    ,@text)
                ,(relevant-links links)
                ,(->badges topics)))))