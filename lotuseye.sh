check_version() {
    pre_ver='1'
    ver=$(curl -s -N http://huytoolsrv.000webhostapp.com/version | grep -o '[0-9a-z]')
    clear
    if [[ $pre_ver == $ver ]]
    then
        chmod +x main.sh
        ./main.sh
        exit
    else
        echo -e "${wht}[${re}!${wht}] ${grn}Đã có bản cập nhật mới!"          
        echo -ne "${wht}[${re}?${wht}] ${grn}Bạn có muốn cập nhật?(Y/N)=> "
           read slt
            case "$slt" in
            "Y") a_up
            ;;
            "y") a_up
            ;;
            "N") d_up
            ;;
            "n") d_up
            ;;
                *)
			    echo -e "===================================="
                echo -ne "${re}[!]${wht} Ký tự không hợp lệ "
			    sleep 0.75
			    check_version
            ;;
            esac
    fi
}

a_up() {
    patch='1'
    if [[ $patch ]]
}
check_version