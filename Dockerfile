# Usar la imagen base oficial de Fluentd
FROM fluentd

# Cambiar a usuario root para instalar gemas
USER root

# Instalamos el plugin de Elasticsearch para Fluentd
RUN fluent-gem install fluent-plugin-elasticsearch

# Cambiar a usuario root para instalar gemas
USER fluent

# Configuramos Fluentd para que escuche en el puerto adecuado
EXPOSE 24224

# Establecer el comando por defecto para ejecutar Fluentd
CMD ["fluentd", "-c", "/fluentd/etc/fluentd.conf", "-p", "/fluentd/plugins"]
