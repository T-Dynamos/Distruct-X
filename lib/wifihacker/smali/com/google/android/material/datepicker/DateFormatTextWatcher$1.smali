.class Lcom/google/android/material/datepicker/DateFormatTextWatcher$1;
.super Ljava/lang/Object;
.source "DateFormatTextWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/DateFormatTextWatcher;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

.field final synthetic val$formatHint:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/DateFormatTextWatcher;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$1;->this$0:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    iput-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$1;->val$formatHint:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 58
    iget-object v6, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$1;->this$0:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    invoke-static {v6}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->access$000(Lcom/google/android/material/datepicker/DateFormatTextWatcher;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v4

    .line 59
    .local v4, "textLayout":Lcom/google/android/material/textfield/TextInputLayout;
    iget-object v6, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$1;->this$0:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    invoke-static {v6}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->access$100(Lcom/google/android/material/datepicker/DateFormatTextWatcher;)Ljava/text/DateFormat;

    move-result-object v1

    .line 60
    .local v1, "df":Ljava/text/DateFormat;
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    sget v6, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "invalidFormat":Ljava/lang/String;
    sget v6, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format_use:I

    .line 64
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$1;->val$formatHint:Ljava/lang/String;

    aput-object v8, v7, v12

    .line 63
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "useLine":Ljava/lang/String;
    sget v6, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format_example:I

    .line 67
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    new-instance v8, Ljava/util/Date;

    .line 68
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 66
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "exampleLine":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v6, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$1;->this$0:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    invoke-virtual {v6}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onInvalidDate()V

    .line 71
    return-void
.end method
