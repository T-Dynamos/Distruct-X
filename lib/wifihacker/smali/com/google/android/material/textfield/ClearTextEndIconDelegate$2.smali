.class Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/ClearTextEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 67
    .local v0, "hasText":Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v3, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->access$100(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Z)V

    .line 68
    return-void

    .end local v0    # "hasText":Z
    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method
