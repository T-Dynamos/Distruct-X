.class public Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;
    }
.end annotation


# instance fields
.field private waitingForDismissAllowingStateLoss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    return-void
.end method

.method private dismissAfterAnimation()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismissAllowingStateLoss()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method private dismissWithAnimation(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 3
    .param p1    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "allowingStateLoss"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "behavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    const/4 v2, 0x5

    .line 78
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    .line 80
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->removeDefaultCallback()V

    .line 86
    :cond_1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 87
    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_0
.end method

.method private tryDismissWithAnimation(Z)Z
    .locals 4
    .param p1, "allowingStateLoss"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 64
    .local v0, "baseDialog":Landroid/app/Dialog;
    instance-of v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 65
    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 66
    .local v2, "dialog":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 67
    .local v1, "behavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getDismissWithAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissWithAnimation(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    .line 69
    const/4 v3, 0x1

    .line 73
    .end local v1    # "behavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    .end local v2    # "dialog":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    .line 49
    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismissAllowingStateLoss()V

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
