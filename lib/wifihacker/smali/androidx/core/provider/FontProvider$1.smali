.class Landroidx/core/provider/FontProvider$1;
.super Ljava/lang/Object;
.source "FontProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 197
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroidx/core/provider/FontProvider$1;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .locals 3
    .param p1, "l"    # [B
    .param p2, "r"    # [B

    .prologue
    .line 200
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 201
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    .line 208
    :goto_0
    return v1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 204
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1

    .line 205
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    sub-int/2addr v1, v2

    goto :goto_0

    .line 203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
