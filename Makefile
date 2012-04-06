include /usr/local/share/luggage/luggage.make

TITLE=Install_pebble_configuration_profiles
PACKAGE_NAME=Install_pebble_configuration_profiles
REVERSE_DOMAIN=com.pebbleit
PAYLOAD=\
	pack-script-postflight\
	pack-trust\
	pack-enroll

pack-trust:
		@sudo mkdir -p ${WORK_D}/tmp/
		@sudo ${CP} trust.mobileconfig ${WORK_D}/tmp/trust.mobileconfig
		
pack-enroll:
		@sudo mkdir -p ${WORK_D}/tmp/
		@sudo ${CP} enroll.mobileconfig ${WORK_D}/tmp/enroll.mobileconfig