.class Lcom/google/android/material/timepicker/ChipTextInputComboView;
.super Landroid/widget/FrameLayout;
.source "ChipTextInputComboView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;
    }
.end annotation


# instance fields
.field private final chip:Lcom/google/android/material/chip/Chip;

.field private final editText:Landroid/widget/EditText;

.field private label:Landroid/widget/TextView;

.field private final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/google/android/material/R$layout;->material_time_chip:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/chip/Chip;

    iput-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 70
    sget v1, Lcom/google/android/material/R$layout;->material_time_input:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 71
    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    .line 72
    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 73
    new-instance v1, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView$1;)V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Landroid/text/TextWatcher;

    .line 74
    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->updateHintLocales()V

    .line 76
    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->addView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->addView(Landroid/view/View;)V

    .line 78
    sget v1, Lcom/google/android/material/R$id;->material_label:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->label:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/ChipTextInputComboView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->formatText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/timepicker/ChipTextInputComboView;)Lcom/google/android/material/chip/Chip;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    return-object v0
.end method

.method private formatText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateHintLocales()V
    .locals 4

    .prologue
    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 85
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 86
    .local v1, "locales":Landroid/os/LocaleList;
    iget-object v2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    .line 88
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v1    # "locales":Landroid/os/LocaleList;
    :cond_0
    return-void
.end method


# virtual methods
.method public addInputFilter(Landroid/text/InputFilter;)V
    .locals 3
    .param p1, "filter"    # Landroid/text/InputFilter;

    .prologue
    .line 145
    iget-object v2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 146
    .local v1, "current":[Landroid/text/InputFilter;
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    .line 147
    .local v0, "arr":[Landroid/text/InputFilter;
    array-length v2, v1

    aput-object p1, v0, v2

    .line 148
    iget-object v2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 149
    return-void
.end method

.method public getTextInput()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->updateHintLocales()V

    .line 178
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 98
    iget-object v2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 102
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 106
    :cond_1
    return-void

    .line 98
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "clickActionDelegate"    # Landroidx/core/view/AccessibilityDelegateCompat;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 157
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 142
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helperText"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->formatText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->toggle()V

    .line 111
    return-void
.end method
