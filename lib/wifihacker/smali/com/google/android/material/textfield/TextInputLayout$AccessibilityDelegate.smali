.class public Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4353
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4354
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4355
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 17
    .param p1, "host"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4360
    invoke-super/range {p0 .. p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 4361
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 4362
    .local v3, "editText":Landroid/widget/EditText;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 4363
    .local v8, "inputText":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v7

    .line 4364
    .local v7, "hintText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    .line 4365
    .local v4, "errorText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 4366
    .local v11, "placeholderText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    move-result v10

    .line 4367
    .local v10, "maxCharLimit":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4368
    .local v2, "counterOverflowDesc":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v13, 0x1

    .line 4369
    .local v13, "showingText":Z
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v5, 0x1

    .line 4370
    .local v5, "hasHint":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v9, 0x1

    .line 4371
    .local v9, "isHintCollapsed":Z
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v12, 0x1

    .line 4372
    .local v12, "showingError":Z
    :goto_4
    if-nez v12, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    :cond_0
    const/4 v1, 0x1

    .line 4374
    .local v1, "contentInvalid":Z
    :goto_5
    if-eqz v5, :cond_b

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4376
    .local v6, "hint":Ljava/lang/String;
    :goto_6
    if-eqz v13, :cond_c

    .line 4377
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4387
    :cond_1
    :goto_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 4388
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x1a

    move/from16 v0, v16

    if-lt v15, v0, :cond_e

    .line 4389
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 4396
    :goto_8
    if-nez v13, :cond_10

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setShowingHintText(Z)V

    .line 4400
    :cond_2
    if-eqz v8, :cond_11

    .line 4401
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ne v15, v10, :cond_11

    .line 4400
    .end local v10    # "maxCharLimit":I
    :goto_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMaxTextLength(I)V

    .line 4403
    if-eqz v1, :cond_3

    .line 4404
    if-eqz v12, :cond_12

    .end local v4    # "errorText":Ljava/lang/CharSequence;
    :goto_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 4407
    :cond_3
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x11

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    if-eqz v3, :cond_4

    .line 4408
    sget v15, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setLabelFor(I)V

    .line 4410
    :cond_4
    return-void

    .line 4362
    .end local v1    # "contentInvalid":Z
    .end local v2    # "counterOverflowDesc":Ljava/lang/CharSequence;
    .end local v5    # "hasHint":Z
    .end local v6    # "hint":Ljava/lang/String;
    .end local v7    # "hintText":Ljava/lang/CharSequence;
    .end local v8    # "inputText":Ljava/lang/CharSequence;
    .end local v9    # "isHintCollapsed":Z
    .end local v11    # "placeholderText":Ljava/lang/CharSequence;
    .end local v12    # "showingError":Z
    .end local v13    # "showingText":Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4368
    .restart local v2    # "counterOverflowDesc":Ljava/lang/CharSequence;
    .restart local v4    # "errorText":Ljava/lang/CharSequence;
    .restart local v7    # "hintText":Ljava/lang/CharSequence;
    .restart local v8    # "inputText":Ljava/lang/CharSequence;
    .restart local v10    # "maxCharLimit":I
    .restart local v11    # "placeholderText":Ljava/lang/CharSequence;
    :cond_6
    const/4 v13, 0x0

    goto :goto_1

    .line 4369
    .restart local v13    # "showingText":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 4370
    .restart local v5    # "hasHint":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 4371
    .restart local v9    # "isHintCollapsed":Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 4372
    .restart local v12    # "showingError":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 4374
    .restart local v1    # "contentInvalid":Z
    :cond_b
    const-string v6, ""

    goto :goto_6

    .line 4378
    .restart local v6    # "hint":Ljava/lang/String;
    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 4379
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4380
    if-eqz v9, :cond_1

    if-eqz v11, :cond_1

    .line 4381
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 4383
    :cond_d
    if-eqz v11, :cond_1

    .line 4384
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 4393
    :cond_e
    if-eqz v13, :cond_f

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4394
    .local v14, "text":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .end local v14    # "text":Ljava/lang/String;
    :cond_f
    move-object v14, v6

    .line 4393
    goto :goto_c

    .line 4396
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 4401
    :cond_11
    const/4 v10, -0x1

    goto/16 :goto_a

    .end local v10    # "maxCharLimit":I
    :cond_12
    move-object v4, v2

    .line 4404
    goto/16 :goto_b
.end method
