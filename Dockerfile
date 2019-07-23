ARG codeversion="latest"
from ubuntu:$codeversion
run echo$codeversion
ARG licence_key="1234-789"
ENV ORA_PORT=1521
label maintainer <ranjith.samudrala@oracle.com>
run mkdir /code
copy shellscript.sh /code/shellscript.sh
run chmod +x /code/shellscript.sh
run echo $licence_key
workdir /code
cmd sh /code/shellscript.sh
