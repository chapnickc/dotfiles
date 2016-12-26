# the dotfiles



# Motivation

Having the right tools can have a significant 
impact on your productivity, particularly for developers. This setup is a means with which to maintain the quality of your tools
by saving your configuration files.

Feel free to use anything you see here!

## Initialize a Repository

To begin with, make a directory to store all of your dot files. 

```bash

mkdir ~/.dotfiles
cd ~/.dotfiles
git init

```





You will also want to create symbolic links so that your
machine will know where to look for the files it's expecting

<code>ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc</code>




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
    git remote add -f origin https://github.com/chapnickc/.dotfiles/

    git config core.sparseCheckout true
    echo "vim" >> .git/info/sparse-checkout 

    git pull origin master

    git submodule init
    git submodule update

    # Create a symbolic link
    ln -s ~/<repo>/vim/.vimrc ~/.vimrc
    ```

For more information on sparse checkout:
+ [A question on stack overflow](http://stackoverflow.com/questions/600079/is-there-any-way-to-clone-a-git-repositorys-sub-directory-only)
+ [Blog entry by Jason Karns](http://jasonkarns.com/blog/subdirectory-checkouts-with-git-sparse-checkout/)


# Extension-Specific Comments

# Vim 

In regards to vim, you will need to add your git repository to the 
'runtimepath' by adding the following line to the top of 
your .vimrc file so that [Pathogen](https://github.com/tpope/vim-pathogen)
can load the appropriate modules.


<code>set rtp+=~/.dotfiles/vim</code>


# IPython

The `ipython_config.py` file belongs in the ~/.iprofile/[profilename]
directory, where `[profile]` is typically `profile_default`. To 
find out more about Python config [files here](http://ipython.readthedocs.io/en/stable/config/intro.html#setting-config)



