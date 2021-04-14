FROM memaldi/ckan:2.7.2


# RUN pip install -e git+https://github.com/edincubator/ckanext-protect_resources#egg=ckanext-protect_resources
# RUN pip install -e git+https://github.com/REACH-incubator/ckanext-gdpr#egg=ckanext-gdpr
RUN pip install -e git+https://github.com/REACH-Incubator/ckanext-REACH_theme#egg=ckanext-reach_theme
RUN pip install -e git+https://github.com/edincubator/ckanext-ga#egg=ckanext-ga

COPY production.ini /etc/ckan/default/production.ini

RUN cp /src/ckanext-reach-theme/ckan/i18n/en_GB/LC_MESSAGES/ckan.po /src/ckan/ckan/i18n/en_GB/LC_MESSAGES/ckan.po
WORKDIR /src/ckan/
RUN python setup.py compile_catalog --locale en_GB