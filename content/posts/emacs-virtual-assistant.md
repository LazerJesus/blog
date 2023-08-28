---
title: "EVA - The Ghost in my sh.el"
author: ["Finn"]
description: "The first AI trained to work along side you, in Emacs. The Emacs Virtual Assistant."
date: 2022-09-01T00:00:00+02:00
draft: false
slug: "emacs-virtual-assistant"
---

## (eva "say hello world") {#eva-say-hello-world}

We are in the middle of a once in a lifetime revolution. AI has is here and more is coming. If you're also an Emacs user, you're watching this revolution manifest from within your Emacs buffers, with the aid of packages like copilot.el or the amazing gpt.el. I continuously see more and more of my workflows get aided by these models.

But what if we could go further than calling 3rd party models from within Emacs. What if we could go **A LOT** further?

Introducing Emacs Virtual Assistant, short EVA. The first AI model intended to work alongside you within Emacs.

<figure align="right">

<img src="/ox-hugo/EVA-350.jpg" alt="EVA - Emacs Virtual Assistant" />

<figcaption>EVA will take on execution, freeing you to work on a higher order.</figcaption>

</figure>

To understand what EVA will be, follow me into a short exploration of the idea.


## Premise {#premise}

As AI becomes more prevalent and capable, it will handle an increasing amount of execution. Leaving us humans to drive intent and to judge design. A symbiotic relationship will form between humans and AI systems. Human intent will drive agent execution. The delta between state and goal getting bridged by colaborative itteration.

This process of symbiotic co-creation needs to be facilitated in a suitable environment. Both participants of this relationship, human and AI, each have their own role and needs. The AI needs methods for reasoning through instructions and problems, and tools at its disposal to do the actual implementation. And we need to have access and control over the reasoning and execution. To assess, provide feedback and steer. Reducing friction in this interaction will be critical, requireing fast feedback loops.
And Emacs provides the perfect environment for this.


## Emacs special sauce {#emacs-special-sauce}

Emacs provides three key ingredients that make it the ideal environment for human-AI symbiosis: it's entirely text based, it's interactive runtime, and a massive ecosystem.


### Text {#text}

Humans, language models, Emacs, and the subject matter we operate on share text as their common denominator. This greatly reduces friction. Emacs is controlled entirely through text, specifically the invocation of elisp functions. We load the subject matter of our work (code, a book, emails, etc) as text into emacs and call functions on it as text. Every keystroke is essentailly a functioncall. Eva can call the exact same functions.


### Runtime {#runtime}

Emacs is an interactive environment.
This allows the ai and us to inhabit the same space while working on the subject matter. i mean the buffers, functionspace, and editor space.
this is important and relevant because it makes the ai's actions very immediate. it aligns us. it's almost like empathy. by inhibitiing the same runtime, we can cocreate in realtime.

Unlike other editors that are just text manipulators, Emacs is essentially an open, continuous Lisp interpreter. This allows EVA to read from, write into, and even modify the environment in real-time. It's not just a playground for code; it's a living, breathing ecosystem where both the human and the AI agent can co-exist, allowing for real-time tracing, debugging, and control insertion at any step of the process.

Emacs is an open and continuous environment that an Agent can write into, read from and mutate, while the human operator can trace and insert control at any step.

This allows the human operator to trace and insert control at any step.


### Ecosystem {#ecosystem}

Today in Emacs, for any job-to-be-done that involves text, there is package for it. We can do anything that can be done with text on a computer. This is a testiment to the breadth and depth of possibilities the emacs enables. There are sohpisticated packages for everything. And the AI immidiately has the entirety of emacs' capabilities and at its fingertipps, hijacking existing infrastructure.

Whether you're coding in Python, writing LaTeX documents, or even managing your life through Org-mode, there's likely an Emacs package that's got you covered. This extensive library of functions and packages means that EVA can be trained to assist with virtually any text-related task you can think of, making the possibilities for human-AI collaboration virtually limitless.

Thats the three reasons why the environment Emacs provides is optimal for colaborative creating with an AI.


## The Ghost in my sh.el {#the-ghost-in-my-sh-dot-el}

So, how does EVA leverage Emacs' text, runtime, and ecosystem? To answer that in one sentence: You have an ongoing conversation with EVA, in the same space that the execution happens in, using a shared toolset.


### Execution {#execution}

When you call \`(eva "")\`, EVA generates Emacs Lisp code in response that's executed in the REPL, directly affecting the editor's state. She can work directly on the project files and adjust the code as needed. She can read the content of any resource, shell or process within your project to better understand the context. If a specialized task arises, EVA can spawn sub-agents focused on reasoning, planning or solving problems. If she needs clarification, EVA can initiate a chat buffer to ask you directly. When you're debugging a problem, she'll have access to all the same informatinon you do, and then some. You could even call her on a cron job to add some initiative on her end, or to automate routine tasks.


### Observability {#observability}

One point on observability here, which I'll come back to later.
This immidiacy of writing directly into the editor provides us human users with direct visibility into her reasoning and execution. It keeps feedback loops tight and aligns the model to our intent. We will most likely never be able to look into the model and understand what is going on. But tracing an AI's actions and reasoning in text is well within our abilities.


### Ongoing Conversation {#ongoing-conversation}

So, what's it like to co-create with EVA in real-time? Imagine a workspace where you're not just coding directly but actively conversing with EVA. Who takes on the heavy lifting of execution, allowing you to focus on higher-level thinking and decision-making and design.
The project you are working on is loaded into Emacs, creating a shared context for both of you. You can monitor her actions in real-time, step in to correct course if she veers off track, or provide additional context when she hits a roadblock.
It's not just collaboration; it's a dynamic, real-time partnership. It's like pair programming, but your partner is a machine that can think and act.


### Immitation {#immitation}

Let's explore one final thought: Couldn't EVA learn continuously by imitating us? She could if we employ Reinforcement Learning. EVA could predict your subsequent actions, effectively learning from the delta between her prediction and your actual action. This would turn every session with EVA into not just a collaboration but a training ground.

One a more note taking us squarely into the realm of science fiction. We can pool the changes to the activations which would allow for the continuous collective training of EVA. This isn't just theoretical; a [recent paper](https://arxiv.org/abs/2206.01288) supports the feasibility of such an approach. We would have to manage trust though.

<img src="/ox-hugo/blade-runner-hand-sync.gif" alt="Blade Runner 2049 joi mariette hand sync eva emacs virtual assistant" />


## Future {#future}

Microsoft will build out Visual Studio Code and Windows, "Open"AI has already launched their MVP with the plugins marketplace, and countless startups will join the race.
However, all of these act as intermediaries, sitting in  the middle, taking control and introducing friction.

So, what role does friction play and why is it essential?
AI is still in its early days, and the amounts of compute required are substantial. This means we need to maximize the utility of constrained resources. We need to remove friction for this reason.
Furthermore, there is a prevailing fear that AI will destroy society. While we are currently at a stage of AI being glorified autocomplete, I see no better way of forcing alignment than keeping feedback cycles small and having complete visibility into the reasoning and execution of the model.
Additionally, as a creator, I want to have the closest possible relationship with this new tool. To learn its ways, to get a good feeling and a strong intuition for it.
Lastly, cold hard evolutionary or market dynamics will drive us for optimization. We want to be at our most powerful; I want the power to create.

As highlighted in the leaked Google memo, open-source is the winning horse in this race.
After 45 years of existance and continous evolution, Emacs suddenly finds itself in a prime position to be ground zero for a wholy new paradigm of software development. I think we need to come together and build this.


## Present {#present}

But this vision can't be realized single-handedly.
At least I can't do it. My strength is in the vision and the narrative, but I need help with the development of the model and the application and its integration into Emacs. This project would require a large collective effort. I am sure, though, that we can get the infrastructure this requires financed. There is a business case here.

[what does the architecture look like and]
[the status quo of the project]

This will require time, effort, creativity, innovation, problem-solving, financial investment, and much more. Ultimately, it demands what we humans uniquely bring to the table: intent.
