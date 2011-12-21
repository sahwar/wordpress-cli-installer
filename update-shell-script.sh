#!/bin/bash

BASE_FILENAME='wordpress-cli-installer'
SHELL_SCRIPT="${BASE_FILENAME}.sh"
PHP_SCRIPT="${BASE_FILENAME}.php"
PHP_OPTIONS=''

cat > $SHELL_SCRIPT <<EOF
#!/bin/bash

#THIS FILE IS AUTOGENERATED, DO NOT EDIT IT
#EDIT ${PHP_SCRIPT}, THEN RUN $(basename $0) TO MAKE CHANGES

php $PHP_OPTIONS -- "\$@" <<EOF
EOF

php -w $PHP_SCRIPT | sed 's/\$/\\$/g' >> $SHELL_SCRIPT

echo >> $SHELL_SCRIPT
echo 'EOF' >> $SHELL_SCRIPT