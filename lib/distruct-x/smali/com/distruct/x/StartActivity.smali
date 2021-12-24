.class public Lcom/distruct/x/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"


# instance fields
.field private button1:Landroid/widget/Button;

.field private edittext1:Landroid/widget/EditText;

.field private linear5:Landroid/widget/LinearLayout;

.field private textview3:Landroid/widget/TextView;

.field private webview1:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/distruct/x/StartActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/distruct/x/StartActivity;->webview1:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/distruct/x/StartActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/distruct/x/StartActivity;->edittext1:Landroid/widget/EditText;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/distruct/x/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/distruct/x/StartActivity;->linear5:Landroid/widget/LinearLayout;

    .line 56
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/distruct/x/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/distruct/x/StartActivity;->textview3:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/distruct/x/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/distruct/x/StartActivity;->edittext1:Landroid/widget/EditText;

    .line 58
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/distruct/x/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/distruct/x/StartActivity;->button1:Landroid/widget/Button;

    .line 59
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/distruct/x/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/distruct/x/StartActivity;->webview1:Landroid/webkit/WebView;

    .line 60
    iget-object v0, p0, Lcom/distruct/x/StartActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/distruct/x/StartActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 63
    iget-object v0, p0, Lcom/distruct/x/StartActivity;->button1:Landroid/widget/Button;

    new-instance v1, Lcom/distruct/x/StartActivity$1;

    invoke-direct {v1, p0}, Lcom/distruct/x/StartActivity$1;-><init>(Lcom/distruct/x/StartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/distruct/x/StartActivity;->webview1:Landroid/webkit/WebView;

    new-instance v1, Lcom/distruct/x/StartActivity$2;

    invoke-direct {v1, p0}, Lcom/distruct/x/StartActivity$2;-><init>(Lcom/distruct/x/StartActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    return-void
.end method

.method private initializeLogic()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/distruct/x/StartActivity;->linear5:Landroid/widget/LinearLayout;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Lcom/distruct/x/StartActivity;->textview3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/distruct/x/StartActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/accent.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 98
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
    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 130
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 134
    return-object v1

    .line 131
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/distruct/x/StartActivity;->getResources()Landroid/content/res/Resources;

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
    .line 149
    invoke-virtual {p0}, Lcom/distruct/x/StartActivity;->getResources()Landroid/content/res/Resources;

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
    .line 144
    invoke-virtual {p0}, Lcom/distruct/x/StartActivity;->getResources()Landroid/content/res/Resources;

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
    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 110
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 117
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 123
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
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/distruct/x/StartActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0, p1}, Lcom/distruct/x/StartActivity;->initialize(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/distruct/x/StartActivity;->initializeLogic()V

    .line 52
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/distruct/x/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    return-void
.end method
