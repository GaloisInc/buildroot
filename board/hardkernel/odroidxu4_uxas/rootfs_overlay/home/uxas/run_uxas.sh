# This script is invoked at system startup. Edit the variables below
# to customize the behavior.

UXAS_RUN_DIR=/home/uxas/run
UXAS_EXE=/home/uxas/uxas
UXAS_CFG_XML=/home/uxas/cfg.xml

if [ -d ${UXAS_RUN_DIR} -a -f ${UXAS_EXE} -a -f ${UXAS_CFG_XML} ]; then
    (cd ${UXAS_RUN_DIR} && ${UXAS_EXE} -cfgPath ${UXAS_CFG_XML})
else
    echo "Could not run ${UXAS_EXE} with ${UXAS_CFG_XML} in ${UXAS_RUN_DIR}";
fi
