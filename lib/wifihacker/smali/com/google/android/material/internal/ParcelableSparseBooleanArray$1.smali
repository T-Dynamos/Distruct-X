.class final Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;
.super Ljava/lang/Object;
.source "ParcelableSparseBooleanArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/material/internal/ParcelableSparseBooleanArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "size":I
    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    invoke-direct {v2, v3}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;-><init>(I)V

    .line 78
    .local v2, "read":Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    new-array v1, v3, [I

    .line 79
    .local v1, "keys":[I
    new-array v4, v3, [Z

    .line 81
    .local v4, "values":[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 82
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 85
    aget v5, v1, v0

    aget-boolean v6, v4, v0

    invoke-virtual {v2, v5, v6}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->put(IZ)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    .locals 1
    .param p1, "size"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 94
    new-array v0, p1, [Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;->newArray(I)[Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    move-result-object v0

    return-object v0
.end method
