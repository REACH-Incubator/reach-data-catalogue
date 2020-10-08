FROM memaldi/ckan:2.8.5


RUN . /usr/lib/ckan/venv/bin/activate
# RUN pip install -e git+https://github.com/edincubator/ckanext-ga#egg=ckanext-ga
RUN pip install -e git+https://github.com/edincubator/ckanext-protect_resources#egg=ckanext-protect_resources
RUN pip install -e git+https://github.com/edincubator/ckanext-gdpr#egg=ckanext-gdpr

USER ckan