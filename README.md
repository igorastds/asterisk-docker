# раз

сделай docker build -t aster . билдится оно.. ну на моем i7, минут 20.

там как volume создаются /etc/asterisk, /var/log/asterisk

docker run --name asterisk-data --entrypoint /bin/echo aster shishka # сделает echo шишка

docker run --name asterisk --volumes-from asterisk-data --entrypoint /usr/bin/asterisk aster # поднимет тебе на хосте астериск с дефолтными конфигами

docker kill asterisk

docker run -ti --net host --name asterisk --volumes-from asterisk-data --entrypoint /bin/bash # приаттачься в интерактиве, поредактируй чонить в /var/log/asterisk и /etc/asterisk вимом :)

docker kill asterisk

docker run -ti --name asterisk --volumes-from asterisk-data --entrypoint /bin/bash # проверь свои сделанные правки

docker kill asterisk

mkdir /tmp/asterisk; touch /tmp/asterisk/wtf.txt

docker run -ti --name asterisk --volumes-from asterisk-data -v /tmp/asterisk:/etc/asterisk --entrypoint /bin/bash # проверь свои сделанные правки :)

# два

есть моменты :) volume в этом случае создает легкий оверхед.
net host необязателен, дефолтные expose там неплохи.