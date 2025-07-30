FROM almalinux:9
RUN dnf install git -y
# CMD ["ping", "google.com"]
# ENTRYPOINT ["ping", "google.com"]
RUN useradd charan
USER charan
ENTRYPOINT ["ping"]
CMD ["google.com"]