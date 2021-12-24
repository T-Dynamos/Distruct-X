.class public Lcom/whatsapp/bomber/Main2Activity;
.super Landroid/app/Activity;
.source "Main2Activity.java"


# instance fields
.field private _timer:Ljava/util/Timer;

.field private add:Ljava/util/TimerTask;

.field private button1:Landroid/widget/Button;

.field private edittext1:Landroid/widget/EditText;

.field private edittext2:Landroid/widget/EditText;

.field private hyh:Landroid/content/Intent;

.field private imageview1:Landroid/widget/ImageView;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private textview1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->_timer:Ljava/util/Timer;

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->hyh:Landroid/content/Intent;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/whatsapp/bomber/Main2Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->edittext2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/whatsapp/bomber/Main2Activity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->hyh:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/whatsapp/bomber/Main2Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->edittext1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/whatsapp/bomber/Main2Activity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/whatsapp/bomber/Main2Activity;->add:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$4(Lcom/whatsapp/bomber/Main2Activity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/whatsapp/bomber/Main2Activity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->add:Ljava/util/TimerTask;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/whatsapp/bomber/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->linear1:Landroid/widget/LinearLayout;

    .line 66
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/whatsapp/bomber/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->textview1:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/whatsapp/bomber/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->linear3:Landroid/widget/LinearLayout;

    .line 68
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/whatsapp/bomber/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->button1:Landroid/widget/Button;

    .line 69
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/whatsapp/bomber/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->edittext2:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/whatsapp/bomber/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->edittext1:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/whatsapp/bomber/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->imageview1:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->button1:Landroid/widget/Button;

    new-instance v1, Lcom/whatsapp/bomber/Main2Activity$1;

    invoke-direct {v1, p0}, Lcom/whatsapp/bomber/Main2Activity$1;-><init>(Lcom/whatsapp/bomber/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private initializeLogic()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->linear1:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity;->textview1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/whatsapp/bomber/Main2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/test.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 99
    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        -0xb704f
        -0x48b3
    .end array-data
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
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 131
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 135
    return-object v1

    .line 132
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/whatsapp/bomber/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 150
    invoke-virtual {p0}, Lcom/whatsapp/bomber/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 145
    invoke-virtual {p0}, Lcom/whatsapp/bomber/Main2Activity;->getResources()Landroid/content/res/Resources;

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
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 111
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
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
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 124
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
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/whatsapp/bomber/Main2Activity;->setContentView(I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/whatsapp/bomber/Main2Activity;->initialize(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/whatsapp/bomber/Main2Activity;->initializeLogic()V

    .line 62
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/whatsapp/bomber/Main2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    return-void
.end method
