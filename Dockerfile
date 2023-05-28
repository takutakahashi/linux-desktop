FROM manjarolinux/base

RUN pacman -Sy
RUN pacman -S --needed --noconfirm base-devel make wget sudo git zsh openssh
ADD misc/sudoers /etc/sudoers.d/
RUN useradd -s /usr/bin/zsh owner \
  && mkdir /home/owner \
  && chown owner:owner /home/owner

COPY . /home/owner/.provision/
RUN chown owner:owner -R /home/owner/.provision

ENV CONTAINER=true
RUN su owner bash -c "make -C /home/owner/.provision manjaro"
USER owner
WORKDIR /home/owner
