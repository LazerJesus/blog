# #!/bin/bash

# # Check if Hugo and Git are installed
# if ! command -v hugo &> /dev/null || ! command -v git &> /dev/null; then
#     echo "Hugo and Git are required to run this script. Please install them and try again."
#     exit 1
# fi

# # Create a new Hugo site and set up the Stack theme
# hugo new site Blog
# cd Blog
# git init
# git submodule add https://github.com/CaiJimmy/hugo-theme-stack.git themes/stack

# # Set theme in the Hugo config file
# echo 'theme = "stack"' >> config.toml

# # Set baseURL in the Hugo config file
# echo "baseURL = \"https://finnfrotscher.com/\"" >> config.toml

# # Remove unwanted features from the config file
# cat <<EOF >> config.toml
# disableKinds = ["taxonomyTerm", "archive", "category", "search"]

# [params]
#   author = "Finn Frotscher"
#   description = "Personal blog and project repository"
#   images = ["images/placeholder.jpg"]
#   keywords = ["blog", "projects", "Finn Frotscher"]

#   utm = false
#   readMore = true
#   dateForm = "Jan 2, 2006"
# EOF


# Create content folders and files
# mkdir -p content/posts content/pages content/image-seed


current_date=$(date "+%Y-%m-%dT%H:%M:%S%z")

cat <<EOF > content/posts/company-culture.md
---
title: "How to Create a Company Culture"
date: ${current_date}
tags: ["company culture", "management"]
draft: false
---

Content of your article about company culture goes here.
EOF


cat <<EOF > content/posts/data-infrastructure.md
---
title: "How to Set Up Your Data Infrastructure"
date: ${current_date}
tags: ["data", "infrastructure"]
draft: false
---

Content of your article about setting up data infrastructure goes here.
EOF

exit 1

cat <<EOF > content/posts/intent-vision-post-ai-human.md
---
title: "Intent: A Vision for the Post-AI Human"
date: ${current_date}
tags: ["ai", "vision", "human"]
draft: false
---

Content of your article about a vision for the post-AI human goes here.
EOF

cat <<EOF > content/pages/about.md
---
title: "About"
date: ${current_date}
menu: "main"
weight: 2
---

This is a dummy about page. You can edit this page to tell your visitors more about yourself.
EOF

# Create placeholder image for the image-seed page
mkdir -p static/images
curl https://via.placeholder.com/600x400.jpg -o static/images/placeholder.jpg

cat <<EOF > content/image-seed/_index.md
---
title: "Image Seed"
date: ${current_date}
url: /image-seed/
---
![Placeholder Image](/images/placeholder.jpg)
EOF

# Create the .gitignore file
cat <<EOF > .gitignore
resources/
public/
.cache/
.idea/
EOF

# Commit and push the initial project structure to GitHub
git add .
git commit -m "Initial commit of Hugo blog with Stack theme"
git branch -M main
git remote add origin git
