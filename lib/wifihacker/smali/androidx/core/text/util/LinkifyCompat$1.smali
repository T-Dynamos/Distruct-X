.class Landroidx/core/text/util/LinkifyCompat$1;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LinkifyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I
    .locals 4
    .param p1, "a"    # Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .param p2, "b"    # Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 62
    iget v2, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v3, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-ge v2, v3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget v2, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v3, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    iget v2, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v3, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 71
    goto :goto_0

    .line 74
    :cond_3
    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v2, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-gt v1, v2, :cond_0

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 59
    check-cast p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    check-cast p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-virtual {p0, p1, p2}, Landroidx/core/text/util/LinkifyCompat$1;->compare(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I

    move-result v0

    return v0
.end method
