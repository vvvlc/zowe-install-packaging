# disable all autoconversions
# based https://github.com/zowe/zowe-install-packaging/issues/142#issuecomment-494521734

echo "Disabling AUTOCVT"
export _BPXK_AUTOCVT="OFF"
export _CEE_RUNOPTS=""
export _TAG_REDIR_IN=""
export _TAG_REDIR_OUT=""
export _TAG_REDIR_ERR=""

#enforce "Standard path" to prevent execution Rocket tools like sed
echo "Enforcing standard path"
export PATH="./:/bin:/usr/sbin:/usr/lpp/NFS:/usr/local/bin":$PATH
echo $PATH