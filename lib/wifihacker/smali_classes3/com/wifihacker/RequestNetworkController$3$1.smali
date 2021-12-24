.class Lcom/wifihacker/RequestNetworkController$3$1;
.super Ljava/lang/Object;
.source "RequestNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifihacker/RequestNetworkController$3;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wifihacker/RequestNetworkController$3;

.field private final synthetic val$e:Ljava/io/IOException;

.field private final synthetic val$requestListener:Lcom/wifihacker/RequestNetwork$RequestListener;

.field private final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wifihacker/RequestNetworkController$3;Lcom/wifihacker/RequestNetwork$RequestListener;Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wifihacker/RequestNetworkController$3$1;->this$1:Lcom/wifihacker/RequestNetworkController$3;

    iput-object p2, p0, Lcom/wifihacker/RequestNetworkController$3$1;->val$requestListener:Lcom/wifihacker/RequestNetwork$RequestListener;

    iput-object p3, p0, Lcom/wifihacker/RequestNetworkController$3$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/wifihacker/RequestNetworkController$3$1;->val$e:Ljava/io/IOException;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/wifihacker/RequestNetworkController$3$1;->val$requestListener:Lcom/wifihacker/RequestNetwork$RequestListener;

    iget-object v1, p0, Lcom/wifihacker/RequestNetworkController$3$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/wifihacker/RequestNetworkController$3$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/wifihacker/RequestNetwork$RequestListener;->onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
