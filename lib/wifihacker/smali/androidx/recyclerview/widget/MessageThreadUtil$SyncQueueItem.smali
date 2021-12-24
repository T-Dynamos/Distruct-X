.class Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncQueueItem"
.end annotation


# static fields
.field private static sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

.field private static final sPoolLock:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field public arg3:I

.field public arg4:I

.field public arg5:I

.field public data:Ljava/lang/Object;

.field next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

.field public what:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtainMessage(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .locals 7
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v3, 0x0

    .line 225
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    return-object v0
.end method

.method static obtainMessage(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .locals 3
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I
    .param p5, "arg5"    # I
    .param p6, "data"    # Ljava/lang/Object;

    .prologue
    .line 204
    sget-object v2, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_0
    sget-object v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_0

    .line 207
    new-instance v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    invoke-direct {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;-><init>()V

    .line 213
    .local v0, "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    .line 214
    iput p1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    .line 215
    iput p2, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    .line 216
    iput p3, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    .line 217
    iput p4, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    .line 218
    iput p5, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    .line 219
    iput-object p6, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 220
    monitor-exit v2

    return-object v0

    .line 209
    .end local v0    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :cond_0
    sget-object v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 210
    .restart local v0    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    sget-object v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    sput-object v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 211
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    goto :goto_0

    .line 221
    .end local v0    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static obtainMessage(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .locals 7
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 229
    move v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    iput v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    iput v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    iput v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    iput v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iput v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    .line 193
    iput-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 194
    sget-object v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 198
    :cond_0
    sput-object p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
