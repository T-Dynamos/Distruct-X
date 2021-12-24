.class Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "MaterialButtonToggleGroup.java"

# interfaces
.implements Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method private constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .param p2, "x1"    # Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 4
    .param p1, "button"    # Lcom/google/android/material/button/MaterialButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isChecked"    # Z

    .prologue
    .line 799
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-static {v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->access$300(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-static {v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->access$400(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v1

    :goto_1
    invoke-static {v2, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->access$502(Lcom/google/android/material/button/MaterialButtonToggleGroup;I)I

    .line 807
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->access$600(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)Z

    move-result v0

    .line 808
    .local v0, "buttonCheckedStateChanged":Z
    if-eqz v0, :cond_2

    .line 811
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->access$700(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    .line 813
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->invalidate()V

    goto :goto_0

    .line 804
    .end local v0    # "buttonCheckedStateChanged":Z
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method
