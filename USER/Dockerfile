FROM almalinux:9
RUN dnf install git -y
# CMD ["ping", "google.com"]
# ENTRYPOINT ["ping", "google.com"]
RUN useradd sivakumar
USER sivakumar
ENTRYPOINT ["ping"]
CMD ["google.com"]