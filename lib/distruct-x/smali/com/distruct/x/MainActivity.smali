.class public Lcom/distruct/x/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private _timer:Ljava/util/Timer;

.field private imageview1:Landroid/widget/ImageView;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear6:Landroid/widget/LinearLayout;

.field private ok:Ljava/util/TimerTask;

.field private test:Landroid/content/Intent;

.field private textview1:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->_timer:Ljava/util/Timer;

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->test:Landroid/content/Intent;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/distruct/x/MainActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/distruct/x/MainActivity;->test:Landroid/content/Intent;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/distruct/x/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->linear1:Landroid/widget/LinearLayout;

    .line 62
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/distruct/x/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->imageview1:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/distruct/x/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->linear3:Landroid/widget/LinearLayout;

    .line 64
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/distruct/x/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->textview1:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/distruct/x/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->textview3:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/distruct/x/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->linear6:Landroid/widget/LinearLayout;

    .line 67
    return-void
.end method

.method private initializeLogic()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/distruct/x/MainActivity;->textview1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/distruct/x/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/okh.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 71
    new-instance v0, Lcom/distruct/x/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/distruct/x/MainActivity$1;-><init>(Lcom/distruct/x/MainActivity;)V

    iput-object v0, p0, Lcom/distruct/x/MainActivity;->ok:Ljava/util/TimerTask;

    .line 83
    iget-object v0, p0, Lcom/distruct/x/MainActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/distruct/x/MainActivity;->ok:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 84
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
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 116
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 120
    return-object v1

    .line 117
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/distruct/x/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 135
    invoke-virtual {p0}, Lcom/distruct/x/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 130
    invoke-virtual {p0}, Lcom/distruct/x/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 96
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 109
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
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/distruct/x/MainActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/distruct/x/MainActivity;->initialize(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/distruct/x/MainActivity;->initializeLogic()V

    .line 58
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/distruct/x/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-void
.end method
