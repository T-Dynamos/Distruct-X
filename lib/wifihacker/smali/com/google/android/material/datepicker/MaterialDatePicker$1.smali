.class Lcom/google/android/material/datepicker/MaterialDatePicker$1;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .prologue
    .line 244
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker$1;, "Lcom/google/android/material/datepicker/MaterialDatePicker$1;"
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker$1;, "Lcom/google/android/material/datepicker/MaterialDatePicker$1;"
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$000(Lcom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;

    .line 249
    .local v0, "listener":Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;, "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<-TS;>;"
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {v2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getSelection()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;->onPositiveButtonClick(Ljava/lang/Object;)V

    goto :goto_0

    .line 251
    .end local v0    # "listener":Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;, "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<-TS;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->dismiss()V

    .line 252
    return-void
.end method