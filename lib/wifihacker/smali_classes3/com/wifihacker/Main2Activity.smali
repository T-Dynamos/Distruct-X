.class public Lcom/wifihacker/Main2Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Main2Activity.java"


# instance fields
.field private You_Have_Been_Hacked:Landroid/app/Notification;

.field private _timer:Ljava/util/Timer;

.field private about:D

.field private button1:Landroid/widget/Button;

.field private imageview1:Landroid/widget/ImageView;

.field private main:D

.field private ok:Landroid/app/Notification;

.field private okt:Landroid/app/Notification;

.field private oktest:Ljava/util/TimerTask;

.field private okv:Landroid/os/Vibrator;

.field private test:Landroid/content/Intent;

.field private textview1:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;

.field private webview1:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->_timer:Ljava/util/Timer;

    .line 49
    iput-wide v2, p0, Lcom/wifihacker/Main2Activity;->about:D

    .line 50
    iput-wide v2, p0, Lcom/wifihacker/Main2Activity;->main:D

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->test:Landroid/content/Intent;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/wifihacker/Main2Activity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wifihacker/Main2Activity;->oktest:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$1(Lcom/wifihacker/Main2Activity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wifihacker/Main2Activity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->oktest:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wifihacker/Main2Activity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->test:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wifihacker/Main2Activity;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->okv:Landroid/os/Vibrator;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 75
    const v0, 0x7f0801aa

    invoke-virtual {p0, v0}, Lcom/wifihacker/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->textview1:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0801ab

    invoke-virtual {p0, v0}, Lcom/wifihacker/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->textview2:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0801cb

    invoke-virtual {p0, v0}, Lcom/wifihacker/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->webview1:Landroid/webkit/WebView;

    .line 78
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 80
    const v0, 0x7f0801ac

    invoke-virtual {p0, v0}, Lcom/wifihacker/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->textview3:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/wifihacker/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->imageview1:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/wifihacker/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->button1:Landroid/widget/Button;

    .line 83
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/wifihacker/Main2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/wifihacker/Main2Activity;->okv:Landroid/os/Vibrator;

    .line 85
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->webview1:Landroid/webkit/WebView;

    new-instance v1, Lcom/wifihacker/Main2Activity$1;

    invoke-direct {v1, p0}, Lcom/wifihacker/Main2Activity$1;-><init>(Lcom/wifihacker/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->imageview1:Landroid/widget/ImageView;

    new-instance v1, Lcom/wifihacker/Main2Activity$2;

    invoke-direct {v1, p0}, Lcom/wifihacker/Main2Activity$2;-><init>(Lcom/wifihacker/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->button1:Landroid/widget/Button;

    new-instance v1, Lcom/wifihacker/Main2Activity$3;

    invoke-direct {v1, p0}, Lcom/wifihacker/Main2Activity$3;-><init>(Lcom/wifihacker/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method private initializeLogic()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->webview1:Landroid/webkit/WebView;

    const-string v1, "https://icons8.com/preloaders/preloaders/1484/Circles-menu-3.gif"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/wifihacker/Main2Activity;->textview3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wifihacker/Main2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/ooks.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 144
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
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 176
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 180
    return-object v1

    .line 177
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/wifihacker/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 195
    invoke-virtual {p0}, Lcom/wifihacker/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 190
    invoke-virtual {p0}, Lcom/wifihacker/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 156
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 163
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 169
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
    .line 68
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/wifihacker/Main2Activity;->setContentView(I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/wifihacker/Main2Activity;->initialize(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/wifihacker/Main2Activity;->initializeLogic()V

    .line 72
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/wifihacker/Main2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    return-void
.end method
