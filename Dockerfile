FROM memaldi/ckan:2.8.5


USER root

RUN ckan-pip install -e git+https://github.com/edincubator/ckanext-protect_resources#egg=ckanext-protect_resources
RUN ckan-pip install -e git+https://github.com/edincubator/ckanext-gdpr#egg=ckanext-gdpr

USER ckan