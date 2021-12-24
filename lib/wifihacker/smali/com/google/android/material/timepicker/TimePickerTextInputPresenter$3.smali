.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;
.super Ljava/lang/Object;
.source "TimePickerTextInputPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    sget v0, Lcom/google/android/material/R$id;->selection_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->onSelectionChanged(I)V

    .line 121
    return-void
.end method
