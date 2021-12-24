.class Lcom/whatsapp/bomber/Main2Activity$1;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whatsapp/bomber/Main2Activity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/whatsapp/bomber/Main2Activity;


# direct methods
.method constructor <init>(Lcom/whatsapp/bomber/Main2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/whatsapp/bomber/Main2Activity$1;->this$0:Lcom/whatsapp/bomber/Main2Activity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/whatsapp/bomber/Main2Activity$1;)Lcom/whatsapp/bomber/Main2Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/whatsapp/bomber/Main2Activity$1;->this$0:Lcom/whatsapp/bomber/Main2Activity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 76
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/whatsapp/bomber/Main2Activity$1;->this$0:Lcom/whatsapp/bomber/Main2Activity;

    invoke-static {v1}, Lcom/whatsapp/bomber/Main2Activity;->access$0(Lcom/whatsapp/bomber/Main2Activity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v1, v2

    if-lt v0, v1, :cond_0

    .line 92
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/whatsapp/bomber/Main2Activity$1;->this$0:Lcom/whatsapp/bomber/Main2Activity;

    new-instance v2, Lcom/whatsapp/bomber/Main2Activity$1$1;

    invoke-direct {v2, p0}, Lcom/whatsapp/bomber/Main2Activity$1$1;-><init>(Lcom/whatsapp/bomber/Main2Activity$1;)V

    invoke-static {v1, v2}, Lcom/whatsapp/bomber/Main2Activity;->access$3(Lcom/whatsapp/bomber/Main2Activity;Ljava/util/TimerTask;)V

    .line 90
    iget-object v1, p0, Lcom/whatsapp/bomber/Main2Activity$1;->this$0:Lcom/whatsapp/bomber/Main2Activity;

    invoke-static {v1}, Lcom/whatsapp/bomber/Main2Activity;->access$4(Lcom/whatsapp/bomber/Main2Activity;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/whatsapp/bomber/Main2Activity$1;->this$0:Lcom/whatsapp/bomber/Main2Activity;

    invoke-static {v2}, Lcom/whatsapp/bomber/Main2Activity;->access$5(Lcom/whatsapp/bomber/Main2Activity;)Ljava/util/TimerTask;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
