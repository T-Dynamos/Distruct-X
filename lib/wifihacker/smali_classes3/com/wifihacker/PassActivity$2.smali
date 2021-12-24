.class Lcom/wifihacker/PassActivity$2;
.super Ljava/lang/Object;
.source "PassActivity.java"

# interfaces
.implements Lcom/wifihacker/RequestNetwork$RequestListener;


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
    iput-object p1, p0, Lcom/wifihacker/PassActivity$2;->this$0:Lcom/wifihacker/PassActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method
