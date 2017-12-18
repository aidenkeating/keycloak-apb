FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGtleWNsb2FrLWFwYgpkZXNjcmlwdGlvbjogS2V5Y2xvYWsgLSBP\
cGVuIFNvdXJjZSBJZGVudGl0eSBhbmQgQWNjZXNzIE1hbmFnZW1lbnQKYmluZGFibGU6IFRydWUK\
YXN5bmM6IG9wdGlvbmFsCnRhZ3M6IAogIC0gbW9iaWxlLXNlcnZpY2UKbWV0YWRhdGE6CiAgZGlz\
cGxheU5hbWU6IEtleWNsb2FrCiAgaW1hZ2VVcmw6ICJodHRwczovL3Bicy50d2ltZy5jb20vcHJv\
ZmlsZV9pbWFnZXMvNzAyMTE5ODIxOTc5MzQ0ODk3L29BQzA1Y0VCXzQwMHg0MDAucG5nIgogIGRv\
Y3VtZW50YXRpb25Vcmw6ICJodHRwOi8vd3d3LmtleWNsb2FrLm9yZy9kb2N1bWVudGF0aW9uLmh0\
bWwiCiAgcHJvdmlkZXJEaXNwbGF5TmFtZTogIlJlZCBIYXQsIEluYy4iCiAgc2VydmljZU5hbWU6\
IGtleWNsb2FrCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRpb246IERlcGxv\
eSBrZXljbG9hawogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6IHt9CiAgICBwYXJhbWV0ZXJz\
OiAKICAgIC0gbmFtZTogQURNSU5fTkFNRQogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICBkZWZh\
dWx0OiBhZG1pbgogICAgICB0eXBlOiBzdHJpbmcKICAgICAgdGl0bGU6IEtleWNsb2FrIGFkbWlu\
IHVzZXJuYW1lCiAgICAtIG5hbWU6IEFETUlOX1BBU1NXT1JECiAgICAgIHJlcXVpcmVkOiBUcnVl\
CiAgICAgIGRlZmF1bHQ6IGFkbWluCiAgICAgIHR5cGU6IHN0cmluZwogICAgICB0aXRsZTogS2V5\
Y2xvYWsgYWRtaW4gcGFzc3dvcmQKICAgIGJpbmRfcGFyYW1ldGVyczoKICAgIC0gbmFtZTogc2Vy\
dmljZQogICAgICB0aXRsZTogVGhlIHNlcnZpY2UgdGhlIGNsaWVudCBpcyBmb3IKICAgICAgdHlw\
ZTogc3RyaW5nCg=="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
