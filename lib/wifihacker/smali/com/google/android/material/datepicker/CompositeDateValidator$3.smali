.class final Lcom/google/android/material/datepicker/CompositeDateValidator$3;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CompositeDateValidator;
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
        "Lcom/google/android/material/datepicker/CompositeDateValidator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CompositeDateValidator;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    const-class v3, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 115
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 116
    .local v2, "validators":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .local v0, "id":I
    const/4 v1, 0x0

    .line 118
    .local v1, "operator":Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 119
    invoke-static {}, Lcom/google/android/material/datepicker/CompositeDateValidator;->access$000()Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v1

    .line 126
    :goto_0
    new-instance v4, Lcom/google/android/material/datepicker/CompositeDateValidator;

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v5}, Lcom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;Lcom/google/android/material/datepicker/CompositeDateValidator$1;)V

    return-object v4

    .line 120
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 121
    invoke-static {}, Lcom/google/android/material/datepicker/CompositeDateValidator;->access$100()Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/google/android/material/datepicker/CompositeDateValidator;->access$000()Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v1

    goto :goto_0
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
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CompositeDateValidator$3;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CompositeDateValidator;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/CompositeDateValidator;
    .locals 1
    .param p1, "size"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    new-array v0, p1, [Lcom/google/android/material/datepicker/CompositeDateValidator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CompositeDateValidator$3;->newArray(I)[Lcom/google/android/material/datepicker/CompositeDateValidator;

    move-result-object v0

    return-object v0
.end method
