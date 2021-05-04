rem conda activate personal-blog
pelican content -o output -s publishconf.py
ghp-import -m "Generate Pelican site" --no-jekyll -b master output
git push origin master

rem https://opensource.com/article/19/5/run-your-blog-github-pages-python