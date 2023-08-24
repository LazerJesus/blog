---
title: "EVA - The Ghost in my sh.el"
author: ["Finn"]
description: "The first AI trained to work along side you, in Emacs. The Emacs Virtual Assistant."
date: 2022-07-13T00:00:00+02:00
draft: false
slug: "emacs-virtual-assistant"
---

## Intro to the Article {#intro-to-the-article}

We are in the middle of an once in a lifetime revolution. AI is here and more is coming. If you are anything like me, you're watching this revolution unfold from within your Emcas buffers and with the aid of copilot.el and the amazing gpt.el package, more and more of your workflows become aided by these models by the day.

But what if we can go further than calling 3rd party models from emacs. What if we could go **A LOT** further?

Introducing the Emacs virtual assistant, short EVA. The first model to be trained specifically to work inside Emacs.

This is a big deal. Why is this a big deal?
In this article, I'll argue that, even tho Emacs is ancient, it is uniquely well placed to benefit and <span class="underline">be benefitted</span> by LLMs. And I will attempt to articulate my vision for a deep integration of LLMs and Agents into the core of Emacs.

This is a long article, but in short it can be summarized as:


### TL;DR {#tl-dr}

&gt; AI needs a body, Agents need a host, and Emacs can be that.

-   LLMs operate on text and Emcas is text all the way down.
-   Agents need an environment to operate in and tools at their disposal. Emacs's REPL is a great environment (continuous runtime, functional, open) and there are tools for everything one might want to do with text and then some.
-   Emacs has a huge userbase that can provide training data, adopt and derive benefit from this AI.
-   Emacs is written in Lisp, the original language of AI. Which is not an argument for the premise, but kind of cool.
-   This is at an alpha stage, we need Data, a AI Model, and Application development to get this off the ground. Please help.


### <span class="org-todo todo TODO">TODO</span> Inhaltsverzeichnis {#inhaltsverzeichnis}

i will start with some worldbuilding, loading current affairs into context.
i will now go into an example of how emacs works for the uninitiated and from there draw the line to the requirements any agent systems might have, and how those connect.
i will now go into an example of the taskexecution of an agent by example.
i will follow that up by extracting or abstracting the actual steps such an agent does to accomplish these goals.
then i will go highligh how all of these steps are already done inside emacs, in a way that is accessible to these agents.
i will continue by pointing out other aspects of symbiosis.
and end on some counterfactuals to disprove this idea, closing thoughts and a few post scriptums.


## P.S. Pre Scriptum {#p-dot-s-dot-pre-scriptum}

First a sentence on nomenclature. Throughout this article I will refere to AI, AI systems, and Agents interchangeably. All refering to this tool I am proposing, that EVA is the first step off.

Secondly, I have an intent in writing this article. I want to have this tool, but I can build it all by myself. I want you to join me in creating it. There are multiple ways of contributing and I will go into them in the end. They are quite self explanatory once you've read the article.

Thirdly, We want the agent to execute our intent and minimize friction in the process to derive maximum value.


## Premise {#premise}

The world is changing. The age-old promise of AI is manifesting infront of our eyes.

As AI becomes more prevalent, it will handle an increasing amount of execution, while humans bring intent and judge design. So, a symbiotic relationship will form between humans and AI systems, with human intent driving agents execution, and itteration bridging the delta between state and goal. Reducing friction in this interaction will be critical.

This process of symbiotic cocreation needs to be facilitated in some environment.
This AI needs to be instructed and controlled through an interface and it needs to have access to tools and resources that it is familiar with trained on. To me, it doesn't feel entirely strange to say that it needs a body - something through which they can act on the world, communicate, reflect, think, plan and memorize.

This environment is the highest lever for reducing the aformentioned friction.

Microsoft will build out Visual Studio Code and Windows, "Open"AI has already launched their MVP with the plugins marketplace, and countless startups will join the race. But as highlighted in the leaked Google memo, open-source is the winning horse in this competition.

Emacs could, and in my opinion should, be adopted to be that environment, that body.
Why is that a good idea?


## Why is Emacs special in this context? {#why-is-emacs-special-in-this-context}

Emacs is a great candidate to build an AI agent system into and on top of. Why do I believe that?
This comes back to environment and friction, and there are several reasons that point to emacs and LLMs being a match made in heaven.

Humans, LLMs and Emacs share text as their common denomenator which greatly reduces friction.

Emacs is an open and continuous environment that an Agent can write into, read from and mutate, while the human operator can trace and insert control at any step.

Any Job-to-be-done that involves text on a computer, emacs already has a package of functions that an agent can be trained on and a human can use through the emacs UI.

Emacs has proven itself to be a fertile ground for innovation, as it's been around for 70 years, due to it open core and timeless, flexible architecture.

And from the AIs perspective, Emacs is essentially a REPL with an operating system built in and it can be controlled entirely through functions in the form of text. That is very powerful paradigm for running and managing Agents.

---

Emacs' open runtime environment would enable AI agents to provide more effective assistance, itterating and streamlining workflows and making the user experience ever more personalized and optimized.
And the LLM immidiately has the entirety of emacs' capabilities at its fingertipps, hijacking existing infrastructure and meeting us developers where we are.

This is all fairly abstract. Lets get into specifics.


## What can EVA do in two years? {#what-can-eva-do-in-two-years}

an agent that combines the reasoning and planing abilities demonstrated by Graph of Thought, with the ability to access and navigate projects, an entire os, and the internet, and the ability to act and make changes to code.
so you have this tool you could tell to make add a new feature to a class and remove another, and then to make the rest of the codebase use the new feature and depracate the old, adjust test, git commit it once it works, and if the tests succeed, deploy it. and instead of you coding each step, you have an ongoing conversation with EVA who does all the execution, while you observe it and follow allong, halting it if it goes into a wrong direction and responding to question when the reasoning falls short.
you can collaborate on code, research, web browsing, emails, excel, whatever.


## Architecture {#architecture}

application loop
basic architecture is simple. we have an LLM and a Emacs package. the pass a command from emacs to the model as a prompt. the model responds with Elisp code. the response gets run by the repl. thats the basic application loop.

training loop
data
we have data and it looks like this
on a low level
and a high level.

input model
i used this model now, but different model might become available.

training loop
check the notebook here.

new model
results in this new model here. some metadata, location, capabilities
