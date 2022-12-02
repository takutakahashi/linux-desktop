FROM manjarolinux/base

RUN pacman -S --needed --noconfirm base-devel make wget sudo git
ADD misc/sudoers /etc/sudoers.d/
RUN useradd owner \
  && mkdir /home/owner \
  && chown owner:owner /home/owner

COPY . /home/owner/.provision/
RUN chown owner:owner -R /home/owner/.provision

RUN su owner bash -c "make -C /home/owner/.provision manjaro"
USER owner
