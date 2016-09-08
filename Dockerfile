FROM perl:threaded
MAINTAINER hello@menzo.io

# Install DNS module
RUN cpanm Net::DNS && \
	rm -rf ~/.cpanm/

# Copy service
COPY ["fierce", "/opt/fierce"]
COPY ["entrypoint.sh", "/entrypoint.sh"]

RUN chmod +x /entrypoint.sh

# Working directory with hosts.txt
WORKDIR "/opt/fierce"

# Set fierce as entry point
ENTRYPOINT ["/entrypoint.sh"]