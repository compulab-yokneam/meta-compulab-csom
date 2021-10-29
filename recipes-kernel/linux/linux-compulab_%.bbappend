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

SRC_URI_append += "\
	file://00-compulab-config-fragment.cfg \
"

do_post_configure() {
    for _cfg in $(ls "${WORKDIR}/*.cfg"); do
        cat ${_cfg} >> $config
    done
}

addtask post_configure after do_configure before do_compile
