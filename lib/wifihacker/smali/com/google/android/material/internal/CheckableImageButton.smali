.class public Lcom/google/android/material/internal/CheckableImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/CheckableImageButton$SavedState;
    }
.end annotation


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private checkable:Z

.field private checked:Z

.field private pressable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/internal/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    sget v0, Landroidx/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checkable:Z

    .line 45
    iput-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->pressable:Z

    .line 58
    new-instance v0, Lcom/google/android/material/internal/CheckableImageButton$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/CheckableImageButton$1;-><init>(Lcom/google/android/material/internal/CheckableImageButton;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 75
    return-void
.end method


# virtual methods
.method public isCheckable()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checkable:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    return v0
.end method

.method public isPressable()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->pressable:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/google/android/material/internal/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    array-length v0, v0

    add-int/2addr v0, p1

    .line 107
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v1, Lcom/google/android/material/internal/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    .line 106
    invoke-static {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->mergeDrawableStates([I[I)[I

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 125
    instance-of v1, p1, Lcom/google/android/material/internal/CheckableImageButton$SavedState;

    if-nez v1, :cond_0

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 132
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 129
    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;

    .line 130
    .local v0, "savedState":Lcom/google/android/material/internal/CheckableImageButton$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 131
    iget-boolean v1, v0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 117
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 118
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 119
    .local v0, "savedState":Lcom/google/android/material/internal/CheckableImageButton$SavedState;
    iget-boolean v2, p0, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    iput-boolean v2, v0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;->checked:Z

    .line 120
    return-object v0
.end method

.method public setCheckable(Z)V
    .locals 1
    .param p1, "checkable"    # Z

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checkable:Z

    if-eq v0, p1, :cond_0

    .line 137
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->checkable:Z

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->sendAccessibilityEvent(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checkable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    if-eq v0, p1, :cond_0

    .line 80
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableImageButton;->refreshDrawableState()V

    .line 82
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->sendAccessibilityEvent(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public setPressable(Z)V
    .locals 0
    .param p1, "pressable"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->pressable:Z

    .line 150
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->pressable:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setPressed(Z)V

    .line 101
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
