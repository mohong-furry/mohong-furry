import os
def clear():
	os.system('clear')
clear()
a = 0
def dev_P_sign():
	global a
	if a == 0:
		a += 1
		print('''作者
MoHong • Jiao
QQ\t2537456446
QQ群\thttps://qm.qq.com/q/qv9RK4Zm8
GH主页\thttps://github.com/mohong-furry''')
def rf():
	global a
	a = 0
while 1:
	dev_P_sign()
	print("远程仓库平台链接生成器\n请输入以下lD追踪代码平台归属地\n基本上每个选择都是用1-9\n以下是列表\n\t1 国外\n\t2 国内")
	country = input()
	if country == "1":
		country = "NOCN"
	elif country == "2":
		country = "CN"
	else:
		print("滚回去")
		exit()
	print(f"你选择的地区\t{country}")
	if country == "NOCN":
		print("请选择具体平台\n国际远程代码仓库平台\n1 Github\n2 GitLab")
		platform = input()
		if platform == "1":
			platform = "github"
		elif platform == "2":
			platform = "gitlab"
		else:
			print("求哥哥滚!")
			exit()
	elif country == "CN":
		print("请选择具体平台\n中国远程代码仓库平台\n1 Gitee")
		platform = input()
		if platform == "1":
			platform = "gitee"
		else:
			print("哥哥，其实我不想跟你分开，我被算法所迫，只能……")
			exit()
	print(platform)
	break
print("\n欢迎来到核心功能区\n你已经没有路可以回去了\n接下来请输入用户名")
name = input()
print("路径(开头有仓库名，且请务必输入全部路径，以防万一)")
url = input()
print(f"请查看\nhttps://{platform}.com/{name}/{url}\n再次鸣谢作者")
rf()
dev_P_sign()