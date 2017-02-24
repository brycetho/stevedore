# pvim () { docker run --rm -v `pwd`:/pvim -e VUSER=$USER -e FILE=$1 -it brycetho/pvim ; }

FROM ubuntu:16.04
MAINTAINER Bryce Thomsen
WORKDIR /pvim
COPY ./vim.list /etc/apt/sources.list.d/
COPY ./vimrc ~/.vimrc
COPY ./entrypoint.sh /
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F06FC659
RUN apt-get update && apt-get install -y vim git
# RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# RUN vim +PluginInstall +qall
CMD ["/entrypoint.sh"]
