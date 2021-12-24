.class public Lcom/wifihacker/PassActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PassActivity.java"


# instance fields
.field private _ok_request_listener:Lcom/wifihacker/RequestNetwork$RequestListener;

.field private button2:Landroid/widget/Button;

.field private edittext2:Landroid/widget/EditText;

.field private edittext3:Landroid/widget/EditText;

.field private imageview1:Landroid/widget/ImageView;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private linear6:Landroid/widget/LinearLayout;

.field private ok:Lcom/wifihacker/RequestNetwork;

.field private oktest:Landroid/content/Intent;

.field private textview1:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;

.field private textview4:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->oktest:Landroid/content/Intent;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/wifihacker/PassActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wifihacker/PassActivity;->edittext3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wifihacker/PassActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wifihacker/PassActivity;->oktest:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wifihacker/PassActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wifihacker/PassActivity;->textview4:Landroid/widget/TextView;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f0801aa

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->textview1:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->linear3:Landroid/widget/LinearLayout;

    .line 70
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->linear4:Landroid/widget/LinearLayout;

    .line 71
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->linear5:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->linear6:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->imageview1:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->linear1:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0801ab

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->textview2:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->edittext2:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f0801ac

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->textview3:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->edittext3:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f0801ad

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->textview4:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->button2:Landroid/widget/Button;

    .line 81
    new-instance v0, Lcom/wifihacker/RequestNetwork;

    invoke-direct {v0, p0}, Lcom/wifihacker/RequestNetwork;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->ok:Lcom/wifihacker/RequestNetwork;

    .line 83
    iget-object v0, p0, Lcom/wifihacker/PassActivity;->button2:Landroid/widget/Button;

    new-instance v1, Lcom/wifihacker/PassActivity$1;

    invoke-direct {v1, p0}, Lcom/wifihacker/PassActivity$1;-><init>(Lcom/wifihacker/PassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v0, Lcom/wifihacker/PassActivity$2;

    invoke-direct {v0, p0}, Lcom/wifihacker/PassActivity$2;-><init>(Lcom/wifihacker/PassActivity;)V

    iput-object v0, p0, Lcom/wifihacker/PassActivity;->_ok_request_listener:Lcom/wifihacker/RequestNetwork$RequestListener;

    .line 112
    return-void
.end method

.method private initializeLogic()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wifihacker/PassActivity;->textview4:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
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
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 148
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 152
    return-object v1

    .line 149
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/wifihacker/PassActivity;->getResources()Landroid/content/res/Resources;

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
    .line 167
    invoke-virtual {p0}, Lcom/wifihacker/PassActivity;->getResources()Landroid/content/res/Resources;

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
    .line 162
    invoke-virtual {p0}, Lcom/wifihacker/PassActivity;->getResources()Landroid/content/res/Resources;

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
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 128
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 135
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 141
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
    .line 61
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/wifihacker/PassActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0, p1}, Lcom/wifihacker/PassActivity;->initialize(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/wifihacker/PassActivity;->initializeLogic()V

    .line 65
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/wifihacker/PassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method
