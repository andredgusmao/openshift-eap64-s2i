FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift

COPY ./configuration/standalone-openshift.xml /opt/conf/
RUN ln -sf /opt/conf/standalone-openshift.xml $JBOSS_HOME/standalone/configuration/standalone-openshift.xml

COPY modules $JBOSS_HOME/modules/system/layers/base 

RUN touch /opt/eap/I_AM_HERE_v01