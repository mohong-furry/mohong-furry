#!/bin/bash

# 颜色定义
RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
BLUE='\033[94m'
MAGENTA='\033[95m'
CYAN='\033[96m'
WHITE='\033[97m'
BOLD='\033[1m'
RESET='\033[0m'

# 颜色输出函数
c() {
    local text="$1"
    local color="$2"
    case $color in
        red) echo -e "${RED}${text}${RESET}" ;;
        green) echo -e "${GREEN}${text}${RESET}" ;;
        yellow) echo -e "${YELLOW}${text}${RESET}" ;;
        blue) echo -e "${BLUE}${text}${RESET}" ;;
        magenta) echo -e "${MAGENTA}${text}${RESET}" ;;
        cyan) echo -e "${CYAN}${text}${RESET}" ;;
        bold) echo -e "${BOLD}${text}${RESET}" ;;
        *) echo -e "${WHITE}${text}${RESET}" ;;
    esac
}

# 清屏
clear

# 作者信息函数
dev_P_sign() {
    if [ "$a" -eq 0 ]; then
        a=1
        c "作者" "cyan"
        c "MoHong • Jiao" "cyan"
        c "QQ\t2537456446" "cyan"
        c "QQ群\thttps://qm.qq.com/q/qv9RK4Zm8" "cyan"
        c "GH主页\thttps://github.com/mohong-furry" "cyan"
        echo
    fi
}

# 重置函数
rf() {
    a=0
}

# 初始化变量
a=0

# 主循环
while true; do
    dev_P_sign
    
    c "远程仓库平台链接生成器" "bold"
    c " - 着色版" "yellow"
    c "请输入以下lD追踪代码平台归属地" "green"
    c "基本上每个选择都是用1-9" "green"
    c "以下是列表" "green"
    c "\t1 国外" "blue"
    c "\t2 国内" "blue"
    
    read -p "$(c "请选择 (1/2): " "yellow")" country
    
    case $country in
        1)
            country="NOCN"
            ;;
        2)
            country="CN"
            ;;
        *)
            c "滚回去" "red"
            exit 1
            ;;
    esac
    
    c "你选择的地区\t$country" "green"
    
    if [ "$country" = "NOCN" ]; then
        c "请选择具体平台" "green"
        c "国际远程代码仓库平台" "magenta"
        c "1 Github" "blue"
        c "2 GitLab" "blue"
        
        read -p "$(c "请选择 (1/2): " "yellow")" platform
        
        case $platform in
            1)
                platform="github"
                ;;
            2)
                platform="gitlab"
                ;;
            *)
                c "求哥哥滚!" "red"
                exit 1
                ;;
        esac
    elif [ "$country" = "CN" ]; then
        c "请选择具体平台" "green"
        c "中国远程代码仓库平台" "magenta"
        c "1 Gitee" "blue"
        
        read -p "$(c "请选择 (1): " "yellow")" platform
        
        case $platform in
            1)
                platform="gitee"
                ;;
            *)
                c "哥哥，其实我不想跟你分开，我被算法所迫，只能……" "red"
                exit 1
                ;;
        esac
    fi
    
    c "已选择平台: $platform" "green"
    break
done

c "\n欢迎来到核心功能区" "bold"
c " 🎯" "magenta"
c "你已经没有路可以回去了" "yellow"
c "接下来请输入用户名" "green"

read -p "$(c "用户名: " "yellow")" name

c "路径(开头有仓库名，且请务必输入全部路径，以防万一)" "green"
read -p "$(c "路径: " "yellow")" url

c "请查看生成的结果:" "bold"
c "https://${platform}.com/${name}/${url}" "cyan"
c "再次鸣谢作者" "magenta"

rf
dev_P_sign