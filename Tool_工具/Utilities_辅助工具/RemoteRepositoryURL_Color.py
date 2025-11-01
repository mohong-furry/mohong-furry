import os
def clear():
	os.system('clear')
clear()
a = 0
# 颜色定义
COLORS = {
    'red': '\033[91m',
    'green': '\033[92m', 
    'yellow': '\033[93m',
    'blue': '\033[94m',
    'magenta': '\033[95m',
    'cyan': '\033[96m',
    'white': '\033[97m',
    'reset': '\033[0m',
    'bold': '\033[1m'
}
def c(text, color='white'):
    return f"{COLORS.get(color, COLORS['white'])}{text}{COLORS['reset']}"

def dev_P_sign():
	global a
	if a == 0:
		a += 1
		print(c('''作者
MoHong • Jiao
QQ\t2537456446
QQ群\thttps://qm.qq.com/q/qv9RK4Zm8
GH主页\thttps://github.com/mohong-furry''', 'cyan'))
def rf():
	global a
	a = 0
while 1:
	dev_P_sign()
	print(c("远程仓库平台链接生成器", 'bold') + c(" - 着色版", 'yellow'))
	print(c("请输入以下lD追踪代码平台归属地", 'green'))
	print(c("基本上每个选择都是用1-9", 'green'))
	print(c("以下是列表", 'green'))
	print(c("\t1 国外", 'blue'))
	print(c("\t2 国内", 'blue'))
	country = input(c("请选择 (1/2): ", 'yellow'))
	if country == "1":
		country = "NOCN"
	elif country == "2":
		country = "CN"
	else:
		print(c("滚回去", 'red'))
		exit()
	print(c(f"你选择的地区\t{country}", 'green'))
	if country == "NOCN":
		print(c("请选择具体平台", 'green'))
		print(c("国际远程代码仓库平台", 'magenta'))
		print(c("1 Github", 'blue'))
		print(c("2 GitLab", 'blue'))
		platform = input(c("请选择 (1/2): ", 'yellow'))
		if platform == "1":
			platform = "github"
		elif platform == "2":
			platform = "gitlab"
		else:
			print(c("求哥哥滚!", 'red'))
			exit()
	elif country == "CN":
		print(c("请选择具体平台", 'green'))
		print(c("中国远程代码仓库平台", 'magenta'))
		print(c("1 Gitee", 'blue'))
		platform = input(c("请选择 (1): ", 'yellow'))
		if platform == "1":
			platform = "gitee"
		else:
			print(c("哥哥，其实我不想跟你分开，我被算法所迫，只能……", 'red'))
			exit()
	print(c(f"已选择平台: {platform}", 'green'))
	break
print(c("\n欢迎来到核心功能区", 'bold') + c(" 🎯", 'magenta'))
print(c("你已经没有路可以回去了", 'yellow'))
print(c("接下来请输入用户名", 'green'))
name = input(c("用户名: ", 'yellow'))
print(c("路径(开头有仓库名，且请务必输入全部路径，以防万一)", 'green'))
url = input(c("路径: ", 'yellow'))
print(c("请查看生成的结果:", 'bold'))
print(c(f"https://{platform}.com/{name}/{url}", 'cyan'))
print(c("再次鸣谢作者", 'magenta'))
rf()
dev_P_sign()