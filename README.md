## ssl-test

This project allows you to test quickly if a cert bundle and key are valid for nginx.

It should not be used to serve content.

## Usage

Copy your certs into the certs directory. They must be named:
* totest.bundle.pem : the certificate chain
* totest.key : the server key

```
docker build -t ssl-test .
docker run -it -p 443:443 -v `pwd`/certs:/etc/nginx/ssl  -v /tmp:/tmp ssl-test
```

If your cert is invalid, nginx will fail to start.

Open your browser and point at https://localhost
When the browser loads the page, if your cert loads fine, it will show the cert information and let you know it doesn't match your localhost host.

You can consult additional information in your browser to check the certificate chain if you want.

## License

Copyright 2017 Antoine Toulme

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.