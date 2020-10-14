FROM memaldi/ckan:2.7.2


RUN pip install -e git+https://github.com/edincubator/ckanext-protect_resources#egg=ckanext-protect_resources
RUN pip install -e git+https://github.com/REACH-incubator/ckanext-gdpr#egg=ckanext-gdpr
RUN pip install -e git+https://github.com/REACH-Incubator/ckanext-REACH_theme#egg=ckanext-reach_theme

COPY production.ini /etc/ckan/default/production.ini