FROM bde2020/hive:2.3.2-postgresql-metastore

ARG RANGER_VERSION
ENV RANGER_VERSION=${RANGER_VERSION:-2.1.0}

# Add Ranger Hive Plugin
ENV RANGER_HIVE_PLUGIN_HOME /opt/ranger-hive-plugin
COPY ranger-${RANGER_VERSION}-hive-plugin.tar.gz /opt/ranger-${RANGER_VERSION}-hive-plugin.tar.gz

WORKDIR /opt

RUN tar -xvf ranger-${RANGER_VERSION}-hive-plugin.tar.gz \
    && ln -s ranger-${RANGER_VERSION}-hive-plugin $RANGER_HIVE_PLUGIN_HOME \
    && rm -f ranger-${RANGER_VERSION}-hive-plugin.tar.gz