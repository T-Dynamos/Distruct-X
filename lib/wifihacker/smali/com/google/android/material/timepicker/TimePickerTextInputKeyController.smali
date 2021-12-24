.class Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;
.super Ljava/lang/Object;
.source "TimePickerTextInputKeyController.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private keyListenerRunning:Z

.field private final minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final time:Lcom/google/android/material/timepicker/TimeModel;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 1
    .param p1, "hourLayoutComboView"    # Lcom/google/android/material/timepicker/ChipTextInputComboView;
    .param p2, "minuteLayoutComboView"    # Lcom/google/android/material/timepicker/ChipTextInputComboView;
    .param p3, "time"    # Lcom/google/android/material/timepicker/TimeModel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    .line 53
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 54
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 55
    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 56
    return-void
.end method

.method private moveSelection(I)V
    .locals 4
    .param p1, "selection"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 75
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 77
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v1, v2

    .line 75
    goto :goto_1
.end method

.method private onHourKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 120
    .local v1, "text":Landroid/text/Editable;
    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v2

    .line 125
    :cond_1
    const/4 v4, 0x7

    if-lt p1, v4, :cond_2

    const/16 v4, 0x10

    if-gt p1, v4, :cond_2

    .line 128
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 129
    invoke-virtual {p3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 130
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v0, v3

    .line 131
    .local v0, "switchFocus":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 132
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    move v2, v3

    .line 133
    goto :goto_0

    .end local v0    # "switchFocus":Z
    :cond_2
    move v0, v2

    .line 130
    goto :goto_1
.end method

.method private onMinuteKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    const/16 v3, 0x43

    if-ne p1, v3, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 110
    .local v0, "switchFocus":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 111
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    .line 115
    :goto_1
    return v1

    .end local v0    # "switchFocus":Z
    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    .restart local v0    # "switchFocus":Z
    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method


# virtual methods
.method public bind()V
    .locals 5

    .prologue
    .line 60
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 61
    .local v1, "hourLayout":Lcom/google/android/material/textfield/TextInputLayout;
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v3

    .line 62
    .local v3, "minuteLayout":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 63
    .local v0, "hourEditText":Landroid/widget/EditText;
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 65
    .local v2, "minuteEditText":Landroid/widget/EditText;
    const v4, 0x10000005

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 66
    const v4, 0x10000006

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 68
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 69
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 70
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 71
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 81
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 82
    .local v0, "actionNext":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 83
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    .line 86
    :cond_0
    return v0

    .line 81
    .end local v0    # "actionNext":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-boolean v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    if-eqz v3, :cond_0

    move v1, v2

    .line 102
    :goto_0
    return v1

    .line 95
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    move-object v0, p1

    .line 96
    check-cast v0, Landroid/widget/EditText;

    .line 97
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 99
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->onMinuteKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z

    move-result v1

    .line 101
    .local v1, "ret":Z
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    goto :goto_0

    .line 100
    .end local v1    # "ret":Z
    :cond_1
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->onHourKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z

    move-result v1

    goto :goto_1
.end method
