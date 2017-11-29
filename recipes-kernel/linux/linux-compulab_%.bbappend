FILESEXTRAPATHS_prepend := "${THISDIR}/custom-som:"

LOCALVERSION = "-custom-som"

SRC_URI_append_cl-som-imx6ul += "\
	file://custom-cl-som-imx.README \
"

SRC_URI_append_cl-som-imx6 += "\
	file://custom-cl-som-imx.README \
"

SRC_URI_append_cl-som-imx7 += "\
	file://custom-cl-som-imx.README \
"

SRC_URI_append_cm-fx6-evk += "\
	file://custom-cl-som-imx.README \
"
