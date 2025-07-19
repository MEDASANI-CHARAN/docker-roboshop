ARG version
FROM almalinux:${version:-9}
ENV COURSE="DevOps" \
    PLACE="Bangalore" \
    DURATION="120HRS" 
ARG SUBJECT="DevOps-with-AWS" \
    AREA="ITPL" \
    TIME="150HRS" 
ENV AREA=${AREA}
RUN echo "Hi, course is:${COURSE}}, time is:${TIME}, place is:${PLACE}, area is:${AREA}}"
CMD ["sleep", "1000"]
