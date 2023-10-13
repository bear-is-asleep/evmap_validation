# Purpose: Make splines for GENIE


NUPDG="12"
TGT="1000180400"
NEVTS="10000"
GEN="NuEElastic"
TUNE="G18_10a_00_000"
E="100"

#Make if statement to set name of neutrino given NUPDG
if [ ${NUPDG} == "14" ]; then
  NEUTRINO="numu"
elif [ ${NUPDG} == "-14" ]; then
  NEUTRINO="numubar"
elif [ ${NUPDG} == "12" ]; then
  NEUTRINO="nue"
elif [ ${NUPDG} == "-12" ]; then
  NEUTRINO="nuebar"
fi

echo gevgen \
    -p ${NUPDG} -t ${TGT} --event-generator-list ${GEN} -n ${NEVTS} -e ${E} --tune ${TUNE}

gevgen \
    -p ${NUPDG} -t ${TGT} --event-generator-list ${GEN} -n ${NEVTS} -e ${E} --tune ${TUNE}