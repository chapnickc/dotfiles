# dotfiles

Using the right tools can have a significant impact on your productivity. 


## Initialize a Repository

To begin with, make a directory to store all of your dot files. 

```bash
mkdir ~/.dotfiles
cd ~/.dotfiles
git init
```


You will also want to create symbolic links so that your machine 
will know where to look for the files it's expecting

```bash
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
```



# Download Part of the Repository

 
1. Create the Repository

   This will create an empty repository and fetch all objects, but 
   does not check them out.

    ``` 
    mkdir <repo>
    cd <repo>
    git init
    git remote add -f origin <url>
    ```

2. Enable Sparse Checkout & Add Desired Repositories

   Enable sparse checkout, then define which files and 
   folders you want to checkout.

    ```
    git config core.sparseCheckout true
    echo some/dir/ >> .git/info/sparse-checkout
    echo another/sub/tree >> .git/info/sparse-checkout
    ```

3. Pull From the Source

    Update the repository with the new state and update submodules 
    as necessary.

    ```bash
    git pull origin master

    git submodule init
    git submodule update
    ```

4. Example

    Here is an example of how to clone my vim configuration, including
    all plugins.

    ```
    mkdir ~/.vim 
    cd ~/.vim

    git init
    git remote add -f origin https://github.com/chapnickc/dotfiles/

    git config core.sparseCheckout true
    echo "vim" >> .git/info/sparse-checkout 

    git pull origin master

    git submodule init
    git submodule update

    # Create a symbolic link to system vim configuration file
    ln -s ./dotfiles/vim/.vimrc ~/.vimrc
    ```

For more information on sparse checkout:
+ [A question on stack overflow](http://stackoverflow.com/questions/600079/is-there-any-way-to-clone-a-git-repositorys-sub-directory-only)
+ [Blog entry by Jason Karns](http://jasonkarns.com/blog/subdirectory-checkouts-with-git-sparse-checkout/)



# Vim 

I use [Vundle](https://github.com/VundleVim/Vundle.vim) for package management
in Vim. I've use Pathogen in the past, but from my experience I prefer 
Vundle.



# Tmux



# IPython

The `ipython_config.py` file belongs in the ~/.iprofile/[profilename]
directory, where `[profile]` is typically `profile_default`. To 
find out more about Python config [files here](http://ipython.readthedocs.io/en/stable/config/intro.html#setting-config)


# Comments

Notable inspiration has come from Dan Van Boxel's "[Guide to Effective Computing](http://dvbuntu.github.io/compute/posts/2050/01/01/workflow.html)"


