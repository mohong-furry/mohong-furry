#!/bin/bash

# 清屏
clear

# 作者信息函数
dev_P_sign() {
    if [ $a -eq 0 ]; then
        a=1
        echo "作者"
        echo "MoHong • Jiao"
        echo -e "QQ\t2537456446"
        echo -e "QQ群\thttps://qm.qq.com/q/qv9RK4Zm8"
        echo -e "GH主页\thttps://github.com/mohong-furry"
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
    
    echo "远程仓库平台链接生成器"
    echo "请输入以下lD追踪代码平台归属地"
    echo "基本上每个选择都是用1-9"
    echo "以下是列表"
    echo -e "\t1 国外"
    echo -e "\t2 国内"
    
    read -p "" country
    
    case $country in
        1)
            country="NOCN"
            ;;
        2)
            country="CN"
            ;;
        *)
            echo "滚回去"
            exit 1
            ;;
    esac
    
    echo "你选择的地区	$country"
    
    if [ "$country" = "NOCN" ]; then
        echo "请选择具体平台"
        echo "国际远程代码仓库平台"
        echo "1 Github"
        echo "2 GitLab"
        
        read -p "" platform
        
        case $platform in
            1)
                platform="github"
                ;;
            2)
                platform="gitlab"
                ;;
            *)
                echo "求哥哥滚!"
                exit 1
                ;;
        esac
    elif [ "$country" = "CN" ]; then
        echo "请选择具体平台"
        echo "中国远程代码仓库平台"
        echo "1 Gitee"
        
        read -p "" platform
        
        case $platform in
            1)
                platform="gitee"
                ;;
            *)
                echo "哥哥，其实我不想跟你分开，我被算法所迫，只能……"
                exit 1
                ;;
        esac
    fi
    
    echo "$platform"
    break
done

echo ""
echo "欢迎来到核心功能区"
echo "你已经没有路可以回去了"
echo "接下来请输入用户名"

read -p "" name

echo "路径(开头有仓库名，且请务必输入全部路径，以防万一)"
read -p "" url

echo "请查看"
echo "https://${platform}.com/${name}/${url}"
echo "再次鸣谢作者"

rf
dev_P_sign