cd
git init
git remote add -f origin https://github.com/mknurs/dots
git config core.sparseCheckout true

printf ".bash_profile\n" >> .git/info/sparse-checkout
printf ".bashrc\n" >> .git/info/sparse-checkout
printf ".config/nvim\n" >> .git/info/sparse-checkout
git pull origin master
